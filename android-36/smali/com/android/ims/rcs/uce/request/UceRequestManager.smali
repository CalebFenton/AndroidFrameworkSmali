.class public Lcom/android/ims/rcs/uce/request/UceRequestManager;
.super Ljava/lang/Object;
.source "UceRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;,
        Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;,
        Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;
    }
.end annotation


# static fields
.field private static final blacklist FEATURE_SHORTCUT_QUEUE_FOR_CACHED_CAPS:Z = true

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static blacklist sUceUtilsProxy:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHandler:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

.field private volatile blacklist mIsDestroyed:Z

.field private blacklist mOptionsCtrl:Lcom/android/ims/rcs/uce/options/OptionsController;

.field private blacklist mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

.field private final blacklist mRequestRepository:Lcom/android/ims/rcs/uce/request/UceRequestRepository;

.field private blacklist mRetryDuration:J

.field private blacklist mRetryEnabled:Z

.field private final blacklist mSubId:I

.field private blacklist mSubscribeCtrl:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

.field private final blacklist mThrottlingList:Lcom/android/ims/rcs/uce/request/ContactThrottlingList;


# direct methods
.method public static synthetic blacklist $r8$lambda$5U5KOnNmeoTRuW5sqmfa5QdOX50(Lcom/android/ims/rcs/uce/request/UceRequestManager;ILjava/util/List;Landroid/net/Uri;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->lambda$createOptionsRequestCoordinator$3(ILjava/util/List;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$W7xQkh6c7X3e_9tKvcE92k0ZXPI(Lcom/android/ims/rcs/uce/request/UceRequestManager;IZLjava/util/List;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->lambda$createSubscribeRequestCoordinator$2(IZLjava/util/List;Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControllerCallback(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mHandler:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThrottlingList(Lcom/android/ims/rcs/uce/request/UceRequestManager;)Lcom/android/ims/rcs/uce/request/ContactThrottlingList;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mThrottlingList:Lcom/android/ims/rcs/uce/request/ContactThrottlingList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRequestCoordinator(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->getRequestCoordinator(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUceRequest(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->getUceRequest(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogw(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyRepositoryRequestFinished(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->notifyRepositoryRequestFinished(Ljava/lang/Long;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveRequestCoordinator(Lcom/android/ims/rcs/uce/request/UceRequestManager;Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->removeRequestCoordinator(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendSubscribeRetryRequest(Lcom/android/ims/rcs/uce/request/UceRequestManager;Lcom/android/ims/rcs/uce/request/UceRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sendSubscribeRetryRequest(Lcom/android/ims/rcs/uce/request/UceRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UceRequestManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->LOG_TAG:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$1;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$1;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sUceUtilsProxy:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/os/Looper;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;Lcom/android/ims/rcs/uce/request/UceRequestRepository;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "c"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .param p5, "requestRepository"    # Lcom/android/ims/rcs/uce/request/UceRequestRepository;
    .param p6, "featureFlags"    # Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;-><init>(Lcom/android/ims/rcs/uce/request/UceRequestManager;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 471
    iput p2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    .line 472
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    .line 473
    iput-object p4, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 474
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;-><init>(Lcom/android/ims/rcs/uce/request/UceRequestManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mHandler:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    .line 475
    iput-object p5, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestRepository:Lcom/android/ims/rcs/uce/request/UceRequestRepository;

    .line 476
    new-instance v0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;

    iget v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    invoke-direct {v0, v1}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mThrottlingList:Lcom/android/ims/rcs/uce/request/ContactThrottlingList;

    .line 477
    iput-object p6, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 478
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/os/Looper;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "c"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .param p5, "featureFlags"    # Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$2;-><init>(Lcom/android/ims/rcs/uce/request/UceRequestManager;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 456
    iput p2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    .line 457
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    .line 458
    iput-object p4, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mControllerCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 459
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;-><init>(Lcom/android/ims/rcs/uce/request/UceRequestManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mHandler:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    .line 460
    new-instance v0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;

    iget v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    invoke-direct {v0, v1}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mThrottlingList:Lcom/android/ims/rcs/uce/request/ContactThrottlingList;

    .line 461
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestRepository;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-direct {v0, p2, v1}, Lcom/android/ims/rcs/uce/request/UceRequestRepository;-><init>(ILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestRepository:Lcom/android/ims/rcs/uce/request/UceRequestRepository;

    .line 462
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sUceUtilsProxy:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    invoke-interface {v0, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;->getSubscribeRetryDuration(Landroid/content/Context;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryDuration:J

    .line 463
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryEnabled:Z

    .line 464
    iput-object p5, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 465
    const-string v0, "create"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logi(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private blacklist addRequestCoordinator(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;)V
    .registers 3
    .param p1, "coordinator"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    .line 1034
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestRepository:Lcom/android/ims/rcs/uce/request/UceRequestRepository;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->addRequestCoordinator(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;)V

    .line 1035
    return-void
.end method

.method private blacklist addRequestCoordinatorAndDispatch(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;)V
    .registers 3
    .param p1, "coordinator"    # Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    .line 1026
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestRepository:Lcom/android/ims/rcs/uce/request/UceRequestRepository;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->addRequestCoordinatorAndDispatch(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;)V

    .line 1027
    return-void
.end method

.method private blacklist createOptionsRequest(ILjava/util/List;Z)Lcom/android/ims/rcs/uce/request/CapabilityRequest;
    .registers 8
    .param p1, "type"    # I
    .param p3, "skipFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;Z)",
            "Lcom/android/ims/rcs/uce/request/CapabilityRequest;"
        }
    .end annotation

    .line 786
    .local p2, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Lcom/android/ims/rcs/uce/request/OptionsRequest;

    iget v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mOptionsCtrl:Lcom/android/ims/rcs/uce/options/OptionsController;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/ims/rcs/uce/request/OptionsRequest;-><init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/options/OptionsController;)V

    .line 788
    .local v0, "request":Lcom/android/ims/rcs/uce/request/CapabilityRequest;
    invoke-virtual {v0, p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->setContactUri(Ljava/util/List;)V

    .line 789
    invoke-virtual {v0, p3}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->setSkipGettingFromCache(Z)V

    .line 790
    return-object v0
.end method

.method private blacklist createOptionsRequestCoordinator(ILjava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    .registers 8
    .param p1, "type"    # I
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/IRcsUceControllerCallback;",
            ")",
            "Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;"
        }
    .end annotation

    .line 764
    .local p2, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    new-instance v1, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/ims/rcs/uce/request/UceRequestManager;ILjava/util/List;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 770
    new-instance v1, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;

    iget v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    .line 771
    .local v1, "builder":Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;
    invoke-virtual {v1, p3}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;->setCapabilitiesCallback(Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;

    .line 772
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;->build()Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;

    move-result-object v2

    return-object v2
.end method

.method private blacklist createSubscribeRequest(ILjava/util/List;Z)Lcom/android/ims/rcs/uce/request/CapabilityRequest;
    .registers 10
    .param p1, "type"    # I
    .param p3, "skipFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;Z)",
            "Lcom/android/ims/rcs/uce/request/CapabilityRequest;"
        }
    .end annotation

    .line 777
    .local p2, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    iget v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubscribeCtrl:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move v2, p1

    .end local p1    # "type":I
    .local v2, "type":I
    invoke-direct/range {v0 .. v5}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;-><init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 779
    .local v0, "request":Lcom/android/ims/rcs/uce/request/CapabilityRequest;
    invoke-virtual {v0, p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->setContactUri(Ljava/util/List;)V

    .line 780
    invoke-virtual {v0, p3}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->setSkipGettingFromCache(Z)V

    .line 781
    return-object v0
.end method

.method private blacklist createSubscribeRequestCoordinator(ILjava/util/List;ZLandroid/telephony/ims/aidl/IRcsUceControllerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    .registers 13
    .param p1, "type"    # I
    .param p3, "skipFromCache"    # Z
    .param p4, "callback"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;Z",
            "Landroid/telephony/ims/aidl/IRcsUceControllerCallback;",
            ")",
            "Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;"
        }
    .end annotation

    .line 681
    .local p2, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sUceUtilsProxy:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    invoke-interface {v0, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;->isPresenceGroupSubscribeEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    new-instance v1, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/request/UceRequestManager;IZLjava/util/List;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 712
    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;

    iget v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    .line 714
    .local v1, "builder":Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;
    invoke-virtual {v1, p4}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;->setCapabilitiesCallback(Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;

    .line 715
    .end local v0    # "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    goto :goto_93

    .line 718
    .end local v1    # "builder":Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;
    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .restart local v0    # "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    sget-object v1, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sUceUtilsProxy:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;

    iget v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;->getRclMaxNumberEntries(I)I

    move-result v1

    .line 720
    .local v1, "rclMaxNumber":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v2, v1

    .line 721
    .local v2, "numRequestCoordinators":I
    const/4 v3, 0x0

    .local v3, "count":I
    :goto_39
    if-ge v3, v2, :cond_61

    .line 722
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v4, "subUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_41
    if-ge v5, v1, :cond_52

    .line 724
    mul-int v6, v3, v1

    add-int/2addr v6, v5

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 727
    .end local v5    # "index":I
    :cond_52
    invoke-direct {p0, p1, v4, p3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->createSubscribeRequest(ILjava/util/List;Z)Lcom/android/ims/rcs/uce/request/CapabilityRequest;

    move-result-object v5

    .line 729
    .local v5, "request":Lcom/android/ims/rcs/uce/request/UceRequest;
    iget-boolean v6, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryEnabled:Z

    invoke-interface {v5, v6}, Lcom/android/ims/rcs/uce/request/UceRequest;->setRetryEnabled(Z)V

    .line 730
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    .end local v4    # "subUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v5    # "request":Lcom/android/ims/rcs/uce/request/UceRequest;
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 733
    .end local v3    # "count":I
    :cond_61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v3, "subUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    mul-int v4, v2, v1

    .local v4, "i":I
    :goto_68
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7a

    .line 735
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 738
    .end local v4    # "i":I
    :cond_7a
    invoke-direct {p0, p1, v3, p3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->createSubscribeRequest(ILjava/util/List;Z)Lcom/android/ims/rcs/uce/request/CapabilityRequest;

    move-result-object v4

    .line 740
    .local v4, "request":Lcom/android/ims/rcs/uce/request/UceRequest;
    iget-boolean v5, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryEnabled:Z

    invoke-interface {v4, v5}, Lcom/android/ims/rcs/uce/request/UceRequest;->setRetryEnabled(Z)V

    .line 741
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    new-instance v5, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;

    iget v6, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    iget-object v7, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-direct {v5, v6, v0, v7}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    .line 745
    .local v5, "builder":Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;
    invoke-virtual {v5, p4}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;->setCapabilitiesCallback(Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;

    move-object v1, v5

    .line 747
    .end local v0    # "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    .end local v2    # "numRequestCoordinators":I
    .end local v3    # "subUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v4    # "request":Lcom/android/ims/rcs/uce/request/UceRequest;
    .end local v5    # "builder":Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;
    .local v1, "builder":Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;
    :goto_93
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;->build()Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createSubscribeRequestCoordinatorForRetry(Lcom/android/ims/rcs/uce/request/UceRequest;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    .registers 6
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/UceRequest;

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    new-instance v1, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;

    iget v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    .line 757
    .local v1, "builder":Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;->setCapabilitiesCallback(Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;

    .line 758
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;->build()Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getCapabilitiesFromCache(ILjava/util/List;)Ljava/util/List;
    .registers 6
    .param p1, "requestType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation

    .line 662
    .local p2, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 663
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;>;"
    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    .line 664
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-interface {v1, p2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getCapabilitiesFromCache(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_22

    .line 665
    :cond_e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_22

    .line 667
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    .line 668
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getAvailabilityFromCache(Landroid/net/Uri;)Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    move-result-object v1

    .line 667
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 672
    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda4;-><init>()V

    .line 673
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda5;-><init>()V

    .line 674
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequest$$ExternalSyntheticLambda6;-><init>()V

    .line 675
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 672
    return-object v1
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 3

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1101
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    return-object v0
.end method

.method private blacklist getNumberFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1106
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1107
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1108
    .local v1, "number":Ljava/lang/String;
    const-string v2, "[@;:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, "numberParts":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_12

    .line 1111
    return-object v0

    .line 1113
    :cond_12
    const/4 v0, 0x0

    aget-object v0, v2, v0

    return-object v0
.end method

.method private blacklist getRequestCoordinator(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    .registers 3
    .param p1, "coordinatorId"    # Ljava/lang/Long;

    .line 1038
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestRepository:Lcom/android/ims/rcs/uce/request/UceRequestRepository;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->getRequestCoordinator(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getSipUriFromUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1050
    move-object v0, p1

    .line 1051
    .local v0, "convertedUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1052
    .local v1, "number":Ljava/lang/String;
    const-string v2, "[@;:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1053
    .local v2, "numberParts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 1055
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1056
    .local v3, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1f

    .line 1057
    return-object v0

    .line 1059
    :cond_1f
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 1060
    .local v4, "simCountryIso":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1061
    return-object v0

    .line 1063
    :cond_2a
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 1064
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 1066
    .local v5, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_32
    invoke-virtual {v5, v1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v6

    .line 1067
    .local v6, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v5, v6, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 1068
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sip:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1069
    .local v7, "sipUri":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8
    :try_end_62
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_32 .. :try_end_62} :catch_64

    move-object v0, v8

    .line 1072
    .end local v6    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v7    # "sipUri":Ljava/lang/String;
    goto :goto_87

    .line 1070
    :catch_64
    move-exception v6

    .line 1071
    .local v6, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v7, Lcom/android/ims/rcs/uce/request/UceRequestManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "formatNumber: could not format "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    .end local v6    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :goto_87
    return-object v0
.end method

.method private blacklist getUceRequest(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;
    .registers 3
    .param p1, "taskId"    # Ljava/lang/Long;

    .line 1042
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestRepository:Lcom/android/ims/rcs/uce/request/UceRequestRepository;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->getUceRequest(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequest;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$createOptionsRequestCoordinator$3(ILjava/util/List;Landroid/net/Uri;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "requestList"    # Ljava/util/List;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 766
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 767
    .local v0, "individualUri":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->createOptionsRequest(ILjava/util/List;Z)Lcom/android/ims/rcs/uce/request/CapabilityRequest;

    move-result-object v1

    .line 768
    .local v1, "request":Lcom/android/ims/rcs/uce/request/UceRequest;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    return-void
.end method

.method private synthetic blacklist lambda$createSubscribeRequestCoordinator$2(IZLjava/util/List;Landroid/net/Uri;)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "skipFromCache"    # Z
    .param p3, "requestList"    # Ljava/util/List;
    .param p4, "uri"    # Landroid/net/Uri;

    .line 686
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 688
    .local v0, "individualUri":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    nop

    .line 689
    invoke-direct {p0, p1, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->getCapabilitiesFromCache(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 690
    .local v1, "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    .line 691
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsContactUceCapability;

    .line 692
    .local v2, "capability":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getEntityUri()Landroid/net/Uri;

    move-result-object v3

    .line 693
    .local v3, "entityUri":Landroid/net/Uri;
    if-eqz v3, :cond_21

    .line 695
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_33

    .line 697
    :cond_21
    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    invoke-static {v4, v5}, Lcom/android/ims/rcs/uce/util/UceUtils;->isSipUriForPresenceSubscribeEnabled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 698
    invoke-direct {p0, p4}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->getSipUriFromUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 701
    .end local v2    # "capability":Landroid/telephony/ims/RcsContactUceCapability;
    .end local v3    # "entityUri":Landroid/net/Uri;
    :cond_33
    :goto_33
    goto :goto_46

    .line 702
    :cond_34
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    invoke-static {v2, v3}, Lcom/android/ims/rcs/uce/util/UceUtils;->isSipUriForPresenceSubscribeEnabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 703
    invoke-direct {p0, p4}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->getSipUriFromUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 707
    :cond_46
    :goto_46
    invoke-direct {p0, p1, v0, p2}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->createSubscribeRequest(ILjava/util/List;Z)Lcom/android/ims/rcs/uce/request/CapabilityRequest;

    move-result-object v2

    .line 709
    .local v2, "request":Lcom/android/ims/rcs/uce/request/UceRequest;
    iget-boolean v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryEnabled:Z

    invoke-interface {v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequest;->setRetryEnabled(Z)V

    .line 710
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    return-void
.end method

.method static synthetic blacklist lambda$getCapabilitiesFromCache$1(Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;)Z
    .registers 2
    .param p0, "result"    # Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;

    .line 673
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/eab/EabCapabilityResult;->getStatus()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$sendCachedCapInfoToRequester$0(Landroid/telephony/ims/RcsContactUceCapability;Landroid/net/Uri;)Z
    .registers 3
    .param p0, "c"    # Landroid/telephony/ims/RcsContactUceCapability;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 648
    invoke-virtual {p0}, Landroid/telephony/ims/RcsContactUceCapability;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 1091
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 1087
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 1095
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-void
.end method

.method private blacklist notifyRepositoryRequestFinished(Ljava/lang/Long;)V
    .registers 3
    .param p1, "taskId"    # Ljava/lang/Long;

    .line 1046
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestRepository:Lcom/android/ims/rcs/uce/request/UceRequestRepository;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->notifyRequestFinished(Ljava/lang/Long;)V

    .line 1047
    return-void
.end method

.method private blacklist removeRequestCoordinator(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    .registers 3
    .param p1, "coordinatorId"    # Ljava/lang/Long;

    .line 1030
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestRepository:Lcom/android/ims/rcs/uce/request/UceRequestRepository;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->removeRequestCoordinator(Ljava/lang/Long;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object v0

    return-object v0
.end method

.method private blacklist sendCachedCapInfoToRequester(ILjava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)Ljava/util/List;
    .registers 9
    .param p1, "type"    # I
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/IRcsUceControllerCallback;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 633
    .local p2, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 634
    .local v0, "nonCachedUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    nop

    .line 635
    invoke-direct {p0, p1, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->getCapabilitiesFromCache(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 637
    .local v1, "numbersWithCachedCaps":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    :try_start_a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCachedCapInfoToRequester: cached caps found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 639
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries. Notifying requester."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logd(Ljava/lang/String;)V

    .line 641
    invoke-interface {p3, v1}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onCapabilitiesReceived(Ljava/util/List;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_33} :catch_34

    .line 645
    :cond_33
    goto :goto_4b

    .line 643
    :catch_34
    move-exception v2

    .line 644
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCachedCapInfoToRequester, error sending cap info back to requester: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logw(Ljava/lang/String;)V

    .line 647
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsContactUceCapability;

    .line 648
    .local v3, "c":Landroid/telephony/ims/RcsContactUceCapability;
    new-instance v4, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/RcsContactUceCapability;)V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 649
    .end local v3    # "c":Landroid/telephony/ims/RcsContactUceCapability;
    goto :goto_4f

    .line 650
    :cond_64
    return-object v0
.end method

.method private blacklist sendRequestInternal(ILjava/util/List;ZLandroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 11
    .param p1, "type"    # I
    .param p3, "skipFromCache"    # Z
    .param p4, "callback"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;Z",
            "Landroid/telephony/ims/aidl/IRcsUceControllerCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    .local p2, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .line 579
    .local v0, "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    move-object v1, p2

    .line 580
    .local v1, "nonCachedUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    if-nez p3, :cond_56

    .line 581
    invoke-direct {p0, p1, p2, p4}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sendCachedCapInfoToRequester(ILjava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)Ljava/util/List;

    move-result-object v1

    .line 582
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_42

    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestInternal: shortcut queue for caps - request reduced from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 584
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 583
    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logd(Ljava/lang/String;)V

    goto :goto_47

    .line 586
    :cond_42
    const-string v3, "sendRequestInternal: shortcut queue for caps - no cached caps."

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logd(Ljava/lang/String;)V

    .line 588
    :goto_47
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 589
    const-string v3, "sendRequestInternal: shortcut complete, sending success result"

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logd(Ljava/lang/String;)V

    .line 590
    invoke-interface {p4, v2}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onComplete(Landroid/telephony/ims/SipDetails;)V

    .line 591
    return-void

    .line 594
    :cond_56
    sget-object v3, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sUceUtilsProxy:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    invoke-interface {v3, v4, v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;->isPresenceCapExchangeEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_73

    sget-object v3, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sUceUtilsProxy:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    .line 595
    invoke-interface {v3, v4, v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;->isPresenceSupported(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 596
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->createSubscribeRequestCoordinator(ILjava/util/List;ZLandroid/telephony/ims/aidl/IRcsUceControllerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object v0

    goto :goto_83

    .line 598
    :cond_73
    sget-object v3, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sUceUtilsProxy:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    invoke-interface {v3, v4, v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;->isSipOptionsSupported(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 599
    invoke-direct {p0, p1, v1, p4}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->createOptionsRequestCoordinator(ILjava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object v0

    .line 602
    :cond_83
    :goto_83
    if-nez v0, :cond_91

    .line 603
    const-string v3, "sendRequestInternal: Neither Presence nor OPTIONS are supported"

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logw(Ljava/lang/String;)V

    .line 604
    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    invoke-interface {p4, v3, v4, v5, v2}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onError(IJLandroid/telephony/ims/SipDetails;)V

    .line 605
    return-void

    .line 608
    :cond_91
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendRequestInternal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 609
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v3, "requestType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 610
    const-string v4, ", requestCoordinatorId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->getCoordinatorId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 611
    const-string v4, ", taskId={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 612
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->getActivatedRequestTaskIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda0;-><init>()V

    .line 613
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    const-string v5, ","

    invoke-static {v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 612
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 613
    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logd(Ljava/lang/String;)V

    .line 617
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->addRequestCoordinatorAndDispatch(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;)V

    .line 618
    return-void
.end method

.method private blacklist sendSubscribeRetryRequest(Lcom/android/ims/rcs/uce/request/UceRequest;)V
    .registers 8
    .param p1, "request"    # Lcom/android/ims/rcs/uce/request/UceRequest;

    .line 548
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;->enableSipSubscribeRetry()Z

    move-result v0

    if-nez v0, :cond_e

    .line 549
    const-string v0, "Retry subscribe is not allowed"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logw(Ljava/lang/String;)V

    .line 550
    return-void

    .line 553
    :cond_e
    if-eqz p1, :cond_6b

    const-class v0, Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_6b

    .line 560
    :cond_19
    nop

    .line 561
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->createSubscribeRequestCoordinatorForRetry(Lcom/android/ims/rcs/uce/request/UceRequest;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;

    move-result-object v0

    .line 563
    .local v0, "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    if-nez v0, :cond_26

    .line 564
    const-string v1, "createSubscribeRequestCoordinator failed for retry"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logw(Ljava/lang/String;)V

    .line 565
    return-void

    .line 567
    :cond_26
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->addRequestCoordinator(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;)V

    .line 570
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;->getCoordinatorId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 571
    .local v1, "coordinatorId":Ljava/lang/Long;
    invoke-interface {p1}, Lcom/android/ims/rcs/uce/request/UceRequest;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 572
    .local v2, "taskId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mHandler:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    iget-wide v4, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryDuration:J

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->sendRequestMessage(Ljava/lang/Long;Ljava/lang/Long;J)V

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sent message for retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logd(Ljava/lang/String;)V

    .line 574
    return-void

    .line 554
    .end local v0    # "requestCoordinator":Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
    .end local v1    # "coordinatorId":Ljava/lang/Long;
    .end local v2    # "taskId":Ljava/lang/Long;
    :cond_6b
    :goto_6b
    const-string v0, "parameter is not available for retry"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logw(Ljava/lang/String;)V

    .line 555
    return-void
.end method


# virtual methods
.method public blacklist getRequestManagerCallback()Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .registers 2

    .line 1083
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    return-object v0
.end method

.method public blacklist getUceRequestHandler()Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;
    .registers 2

    .line 1078
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mHandler:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    return-object v0
.end method

.method public blacklist onCarrierConfigChanged()V
    .registers 5

    .line 516
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sUceUtilsProxy:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    invoke-interface {v0, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;->getSubscribeRetryDuration(Landroid/content/Context;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryDuration:J

    .line 517
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryEnabled:Z

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carrier config changed : retry duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logd(Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public blacklist onDestroy()V
    .registers 2

    .line 498
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logi(Ljava/lang/String;)V

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mIsDestroyed:Z

    .line 500
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mHandler:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceRequestHandler;->onDestroy()V

    .line 501
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mThrottlingList:Lcom/android/ims/rcs/uce/request/ContactThrottlingList;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->reset()V

    .line 502
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestRepository:Lcom/android/ims/rcs/uce/request/UceRequestRepository;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/UceRequestRepository;->onDestroy()V

    .line 503
    return-void
.end method

.method public blacklist resetThrottlingList()V
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mThrottlingList:Lcom/android/ims/rcs/uce/request/ContactThrottlingList;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->reset()V

    .line 510
    return-void
.end method

.method public blacklist retrieveCapabilitiesForRemote(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    .registers 12
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "requestCallback"    # Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .line 799
    .local p2, "remoteCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;

    iget v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;-><init>(ILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    .line 800
    .local v0, "request":Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->setContactUri(Ljava/util/List;)V

    .line 801
    invoke-virtual {v0, p2}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->setRemoteFeatureTags(Ljava/util/List;)V

    .line 804
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->getNumberFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 806
    sget-object v2, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sUceUtilsProxy:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;->isNumberBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;->setIsRemoteNumberBlocked(Z)V

    .line 810
    :cond_28
    new-instance v2, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$Builder;

    iget v3, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    .line 811
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRequestMgrCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$Builder;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    .line 812
    .local v2, "CoordBuilder":Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$Builder;
    invoke-virtual {v2, p3}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$Builder;->setOptionsRequestCallback(Landroid/telephony/ims/aidl/IOptionsRequestCallback;)Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$Builder;

    .line 813
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator$Builder;->build()Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;

    move-result-object v3

    .line 815
    .local v3, "requestCoordinator":Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "retrieveCapabilitiesForRemote: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    .local v4, "builder":Ljava/lang/StringBuilder;
    const-string v5, "requestCoordinatorId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->getCoordinatorId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 817
    const-string v6, ", taskId={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 818
    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/request/RemoteOptionsCoordinator;->getActivatedRequestTaskIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/ims/rcs/uce/request/UceRequestManager$$ExternalSyntheticLambda0;-><init>()V

    .line 819
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 818
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 819
    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->logd(Ljava/lang/String;)V

    .line 823
    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->addRequestCoordinatorAndDispatch(Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;)V

    .line 824
    return-void
.end method

.method public blacklist sendAvailabilityRequest(Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 540
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onError(IJLandroid/telephony/ims/SipDetails;)V

    .line 541
    return-void

    .line 543
    :cond_c
    nop

    .line 544
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 543
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, p2}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sendRequestInternal(ILjava/util/List;ZLandroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 545
    return-void
.end method

.method public blacklist sendCapabilityRequest(Ljava/util/List;ZLandroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 8
    .param p2, "skipFromCache"    # Z
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;Z",
            "Landroid/telephony/ims/aidl/IRcsUceControllerCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    .local p1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mIsDestroyed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 528
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-interface {p3, v1, v2, v3, v0}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onError(IJLandroid/telephony/ims/SipDetails;)V

    .line 529
    return-void

    .line 531
    :cond_c
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sendRequestInternal(ILjava/util/List;ZLandroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 532
    return-void
.end method

.method public blacklist setOptionsController(Lcom/android/ims/rcs/uce/options/OptionsController;)V
    .registers 2
    .param p1, "controller"    # Lcom/android/ims/rcs/uce/options/OptionsController;

    .line 484
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mOptionsCtrl:Lcom/android/ims/rcs/uce/options/OptionsController;

    .line 485
    return-void
.end method

.method public blacklist setSubscribeController(Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;)V
    .registers 2
    .param p1, "controller"    # Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    .line 491
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubscribeCtrl:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    .line 492
    return-void
.end method

.method public blacklist setsUceUtilsProxy(Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;)V
    .registers 6
    .param p1, "uceUtilsProxy"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;

    .line 161
    sput-object p1, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sUceUtilsProxy:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;

    .line 164
    sget-object v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sUceUtilsProxy:Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mSubId:I

    invoke-interface {v0, v1, v2}, Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;->getSubscribeRetryDuration(Landroid/content/Context;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryDuration:J

    .line 165
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestManager;->mRetryEnabled:Z

    .line 166
    return-void
.end method
