.class public abstract Landroid/service/quickaccesswallet/QuickAccessWalletService;
.super Landroid/app/Service;
.source "QuickAccessWalletService.java"


# static fields
.field public static final whitelist ACTION_VIEW_WALLET:Ljava/lang/String; = "android.service.quickaccesswallet.action.VIEW_WALLET"

.field public static final whitelist ACTION_VIEW_WALLET_SETTINGS:Ljava/lang/String; = "android.service.quickaccesswallet.action.VIEW_WALLET_SETTINGS"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.quickaccesswallet.QuickAccessWalletService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.quickaccesswallet"

.field private static final blacklist TAG:Ljava/lang/String; = "QAWalletService"

.field public static final blacklist TILE_SERVICE_META_DATA:Ljava/lang/String; = "android.quickaccesswallet.tile"


# instance fields
.field private blacklist mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

.field private blacklist mEventListenerId:Ljava/lang/String;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/quickaccesswallet/IQuickAccessWalletService;


# direct methods
.method public static synthetic blacklist $r8$lambda$ddd44RKgvMO_aIImjr6nwJowXlw(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->lambda$sendWalletServiceEvent$0(Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monGestureTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onGestureTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->registerDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->unregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 165
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    .line 231
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    invoke-direct {v0, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mInterface:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    return-void
.end method

.method private synthetic blacklist lambda$sendWalletServiceEvent$0(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 2
    .param p1, "serviceEvent"    # Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 370
    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->sendWalletServiceEventInternal(Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    return-void
.end method

.method private blacklist onGestureTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 5
    .param p1, "callbacks"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 300
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quickaccesswallet/Flags;->launchWalletOptionOnPowerDoubleTap()Z

    move-result v0

    if-nez v0, :cond_7

    .line 301
    return-void

    .line 305
    :cond_7
    nop

    .line 306
    :try_start_8
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->getGestureTargetActivityPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 305
    invoke-interface {p1, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onGestureTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 309
    goto :goto_18

    .line 307
    :catch_10
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QAWalletService"

    const-string v2, "Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method private blacklist onTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 5
    .param p1, "callbacks"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 292
    :try_start_0
    invoke-virtual {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->getTargetActivityPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 295
    goto :goto_10

    .line 293
    :catch_8
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QAWalletService"

    const-string v2, "Error returning wallet cards"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method private blacklist onWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 5
    .param p1, "request"    # Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 285
    new-instance v0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p2, v1, p0}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;-><init>(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/GetWalletCardsCallback;)V

    .line 287
    return-void
.end method

.method private blacklist registerDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4
    .param p1, "request"    # Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 419
    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->getListenerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    .line 420
    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 421
    return-void
.end method

.method private blacklist sendWalletServiceEventInternal(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 5
    .param p1, "serviceEvent"    # Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 403
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    const-string v1, "QAWalletService"

    if-nez v0, :cond_c

    .line 404
    const-string v0, "No dismiss listener registered"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void

    .line 408
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    invoke-interface {v0, p1}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;->onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 413
    goto :goto_1e

    .line 409
    :catch_12
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "onWalletServiceEvent error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    .line 412
    iput-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 414
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method private blacklist unregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    .line 425
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;->getListenerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListenerId:Ljava/lang/String;

    .line 427
    iput-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mEventListener:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    goto :goto_1d

    .line 429
    :cond_16
    const-string v0, "QAWalletService"

    const-string v1, "dismiss listener missing or replaced"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_1d
    return-void
.end method


# virtual methods
.method public whitelist getGestureTargetActivityPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTargetActivityPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 315
    nop

    .line 322
    const-string v0, "android.service.quickaccesswallet.QuickAccessWalletService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 323
    const-string v0, "QAWalletService"

    const-string v1, "Wrong action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x0

    return-object v0

    .line 326
    :cond_16
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mInterface:Landroid/service/quickaccesswallet/IQuickAccessWalletService;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
.end method

.method public abstract whitelist onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/GetWalletCardsCallback;)V
.end method

.method public abstract whitelist onWalletDismissed()V
.end method

.method public final whitelist sendWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 4
    .param p1, "serviceEvent"    # Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 370
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method
