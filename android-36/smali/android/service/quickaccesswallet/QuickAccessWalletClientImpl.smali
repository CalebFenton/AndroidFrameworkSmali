.class public Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;
.super Ljava/lang/Object;
.source "QuickAccessWalletClientImpl.java"

# interfaces
.implements Landroid/service/quickaccesswallet/QuickAccessWalletClient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;,
        Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
    }
.end annotation


# static fields
.field private static final blacklist MSG_TIMEOUT_SERVICE:I = 0x5

.field private static final blacklist SERVICE_CONNECTION_TIMEOUT_MS:J = 0xea60L

.field public static final blacklist SETTING_KEY:Ljava/lang/String; = "lockscreen_show_wallet"

.field private static final blacklist TAG:Ljava/lang/String; = "QAWalletSClient"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsConnected:Z

.field private final blacklist mLifecycleExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

.field private blacklist mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;


# direct methods
.method public static synthetic blacklist $r8$lambda$5iygPChF4-VnooTcVyCJkIlJP1Y(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/content/Intent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$connectInternal$2(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BXTJ4AMUxvxt9ElpYOCtq--mu7k(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/content/Intent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$connectInternal$3(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GTsgsbt_PSYDEx1d6ASZgb9e0-c(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$resetServiceConnectionTimeout$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IRK3gqbU3M_kcXwi_oA1FaYcb2E(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$disconnectInternal$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SG_f0ZEJ1p4ShZ-tOLFIu2XKvc0(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$onServiceConnected$8(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aJNhuMgEoq_653r7IXDn9EZongg(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$executeApiCall$7(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$afcplq_RfdKMC-yE1VF8Gij-nuw(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->connectInternal()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gmNxLdZvkf95LeZCr-f9hoOSTrM(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$disconnect$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nKta1bDOK-q-4W9R3wYTnnMPsOo(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->lambda$disconnectInternal$6()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventListeners(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgExecutor"    # Ljava/util/concurrent/Executor;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    .line 87
    if-nez p2, :cond_1f

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_20

    :cond_1f
    move-object v0, p2

    :goto_20
    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    .line 88
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    .line 90
    return-void
.end method

.method private blacklist checkSecureSetting(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 543
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v1, v2

    :cond_f
    return v1
.end method

.method private blacklist checkUserSetupComplete()Z
    .registers 5

    .line 547
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    .line 548
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 547
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move v2, v1

    :cond_13
    return v2
.end method

.method private blacklist connect()V
    .registers 3

    .line 408
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda2;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    return-void
.end method

.method private blacklist connectInternal()V
    .registers 6

    .line 412
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->ensureServiceInfo()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    .line 413
    .local v0, "serviceInfo":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    if-nez v0, :cond_e

    .line 414
    const-string v1, "QAWalletSClient"

    const-string v2, "Wallet service unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void

    .line 417
    :cond_e
    iget-boolean v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    if-eqz v1, :cond_13

    .line 418
    return-void

    .line 420
    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    .line 421
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.quickaccesswallet.QuickAccessWalletService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 423
    const/16 v2, 0x21

    .line 424
    .local v2, "flags":I
    iget-object v3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v3, :cond_35

    .line 425
    iget-object v3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v1, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda7;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/content/Intent;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3f

    .line 427
    :cond_35
    iget-object v3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v1, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda8;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/content/Intent;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 430
    :goto_3f
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->resetServiceConnectionTimeout()V

    .line 431
    return-void
.end method

.method private blacklist createIntent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 10
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "action"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 324
    .local v0, "userContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 325
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 326
    invoke-static {v1, p2, p4}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->queryActivityForAction(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    :cond_19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    .line 329
    return-object v3

    .line 331
    :cond_21
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .local v2, "component":Landroid/content/ComponentName;
    invoke-static {v1, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isActivityEnabled(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 333
    return-object v3

    .line 335
    :cond_2d
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method private blacklist disconnectInternal(Z)V
    .registers 4
    .param p1, "clearEventListeners"    # Z

    .line 459
    iget-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    if-nez v0, :cond_c

    .line 460
    const-string v0, "QAWalletSClient"

    const-string v1, "already disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 463
    :cond_c
    if-eqz p1, :cond_3b

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 464
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    .line 465
    .local v1, "listener":Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;
    invoke-virtual {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->removeWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    .line 466
    .end local v1    # "listener":Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;
    goto :goto_20

    .line 467
    :cond_30
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 468
    return-void

    .line 470
    :cond_3b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    .line 471
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    .line 473
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mEventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 474
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 475
    return-void
.end method

.method private blacklist ensureServiceInfo()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    if-nez v0, :cond_c

    .line 94
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->tryCreate(Landroid/content/Context;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    .line 97
    :cond_c
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    return-object v0
.end method

.method private blacklist executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .registers 4
    .param p1, "apiCaller"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    .line 478
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda4;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    return-void
.end method

.method private blacklist executeInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .registers 3
    .param p1, "apiCaller"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    .line 482
    iget-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    if-eqz v0, :cond_e

    .line 483
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    invoke-direct {p0, p1, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->performApiCallInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    goto :goto_16

    .line 485
    :cond_e
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->connect()V

    .line 488
    :goto_16
    return-void
.end method

.method private static blacklist isActivityEnabled(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 352
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 353
    .local v0, "setting":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 354
    return v1

    .line 356
    :cond_8
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 357
    return v1

    .line 360
    :cond_c
    :try_start_c
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_14} :catch_15

    return v1

    .line 361
    :catch_15
    move-exception v2

    .line 362
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private synthetic blacklist lambda$connectInternal$2(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 425
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private synthetic blacklist lambda$connectInternal$3(Landroid/content/Intent;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 427
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mServiceInfo:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    .line 428
    invoke-virtual {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 427
    invoke-virtual {v0, p1, p0, p2, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private synthetic blacklist lambda$disconnect$1()V
    .registers 2

    .line 244
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnectInternal(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$disconnectInternal$5()V
    .registers 2

    .line 467
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnectInternal(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$disconnectInternal$6()V
    .registers 2

    .line 471
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private synthetic blacklist lambda$executeApiCall$7(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V
    .registers 2
    .param p1, "apiCaller"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    .line 478
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    return-void
.end method

.method static synthetic blacklist lambda$getWalletCards$0(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .registers 3
    .param p0, "callback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    .line 132
    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsError;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/service/quickaccesswallet/GetWalletCardsError;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;->onWalletCardRetrievalError(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceConnected$8(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 2
    .param p1, "service"    # Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    .line 523
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->onConnectedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    return-void
.end method

.method private synthetic blacklist lambda$resetServiceConnectionTimeout$4()V
    .registers 2

    .line 453
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnectInternal(Z)V

    return-void
.end method

.method private blacklist onConnectedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 5
    .param p1, "service"    # Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    .line 434
    iget-boolean v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mIsConnected:Z

    if-nez v0, :cond_10

    .line 435
    const-string v0, "QAWalletSClient"

    const-string/jumbo v1, "onConnectInternal but connection closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    .line 437
    return-void

    .line 439
    :cond_10
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;

    .line 441
    .local v1, "apiCaller":Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mService:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    invoke-direct {p0, v1, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->performApiCallInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    .line 442
    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 443
    .end local v1    # "apiCaller":Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
    goto :goto_1d

    .line 444
    :cond_34
    return-void
.end method

.method private blacklist performApiCallInternal(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 6
    .param p1, "apiCaller"    # Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
    .param p2, "service"    # Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    .line 491
    if-nez p2, :cond_6

    .line 492
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->onApiError()V

    .line 493
    return-void

    .line 496
    :cond_6
    :try_start_6
    invoke-virtual {p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    .line 497
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->resetServiceConnectionTimeout()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    .line 502
    goto :goto_30

    .line 498
    :catch_d
    move-exception v0

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeInternal error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->-$$Nest$fgetmDesc(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QAWalletSClient"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;->onApiError()V

    .line 501
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnect()V

    .line 503
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method private static blacklist queryActivityForAction(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 343
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_20

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_20

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v2, :cond_1b

    goto :goto_20

    .line 348
    :cond_1b
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v2

    .line 346
    :cond_20
    :goto_20
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist resetServiceConnectionTimeout()V
    .registers 6

    .line 451
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda5;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 456
    return-void
.end method


# virtual methods
.method public blacklist addWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    .line 189
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->addWalletServiceEventListener(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    .line 190
    return-void
.end method

.method public blacklist addWalletServiceEventListener(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    .line 196
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 197
    return-void

    .line 199
    :cond_7
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$5;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    .line 206
    .local v0, "callback":Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;

    const-string/jumbo v2, "registerListener"

    invoke-direct {v1, p0, v2, p2, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$6;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V

    invoke-direct {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 216
    return-void
.end method

.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnect()V

    .line 240
    return-void
.end method

.method public blacklist createWalletIntent()Landroid/content/Intent;
    .registers 6

    .line 250
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->ensureServiceInfo()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    .line 251
    .local v0, "serviceInfo":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    if-nez v0, :cond_8

    .line 252
    const/4 v1, 0x0

    return-object v1

    .line 254
    :cond_8
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getUserId()I

    move-result v2

    .line 256
    .local v2, "userId":I
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getWalletActivity()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "walletActivity":Ljava/lang/String;
    const-string v4, "android.service.quickaccesswallet.action.VIEW_WALLET"

    invoke-direct {p0, v3, v1, v2, v4}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->createIntent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    return-object v4
.end method

.method public blacklist createWalletSettingsIntent()Landroid/content/Intent;
    .registers 6

    .line 310
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->ensureServiceInfo()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    .line 311
    .local v0, "serviceInfo":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    if-nez v0, :cond_8

    .line 312
    const/4 v1, 0x0

    return-object v1

    .line 314
    :cond_8
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "settingsActivity":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "android.service.quickaccesswallet.action.VIEW_WALLET_SETTINGS"

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->createIntent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public blacklist disconnect()V
    .registers 3

    .line 244
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda9;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method

.method public blacklist getGestureTargetActivityPendingIntent(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "gesturePendingIntentCallback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;

    .line 283
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$10;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;)V

    .line 298
    .local v0, "callbacks":Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$11;

    const-string v2, "getGestureTargetActivityPendingIntent"

    invoke-direct {v1, p0, v2, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$11;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V

    invoke-direct {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 305
    return-void
.end method

.method public blacklist getLogo()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 369
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->ensureServiceInfo()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    .line 370
    .local v0, "serviceInfo":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getWalletLogo(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method public blacklist getServiceLabel()Ljava/lang/CharSequence;
    .registers 3

    .line 390
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->ensureServiceInfo()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    .line 391
    .local v0, "serviceInfo":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getServiceLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method public blacklist getShortcutLongLabel()Ljava/lang/CharSequence;
    .registers 3

    .line 403
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->ensureServiceInfo()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    .line 404
    .local v0, "serviceInfo":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getShortcutLongLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method public blacklist getShortcutShortLabel()Ljava/lang/CharSequence;
    .registers 3

    .line 397
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->ensureServiceInfo()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    .line 398
    .local v0, "serviceInfo":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getShortcutShortLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method public blacklist getTileIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 376
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->ensureServiceInfo()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    .line 377
    .local v0, "serviceInfo":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getTileIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .registers 3

    .line 383
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->ensureServiceInfo()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    .line 384
    .local v0, "serviceInfo":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public blacklist getWalletCards(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .registers 4
    .param p1, "request"    # Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    .line 122
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    .line 123
    return-void
.end method

.method public blacklist getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "request"    # Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .param p3, "callback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    .line 130
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 131
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda3;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void

    .line 136
    :cond_f
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;

    invoke-direct {v0, p0, p1, p3}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    .line 148
    .local v0, "serviceCallback":Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;

    const-string/jumbo v2, "onWalletCardsRequested"

    invoke-direct {v1, p0, v2, p2, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$2;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V

    invoke-direct {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 159
    return-void
.end method

.method public blacklist getWalletPendingIntent(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "pendingIntentCallback"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;

    .line 264
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$8;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;)V

    .line 271
    .local v0, "callbacks":Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$9;

    const-string/jumbo v2, "getTargetActivityPendingIntent"

    invoke-direct {v1, p0, v2, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$9;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V

    invoke-direct {p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 277
    return-void
.end method

.method public blacklist isWalletFeatureAvailable()Z
    .registers 4

    .line 107
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 108
    .local v0, "currentUser":I
    if-nez v0, :cond_1b

    .line 109
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->checkUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isUserInLockdown(I)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 108
    :goto_1c
    return v1
.end method

.method public blacklist isWalletFeatureAvailableWhenDeviceLocked()Z
    .registers 2

    .line 115
    const-string/jumbo v0, "lockscreen_show_wallet"

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->checkSecureSetting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isWalletServiceAvailable()Z
    .registers 2

    .line 102
    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->ensureServiceInfo()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist notifyWalletDismissed()V
    .registers 3

    .line 176
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 177
    return-void

    .line 179
    :cond_7
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$4;

    const-string/jumbo v1, "onWalletDismissed"

    invoke-direct {v0, p0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$4;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 185
    return-void
.end method

.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 534
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnect()V

    .line 535
    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 539
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->disconnect()V

    .line 540
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 522
    invoke-static {p2}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    move-result-object v0

    .line 523
    .local v0, "service":Landroid/service/quickaccesswallet/IQuickAccessWalletService;
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$$ExternalSyntheticLambda6;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 529
    return-void
.end method

.method public blacklist removeWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;

    .line 220
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 221
    return-void

    .line 223
    :cond_7
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;

    const-string/jumbo v1, "unregisterListener"

    invoke-direct {v0, p0, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$7;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 235
    return-void
.end method

.method public blacklist selectWalletCard(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/service/quickaccesswallet/SelectWalletCardRequest;

    .line 163
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->isWalletServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 164
    return-void

    .line 166
    :cond_7
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$3;

    const-string/jumbo v1, "onWalletCardSelected"

    invoke-direct {v0, p0, v1, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$3;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    invoke-direct {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->executeApiCall(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;)V

    .line 172
    return-void
.end method
