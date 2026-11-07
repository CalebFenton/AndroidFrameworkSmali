.class public final Landroid/media/MediaRouter2;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter2$PackageNameUserHandlePair;,
        Landroid/media/MediaRouter2$MediaRouter2Impl;,
        Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;,
        Landroid/media/MediaRouter2$ScanToken;,
        Landroid/media/MediaRouter2$ScanRequest;,
        Landroid/media/MediaRouter2$LocalMediaRouter2Impl;,
        Landroid/media/MediaRouter2$SystemRoutingController;,
        Landroid/media/MediaRouter2$RoutingController;,
        Landroid/media/MediaRouter2$RouteCallback;,
        Landroid/media/MediaRouter2$RouteCallbackRecord;,
        Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;,
        Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;,
        Landroid/media/MediaRouter2$DeviceSuggestionsCallback;,
        Landroid/media/MediaRouter2$TransferCallbackRecord;,
        Landroid/media/MediaRouter2$TransferCallback;,
        Landroid/media/MediaRouter2$ControllerCallbackRecord;,
        Landroid/media/MediaRouter2$ControllerCallback;,
        Landroid/media/MediaRouter2$OnGetControllerHintsListener;,
        Landroid/media/MediaRouter2$ControllerCreationRequest;,
        Landroid/media/MediaRouter2$MediaRouter2Stub;,
        Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;,
        Landroid/media/MediaRouter2$ScanningState;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist MANAGER_REQUEST_ID_NONE:J = 0x0L

.field public static final blacklist SCANNING_STATE_NOT_SCANNING:I = 0x0

.field public static final blacklist SCANNING_STATE_SCANNING_FULL:I = 0x2

.field public static final blacklist SCANNING_STATE_WHILE_INTERACTIVE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "MR2"

.field private static final blacklist TRANSFER_TIMEOUT_MS:I = 0x7530

.field private static final blacklist sAppToProxyRouterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/MediaRouter2$PackageNameUserHandlePair;",
            "Landroid/media/MediaRouter2;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sInstance:Landroid/media/MediaRouter2;

.field private static final blacklist sRouterLock:Ljava/lang/Object;

.field private static final blacklist sSystemRouterLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$ControllerCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$ControllerCreationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceSuggestionsCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

.field private volatile blacklist mFilteredRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

.field private final blacklist mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMediaRouterService:Landroid/media/IMediaRouterService;

.field private final blacklist mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mNonSystemRoutingControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mOnGetControllerHintsListener:Landroid/media/MediaRouter2$OnGetControllerHintsListener;

.field private volatile blacklist mPreviousFilteredRoutes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPreviousUnfilteredRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$RouteCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRouteListingPreference:Landroid/media/RouteListingPreference;

.field private final blacklist mRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScanRequestsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/MediaRouter2$ScanRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScreenOffScanRequestCount:I

.field private blacklist mScreenOnScanRequestCount:I

.field private blacklist mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

.field private blacklist mSuggestedDeviceInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mSystemController:Landroid/media/MediaRouter2$RoutingController;

.field private final blacklist mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$TransferCallbackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/media/MediaRouter2;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControllerCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDiscoveryPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteDiscoveryPreference;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImpl(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Impl;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRouteCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRouteListingPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteListingPreference;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mRouteListingPreference:Landroid/media/RouteListingPreference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoutes(Landroid/media/MediaRouter2;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScanRequestsMap(Landroid/media/MediaRouter2;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestedDeviceInfo(Landroid/media/MediaRouter2;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mSuggestedDeviceInfo:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDiscoveryPreference(Landroid/media/MediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnGetControllerHintsListener(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRouter2;->mOnGetControllerHintsListener:Landroid/media/MediaRouter2$OnGetControllerHintsListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRouteListingPreference(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRouter2;->mRouteListingPreference:Landroid/media/RouteListingPreference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStub(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$MediaRouter2Stub;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCurrentController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRouter2;->getCurrentController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRoutesWithIds(Landroid/media/MediaRouter2;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->getRoutesWithIds(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyControllerUpdated(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyDeviceSuggestionsUpdated(Landroid/media/MediaRouter2;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2;->notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyPreferredFeaturesChanged(Landroid/media/MediaRouter2;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyPreferredFeaturesChanged(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyRequestFailed(Landroid/media/MediaRouter2;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyRequestFailed(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyRouteListingPreferenceUpdated(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyRouteListingPreferenceUpdated(Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyStop(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyStop(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTransfer(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2;->notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTransferFailure(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDiscoveryPreferenceIfNeededLocked(Landroid/media/MediaRouter2;)Z
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaRouter2;->updateDiscoveryPreferenceIfNeededLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/media/MediaRouter2;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsAppToProxyRouterMap()Ljava/util/Map;
    .registers 1

    sget-object v0, Landroid/media/MediaRouter2;->sAppToProxyRouterMap:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSystemRouterLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/media/MediaRouter2;->sSystemRouterLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 2

    invoke-static {p0, p1}, Landroid/media/MediaRouter2;->ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 130
    const-string v0, "MR2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaRouter2;->DEBUG:Z

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2;->sSystemRouterLock:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2;->sRouterLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2;->sAppToProxyRouterMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "appContext"    # Landroid/content/Context;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 157
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 159
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 161
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 163
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 166
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 175
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 180
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    .line 186
    iput v0, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    .line 189
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    .line 190
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 193
    sget-object v1, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    iput-object v1, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 204
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mSuggestedDeviceInfo:Ljava/util/Map;

    .line 213
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    .line 215
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 625
    iput-object p1, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    .line 626
    nop

    .line 628
    const-string v1, "media_router"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 627
    invoke-static {v1}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 629
    new-instance v1, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;-><init>(Landroid/media/MediaRouter2;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    .line 630
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    .line 632
    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->loadSystemRoutes(Z)V

    .line 634
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getSystemSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    .line 635
    .local v0, "currentSystemSessionInfo":Landroid/media/RoutingSessionInfo;
    if-eqz v0, :cond_af

    .line 639
    new-instance v1, Landroid/media/MediaRouter2$SystemRoutingController;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaRouter2$SystemRoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    .line 640
    return-void

    .line 636
    :cond_af
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Null currentSystemSessionInfo. Something is wrong."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "clientPackageName"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 157
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 159
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 161
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 163
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 166
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 175
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 180
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    .line 186
    iput v0, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    .line 189
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 193
    sget-object v0, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    iput-object v0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mSuggestedDeviceInfo:Ljava/util/Map;

    .line 213
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    .line 215
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 644
    iput-object p1, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    .line 645
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    .line 646
    nop

    .line 648
    const-string v0, "media_router"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 647
    invoke-static {v0}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 650
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->loadSystemRoutes(Z)V

    .line 652
    new-instance v0, Landroid/media/MediaRouter2$SystemRoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    .line 655
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 654
    invoke-static {v1, v2, p3}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getSystemSessionInfoImpl(Landroid/media/IMediaRouterService;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/MediaRouter2$SystemRoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    .line 657
    new-instance v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-direct {v0, p0, p1, p3, p4}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;-><init>(Landroid/media/MediaRouter2;Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    .line 658
    return-void
.end method

.method private blacklist addRoutingController(Landroid/media/RoutingSessionInfo;)Landroid/media/MediaRouter2$RoutingController;
    .registers 6
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 1377
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1379
    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 1380
    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    .local v0, "controller":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_20

    .line 1382
    .end local v0    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :cond_e
    new-instance v0, Landroid/media/MediaRouter2$RoutingController;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 1383
    .restart local v0    # "controller":Landroid/media/MediaRouter2$RoutingController;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1384
    :try_start_16
    iget-object v2, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    monitor-exit v1

    .line 1387
    :goto_20
    return-object v0

    .line 1385
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v2
.end method

.method private static blacklist checkCallerHasOnlyRevocablePermissions(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 455
    nop

    .line 456
    const-string v0, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 458
    .local v0, "hasMediaContentControl":Z
    :goto_e
    nop

    .line 459
    const-string v3, "android.permission.MEDIA_ROUTING_CONTROL"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v2

    .line 461
    .local v3, "hasRegularMediaRoutingControl":Z
    :goto_1a
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 462
    .local v4, "appOpsManager":Landroid/app/AppOpsManager;
    nop

    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 463
    const-string v7, "android:media_routing_control"

    invoke-virtual {v4, v7, v5, v6}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_37

    move v5, v1

    goto :goto_38

    :cond_37
    move v5, v2

    .line 469
    .local v5, "hasAppOpMediaRoutingControl":Z
    :goto_38
    if-nez v0, :cond_3f

    if-nez v3, :cond_3f

    if-eqz v5, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    return v1
.end method

.method private static blacklist ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 3
    .param p0, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1645
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1646
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1f

    .line 1650
    :cond_11
    new-instance v0, Landroid/media/RoutingSessionInfo$Builder;

    invoke-direct {v0, p0}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 1651
    invoke-virtual {v0, p1}, Landroid/media/RoutingSessionInfo$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    .line 1652
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    .line 1650
    return-object v0

    .line 1647
    :cond_1f
    :goto_1f
    return-object p0
.end method

.method private blacklist filterRoutesWithCompositePreferenceLocked(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1504
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1506
    .local v0, "deduplicationIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1508
    .local v1, "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v2, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v2}, Landroid/media/RouteDiscoveryPreference;->getDeduplicationPackageOrder()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/media/MediaRouter2;->getSortedRoutes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 1509
    .local v3, "route":Landroid/media/MediaRoute2Info;
    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRoute2Info;->hasAnyFeatures(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 1510
    goto :goto_18

    .line 1512
    :cond_31
    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_54

    .line 1513
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1515
    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v4

    .line 1516
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 1517
    goto :goto_18

    .line 1519
    :cond_54
    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->shouldRemoveDuplicates()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 1520
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 1521
    goto :goto_18

    .line 1523
    :cond_67
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1525
    :cond_6e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    .end local v3    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_18

    .line 1527
    :cond_72
    return-object v1
.end method

.method private static blacklist findOrCreateProxyInstanceForCallingUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "onInstanceInvalidatedListener"    # Ljava/lang/Runnable;

    .line 422
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 423
    const-string v0, "user must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 429
    if-eqz p3, :cond_14

    if-nez p4, :cond_1a

    .line 430
    :cond_14
    invoke-static {p0}, Landroid/media/MediaRouter2;->checkCallerHasOnlyRevocablePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 437
    :cond_1a
    new-instance v0, Landroid/media/MediaRouter2$PackageNameUserHandlePair;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/media/MediaRouter2$PackageNameUserHandlePair;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/MediaRouter2-IA;)V

    .line 439
    .local v0, "key":Landroid/media/MediaRouter2$PackageNameUserHandlePair;
    sget-object v1, Landroid/media/MediaRouter2;->sSystemRouterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_23
    sget-object v2, Landroid/media/MediaRouter2;->sAppToProxyRouterMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2;

    .line 441
    .local v2, "instance":Landroid/media/MediaRouter2;
    if-nez v2, :cond_43

    .line 442
    new-instance v3, Landroid/media/MediaRouter2;

    .line 443
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1, p2}, Landroid/media/MediaRouter2;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object v2, v3

    .line 445
    iget-object v3, v2, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    check-cast v3, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-virtual {v3}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->registerProxyRouter()V

    .line 446
    sget-object v3, Landroid/media/MediaRouter2;->sAppToProxyRouterMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_43
    iget-object v3, v2, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    check-cast v3, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    .line 449
    invoke-virtual {v3, p3, p4}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->registerInstanceInvalidatedCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 450
    monitor-exit v1

    return-object v2

    .line 451
    .end local v2    # "instance":Landroid/media/MediaRouter2;
    :catchall_4c
    move-exception v2

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_23 .. :try_end_4e} :catchall_4c

    throw v2

    .line 431
    .end local v0    # "key":Landroid/media/MediaRouter2$PackageNameUserHandlePair;
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use getInstance(Context, String, Executor, Runnable) to obtain a proxy MediaRouter2 instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "clientPackageName must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getCurrentController()Landroid/media/MediaRouter2$RoutingController;
    .registers 3

    .line 1126
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getControllers()Ljava/util/List;

    move-result-object v0

    .line 1127
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter2$RoutingController;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    return-object v1
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 232
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    sget-object v0, Landroid/media/MediaRouter2;->sRouterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_8
    sget-object v1, Landroid/media/MediaRouter2;->sInstance:Landroid/media/MediaRouter2;

    if-nez v1, :cond_17

    .line 235
    new-instance v1, Landroid/media/MediaRouter2;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaRouter2;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/MediaRouter2;->sInstance:Landroid/media/MediaRouter2;

    .line 237
    :cond_17
    sget-object v1, Landroid/media/MediaRouter2;->sInstance:Landroid/media/MediaRouter2;

    monitor-exit v0

    return-object v1

    .line 238
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static whitelist getInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaRouter2;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 284
    nop

    .line 287
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 284
    invoke-static {p0, p1, v1, v0, v0}, Landroid/media/MediaRouter2;->findOrCreateProxyInstanceForCallingUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 290
    :catch_b
    move-exception v1

    .line 291
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create proxy router for package \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MR2"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/media/MediaRouter2;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 400
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Landroid/media/MediaRouter2;->findOrCreateProxyInstanceForCallingUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "onInstanceInvalidatedListener"    # Ljava/lang/Runnable;

    .line 349
    const-string v0, "Executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    const-string v0, "onInstanceInvalidatedListener must not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 353
    nop

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 353
    invoke-static {p0, p1, v0, p2, p3}, Landroid/media/MediaRouter2;->findOrCreateProxyInstanceForCallingUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMatchingController(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;
    .registers 9
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "logPrefix"    # Ljava/lang/String;

    .line 1421
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1422
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    return-object v0

    .line 1425
    :cond_b
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1426
    :try_start_e
    iget-object v1, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    .line 1427
    .local v1, "controller":Landroid/media/MediaRouter2$RoutingController;
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_81

    .line 1429
    const/4 v0, 0x0

    if-nez v1, :cond_3f

    .line 1430
    const-string v2, "MR2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Matching controller not found. uniqueSessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1434
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1430
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    return-object v0

    .line 1438
    :cond_3f
    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    .line 1439
    .local v2, "oldInfo":Landroid/media/RoutingSessionInfo;
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 1440
    const-string v3, "MR2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Provider IDs are not matched. old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1444
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1446
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1440
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    return-object v0

    .line 1449
    :cond_80
    return-object v1

    .line 1427
    .end local v1    # "controller":Landroid/media/MediaRouter2$RoutingController;
    .end local v2    # "oldInfo":Landroid/media/RoutingSessionInfo;
    :catchall_81
    move-exception v1

    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v1
.end method

.method private blacklist getRoutesWithIds(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1532
    .local p1, "routeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1533
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 1534
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda10;

    invoke-direct {v3, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda10;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;-><init>()V

    .line 1535
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1536
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    .line 1533
    return-object v1

    .line 1537
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private blacklist getSortedRoutes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1483
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    .local p2, "packageOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1484
    return-object p1

    .line 1486
    :cond_7
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1487
    .local v0, "packagePriority":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 1488
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_25

    .line 1490
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1492
    .end local v2    # "i":I
    :cond_25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1494
    .local v2, "sortedRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaRoute2Info;>;"
    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    .line 1495
    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    .line 1494
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1497
    return-object v2
.end method

.method static synthetic blacklist lambda$getSortedRoutes$1(Ljava/util/Map;Landroid/media/MediaRoute2Info;)I
    .registers 4
    .param p0, "packagePriority"    # Ljava/util/Map;
    .param p1, "r"    # Landroid/media/MediaRoute2Info;

    .line 1496
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getProviderPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method static synthetic blacklist lambda$notifyControllerUpdated$13(Landroid/media/MediaRouter2$ControllerCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2$ControllerCallbackRecord;
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1632
    iget-object v0, p0, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mCallback:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$ControllerCallback;->onControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyDeviceSuggestionsUpdated$8(Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p0, "record"    # Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;
    .param p1, "suggestingPackageName"    # Ljava/lang/String;
    .param p2, "deviceSuggestions"    # Ljava/util/List;

    .line 1600
    iget-object v0, p0, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;->mDeviceSuggestionsCallback:Landroid/media/MediaRouter2$DeviceSuggestionsCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2$DeviceSuggestionsCallback;->onSuggestionUpdated(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyPreferredFeaturesChanged$6(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2$RouteCallbackRecord;
    .param p1, "features"    # Ljava/util/List;

    .line 1583
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onPreferredFeaturesChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRequestFailed$11(Landroid/media/MediaRouter2$TransferCallbackRecord;I)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2$TransferCallbackRecord;
    .param p1, "reason"    # I

    .line 1620
    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$TransferCallback;->onRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRouteListingPreferenceUpdated$7(Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;Landroid/media/RouteListingPreference;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;
    .param p1, "preference"    # Landroid/media/RouteListingPreference;

    .line 1590
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;->mRouteListingPreferenceCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesAdded$2(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2$RouteCallbackRecord;
    .param p1, "filteredRoutes"    # Ljava/util/List;

    .line 1545
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesAdded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesChanged$4(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2$RouteCallbackRecord;
    .param p1, "filteredRoutes"    # Ljava/util/List;

    .line 1567
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesRemoved$3(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2$RouteCallbackRecord;
    .param p1, "filteredRoutes"    # Ljava/util/List;

    .line 1556
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesRemoved(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesUpdated$5(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2$RouteCallbackRecord;
    .param p1, "filteredRoutes"    # Ljava/util/List;

    .line 1576
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesUpdated(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyStop$12(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2$TransferCallbackRecord;
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1626
    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$TransferCallback;->onStop(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransfer$9(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 4
    .param p0, "record"    # Landroid/media/MediaRouter2$TransferCallbackRecord;
    .param p1, "oldController"    # Landroid/media/MediaRouter2$RoutingController;
    .param p2, "newController"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1608
    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2$TransferCallback;->onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransferFailure$10(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRoute2Info;)V
    .registers 3
    .param p0, "record"    # Landroid/media/MediaRouter2$TransferCallbackRecord;
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 1614
    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$TransferCallback;->onTransferFailure(Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic blacklist lambda$updateDiscoveryPreferenceIfNeededLocked$0(Landroid/media/MediaRouter2$RouteCallbackRecord;)Landroid/media/RouteDiscoveryPreference;
    .registers 2
    .param p0, "record"    # Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 926
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    return-object v0
.end method

.method private blacklist loadSystemRoutes(Z)V
    .registers 7
    .param p1, "isProxyRouter"    # Z

    .line 662
    const/4 v0, 0x0

    .line 664
    .local v0, "currentSystemRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/media/IMediaRouterService;->getSystemRoutes(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    move-object v0, v1

    .line 668
    goto :goto_13

    .line 666
    :catch_f
    move-exception v1

    .line 667
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 670
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_13
    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 674
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 675
    .local v2, "route":Landroid/media/MediaRoute2Info;
    iget-object v3, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_1f

    .line 677
    :cond_35
    return-void

    .line 671
    :cond_36
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Null or empty currentSystemRoutes. Something is wrong."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V
    .registers 6
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1631
    iget-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    .line 1632
    .local v1, "record":Landroid/media/MediaRouter2$ControllerCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda14;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda14;-><init>(Landroid/media/MediaRouter2$ControllerCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1633
    .end local v1    # "record":Landroid/media/MediaRouter2$ControllerCallbackRecord;
    goto :goto_6

    .line 1634
    :cond_1d
    return-void
.end method

.method private blacklist notifyDeviceSuggestionsUpdated(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "suggestingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1597
    .local p2, "deviceSuggestions":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;

    .line 1598
    .local v1, "record":Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda18;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda18;-><init>(Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1602
    .end local v1    # "record":Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;
    goto :goto_6

    .line 1603
    :cond_1d
    return-void
.end method

.method private blacklist notifyPreferredFeaturesChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1581
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1582
    .local v1, "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda7;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1584
    .end local v1    # "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    goto :goto_6

    .line 1585
    :cond_1d
    return-void
.end method

.method private blacklist notifyRequestFailed(I)V
    .registers 6
    .param p1, "reason"    # I

    .line 1619
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    .line 1620
    .local v1, "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1621
    .end local v1    # "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    goto :goto_6

    .line 1622
    :cond_1d
    return-void
.end method

.method private blacklist notifyRouteListingPreferenceUpdated(Landroid/media/RouteListingPreference;)V
    .registers 6
    .param p1, "preference"    # Landroid/media/RouteListingPreference;

    .line 1588
    iget-object v0, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    .line 1589
    .local v1, "record":Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;-><init>(Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;Landroid/media/RouteListingPreference;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1591
    .end local v1    # "record":Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;
    goto :goto_6

    .line 1592
    :cond_1d
    return-void
.end method

.method private blacklist notifyRoutesAdded(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1541
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1542
    .local v1, "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1543
    invoke-interface {v2, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    .line 1544
    .local v2, "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1545
    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda5;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1547
    .end local v1    # "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    .end local v2    # "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :cond_2a
    goto :goto_6

    .line 1548
    :cond_2b
    return-void
.end method

.method private blacklist notifyRoutesChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1562
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1563
    .local v1, "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1564
    invoke-interface {v2, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    .line 1565
    .local v2, "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1566
    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda12;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda12;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1569
    .end local v1    # "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    .end local v2    # "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :cond_2a
    goto :goto_6

    .line 1570
    :cond_2b
    return-void
.end method

.method private blacklist notifyRoutesRemoved(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1551
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1552
    .local v1, "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1553
    invoke-interface {v2, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    .line 1554
    .local v2, "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1555
    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1558
    .end local v1    # "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    .end local v2    # "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :cond_2a
    goto :goto_6

    .line 1559
    :cond_2b
    return-void
.end method

.method private blacklist notifyRoutesUpdated(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1573
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1574
    .local v1, "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1575
    invoke-interface {v2, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    .line 1576
    .local v2, "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda6;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1577
    .end local v1    # "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    .end local v2    # "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    goto :goto_6

    .line 1578
    :cond_25
    return-void
.end method

.method private blacklist notifyStop(Landroid/media/MediaRouter2$RoutingController;)V
    .registers 6
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1625
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    .line 1626
    .local v1, "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1627
    .end local v1    # "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    goto :goto_6

    .line 1628
    :cond_1d
    return-void
.end method

.method private blacklist notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .registers 7
    .param p1, "oldController"    # Landroid/media/MediaRouter2$RoutingController;
    .param p2, "newController"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1606
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    .line 1607
    .local v1, "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda15;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1609
    .end local v1    # "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    goto :goto_6

    .line 1610
    :cond_1d
    return-void
.end method

.method private blacklist notifyTransferFailure(Landroid/media/MediaRoute2Info;)V
    .registers 6
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 1613
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    .line 1614
    .local v1, "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda13;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRoute2Info;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1615
    .end local v1    # "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    goto :goto_6

    .line 1616
    :cond_1d
    return-void
.end method

.method private blacklist updateDiscoveryPreferenceIfNeededLocked()Z
    .registers 4

    .line 925
    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 926
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda17;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 927
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    .line 926
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/Collection;)V

    .line 927
    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    .line 929
    .local v0, "newDiscoveryPreference":Landroid/media/RouteDiscoveryPreference;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 930
    const/4 v1, 0x0

    return v1

    .line 932
    :cond_2c
    iput-object v0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 933
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    .line 934
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public whitelist cancelScanRequest(Landroid/media/MediaRouter2$ScanToken;)V
    .registers 8
    .param p1, "token"    # Landroid/media/MediaRouter2$ScanToken;

    .line 586
    const-string v0, "token must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 588
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_8
    iget-object v1, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/media/MediaRouter2$ScanToken;->-$$Nest$fgetmId(Landroid/media/MediaRouter2$ScanToken;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$ScanRequest;

    .line 591
    .local v1, "request":Landroid/media/MediaRouter2$ScanRequest;
    if-eqz v1, :cond_6b

    .line 597
    invoke-virtual {v1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_26

    .line 598
    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    if-ne v2, v4, :cond_24

    move v2, v4

    goto :goto_31

    :cond_24
    move v2, v3

    goto :goto_31

    .line 599
    :cond_26
    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    if-ne v2, v4, :cond_30

    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_73

    if-nez v2, :cond_30

    move v2, v4

    goto :goto_31

    :cond_30
    move v2, v3

    :goto_31
    nop

    .line 601
    .local v2, "shouldUpdate":Z
    if-eqz v2, :cond_4f

    .line 603
    :try_start_34
    invoke-virtual {v1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v5

    if-eqz v5, :cond_45

    iget v5, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    if-nez v5, :cond_3f

    goto :goto_45

    .line 606
    :cond_3f
    iget-object v3, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v3, v4}, Landroid/media/MediaRouter2$MediaRouter2Impl;->updateScanningState(I)V

    goto :goto_4a

    .line 604
    :cond_45
    :goto_45
    iget-object v5, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v5, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->updateScanningState(I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_4a} :catch_4b
    .catchall {:try_start_34 .. :try_end_4a} :catchall_73

    .line 611
    :goto_4a
    goto :goto_4f

    .line 609
    :catch_4b
    move-exception v3

    .line 610
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_4c
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 614
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    invoke-virtual {v1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 615
    iget v3, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    goto :goto_60

    .line 617
    :cond_5b
    iget v3, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    .line 620
    :goto_60
    iget-object v3, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/media/MediaRouter2$ScanToken;->-$$Nest$fgetmId(Landroid/media/MediaRouter2$ScanToken;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 621
    .end local v1    # "request":Landroid/media/MediaRouter2$ScanRequest;
    .end local v2    # "shouldUpdate":Z
    monitor-exit v0

    .line 622
    return-void

    .line 592
    .restart local v1    # "request":Landroid/media/MediaRouter2$ScanRequest;
    :cond_6b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The token does not match any active scan request"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaRouter2;
    .end local p1    # "token":Landroid/media/MediaRouter2$ScanToken;
    throw v2

    .line 621
    .end local v1    # "request":Landroid/media/MediaRouter2$ScanRequest;
    .restart local p0    # "this":Landroid/media/MediaRouter2;
    .restart local p1    # "token":Landroid/media/MediaRouter2$ScanToken;
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_4c .. :try_end_75} :catchall_73

    throw v1
.end method

.method blacklist createControllerOnHandler(ILandroid/media/RoutingSessionInfo;)V
    .registers 9
    .param p1, "requestId"    # I
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1320
    const/4 v0, 0x0

    .line 1321
    .local v0, "matchingRequest":Landroid/media/MediaRouter2$ControllerCreationRequest;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2$ControllerCreationRequest;

    .line 1322
    .local v2, "request":Landroid/media/MediaRouter2$ControllerCreationRequest;
    iget v3, v2, Landroid/media/MediaRouter2$ControllerCreationRequest;->mRequestId:I

    if-ne v3, p1, :cond_19

    .line 1323
    move-object v0, v2

    .line 1324
    goto :goto_1a

    .line 1326
    .end local v2    # "request":Landroid/media/MediaRouter2$ControllerCreationRequest;
    :cond_19
    goto :goto_7

    .line 1328
    :cond_1a
    :goto_1a
    const-string v1, "MR2"

    if-nez v0, :cond_24

    .line 1329
    const-string v2, "createControllerOnHandler: Ignoring an unknown request."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return-void

    .line 1333
    :cond_24
    iget-object v2, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1334
    iget-object v2, v0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 1337
    .local v2, "requestedRoute":Landroid/media/MediaRoute2Info;
    if-nez p2, :cond_31

    .line 1338
    invoke-direct {p0, v2}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    .line 1339
    return-void

    .line 1340
    :cond_31
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_71

    .line 1341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The session\'s provider ID does not match the requested route\'s. (requested route\'s providerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1345
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actual providerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1347
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1341
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-direct {p0, v2}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    .line 1350
    return-void

    .line 1353
    :cond_71
    iget-object v3, v0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mOldController:Landroid/media/MediaRouter2$RoutingController;

    .line 1356
    .local v3, "oldController":Landroid/media/MediaRouter2$RoutingController;
    invoke-virtual {v3}, Landroid/media/MediaRouter2$RoutingController;->scheduleRelease()Z

    move-result v4

    if-nez v4, :cond_a1

    .line 1357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createControllerOnHandler: Ignoring controller creation for released old controller. oldController="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v1

    if-nez v1, :cond_9d

    .line 1364
    new-instance v1, Landroid/media/MediaRouter2$RoutingController;

    invoke-direct {v1, p0, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->release()V

    .line 1366
    :cond_9d
    invoke-direct {p0, v2}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    .line 1367
    return-void

    .line 1370
    :cond_a1
    invoke-direct {p0, p2}, Landroid/media/MediaRouter2;->addRoutingController(Landroid/media/RoutingSessionInfo;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v1

    .line 1371
    .local v1, "newController":Landroid/media/MediaRouter2$RoutingController;
    invoke-direct {p0, v3, v1}, Landroid/media/MediaRouter2;->notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    .line 1372
    return-void
.end method

.method blacklist dispatchControllerUpdatedIfNeededOnHandler(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1265
    .local p1, "routesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getControllers()Ljava/util/List;

    move-result-object v0

    .line 1266
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter2$RoutingController;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2$RoutingController;

    .line 1268
    .local v2, "controller":Landroid/media/MediaRouter2$RoutingController;
    invoke-virtual {v2}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1269
    .local v4, "selectedRoute":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    .line 1270
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1271
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 1272
    .local v5, "currentRoute":Landroid/media/MediaRoute2Info;
    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRoute2Info;

    .line 1273
    .local v6, "oldRoute":Landroid/media/MediaRoute2Info;
    invoke-virtual {v5, v6}, Landroid/media/MediaRoute2Info;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_52

    .line 1274
    invoke-direct {p0, v2}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    .line 1275
    goto :goto_53

    .line 1278
    .end local v4    # "selectedRoute":Ljava/lang/String;
    .end local v5    # "currentRoute":Landroid/media/MediaRoute2Info;
    .end local v6    # "oldRoute":Landroid/media/MediaRoute2Info;
    :cond_52
    goto :goto_20

    .line 1279
    .end local v2    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :cond_53
    :goto_53
    goto :goto_8

    .line 1281
    :cond_54
    iget-object v1, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1282
    iget-object v1, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1283
    return-void
.end method

.method blacklist dispatchFilteredRoutesUpdatedOnHandler(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1215
    .local p1, "newRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .local v0, "addedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v1, "removedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1219
    .local v2, "changedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    nop

    .line 1220
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda16;

    invoke-direct {v4}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 1222
    .local v3, "newRouteIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 1223
    .local v5, "route":Landroid/media/MediaRoute2Info;
    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRoute2Info;

    .line 1224
    .local v6, "prevRoute":Landroid/media/MediaRoute2Info;
    if-nez v6, :cond_49

    .line 1225
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 1226
    :cond_49
    invoke-virtual {v6, v5}, Landroid/media/MediaRoute2Info;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_52

    .line 1227
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    .end local v6    # "prevRoute":Landroid/media/MediaRoute2Info;
    :cond_52
    :goto_52
    goto :goto_2b

    .line 1231
    :cond_53
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_54
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_76

    .line 1232
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 1233
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    :cond_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 1238
    .end local v4    # "i":I
    :cond_76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 1239
    .restart local v5    # "route":Landroid/media/MediaRoute2Info;
    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_7a

    .line 1241
    :cond_90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_94
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_aa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 1242
    .restart local v5    # "route":Landroid/media/MediaRoute2Info;
    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_94

    .line 1244
    :cond_aa
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ae
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 1245
    .restart local v5    # "route":Landroid/media/MediaRoute2Info;
    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_ae

    .line 1248
    :cond_c4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_cd

    .line 1249
    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->notifyRoutesAdded(Ljava/util/List;)V

    .line 1251
    :cond_cd
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d6

    .line 1252
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->notifyRoutesRemoved(Ljava/util/List;)V

    .line 1254
    :cond_d6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_df

    .line 1255
    invoke-direct {p0, v2}, Landroid/media/MediaRouter2;->notifyRoutesChanged(Ljava/util/List;)V

    .line 1259
    :cond_df
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f4

    .line 1260
    :cond_f1
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyRoutesUpdated(Ljava/util/List;)V

    .line 1262
    :cond_f4
    return-void
.end method

.method public whitelist getAllRoutes()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 948
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClientPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 690
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getController(Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 1150
    const-string v0, "id must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1151
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getControllers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    .line 1152
    .local v1, "controller":Landroid/media/MediaRouter2$RoutingController;
    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1153
    return-object v1

    .line 1155
    .end local v1    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :cond_24
    goto :goto_d

    .line 1156
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getControllers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation

    .line 1168
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getControllers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceSuggestions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;>;"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getDeviceSuggestions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRouteListingPreference()Landroid/media/RouteListingPreference;
    .registers 3

    .line 918
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteListingPreference:Landroid/media/RouteListingPreference;

    monitor-exit v0

    return-object v1

    .line 920
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getRoutes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 964
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getSystemController()Landroid/media/MediaRouter2$RoutingController;
    .registers 2

    .line 1141
    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    return-object v0
.end method

.method blacklist onRequestCreateControllerByManagerOnHandler(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;J)V
    .registers 10
    .param p1, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;
    .param p3, "managerRequestId"    # J

    .line 1455
    const-string v0, "MR2"

    const-string v1, "requestCreateSessionByManager | requestId: %d, oldSession: %s, route: %s"

    .line 1459
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1457
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1455
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1462
    .local v0, "oldSessionId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1463
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v1

    .local v1, "controller":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_2f

    .line 1465
    .end local v1    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :cond_22
    iget-object v1, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1466
    :try_start_25
    iget-object v2, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2$RoutingController;

    .line 1467
    .local v2, "controller":Landroid/media/MediaRouter2$RoutingController;
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_49

    move-object v1, v2

    .line 1469
    .end local v2    # "controller":Landroid/media/MediaRouter2$RoutingController;
    .restart local v1    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :goto_2f
    if-nez v1, :cond_45

    .line 1470
    const-string v2, "MR2"

    const-string v3, "Ignoring requestCreateSessionByManager (requestId: %d) because no controller for old session (id: %s) was found."

    .line 1475
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v4

    .line 1472
    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1470
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return-void

    .line 1478
    :cond_45
    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/media/MediaRouter2;->requestCreateController(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;J)V

    .line 1479
    return-void

    .line 1467
    .end local v1    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2
.end method

.method public whitelist registerControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/MediaRouter2$ControllerCallback;

    .line 1009
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1010
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1012
    new-instance v0, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$ControllerCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    .line 1013
    .local v0, "record":Landroid/media/MediaRouter2$ControllerCallbackRecord;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1014
    const-string v1, "MR2"

    const-string v2, "registerControllerCallback: Ignoring the same callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_1e
    return-void
.end method

.method public blacklist registerDeviceSuggestionsCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$DeviceSuggestionsCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "deviceSuggestionsCallback"    # Landroid/media/MediaRouter2$DeviceSuggestionsCallback;

    .line 780
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 781
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 783
    new-instance v0, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$DeviceSuggestionsCallback;)V

    .line 786
    .local v0, "record":Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 787
    iget-object v1, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    return-void
.end method

.method public whitelist registerRouteCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "routeCallback"    # Landroid/media/MediaRouter2$RouteCallback;
    .param p3, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 714
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 715
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 716
    const-string v0, "preference must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 718
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    .line 719
    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->createRouteCallbackRecord(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)Landroid/media/MediaRouter2$RouteCallbackRecord;

    move-result-object v0

    .line 721
    .local v0, "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 724
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 726
    iget-object v1, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->registerRouteCallback()V

    .line 727
    return-void
.end method

.method public whitelist registerRouteListingPreferenceUpdatedCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/RouteListingPreference;",
            ">;)V"
        }
    .end annotation

    .line 759
    .local p2, "routeListingPreferenceCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/media/RouteListingPreference;>;"
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 760
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 762
    new-instance v0, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 765
    .local v0, "record":Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 766
    iget-object v1, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    return-void
.end method

.method public whitelist registerTransferCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/MediaRouter2$TransferCallback;

    .line 977
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 978
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 980
    new-instance v0, Landroid/media/MediaRouter2$TransferCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$TransferCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    .line 981
    .local v0, "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 982
    const-string v1, "MR2"

    const-string v2, "registerTransferCallback: Ignoring the same callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_1e
    return-void
.end method

.method blacklist releaseControllerOnHandler(Landroid/media/RoutingSessionInfo;)V
    .registers 4
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1405
    if-nez p1, :cond_a

    .line 1406
    const-string v0, "MR2"

    const-string v1, "releaseControllerOnHandler: Ignoring null sessionInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    return-void

    .line 1410
    :cond_a
    nop

    .line 1411
    const-string v0, "releaseControllerOnHandler"

    invoke-direct {p0, p1, v0}, Landroid/media/MediaRouter2;->getMatchingController(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    .line 1413
    .local v0, "matchingController":Landroid/media/MediaRouter2$RoutingController;
    if-eqz v0, :cond_17

    .line 1414
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2$RoutingController;->releaseInternal(Z)V

    .line 1416
    :cond_17
    return-void
.end method

.method blacklist requestCreateController(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;J)V
    .registers 14
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;
    .param p3, "managerRequestId"    # J

    .line 1085
    iget-object v0, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 1087
    .local v2, "requestId":I
    new-instance v1, Landroid/media/MediaRouter2$ControllerCreationRequest;

    move-object v6, p1

    move-object v5, p2

    move-wide v3, p3

    .end local p1    # "controller":Landroid/media/MediaRouter2$RoutingController;
    .end local p2    # "route":Landroid/media/MediaRoute2Info;
    .end local p3    # "managerRequestId":J
    .local v3, "managerRequestId":J
    .local v5, "route":Landroid/media/MediaRoute2Info;
    .local v6, "controller":Landroid/media/MediaRouter2$RoutingController;
    invoke-direct/range {v1 .. v6}, Landroid/media/MediaRouter2$ControllerCreationRequest;-><init>(IJLandroid/media/MediaRoute2Info;Landroid/media/MediaRouter2$RoutingController;)V

    .end local v6    # "controller":Landroid/media/MediaRouter2$RoutingController;
    .restart local p1    # "controller":Landroid/media/MediaRouter2$RoutingController;
    move-object p2, v1

    .line 1089
    .local p2, "request":Landroid/media/MediaRouter2$ControllerCreationRequest;
    iget-object p3, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    iget-object p3, p0, Landroid/media/MediaRouter2;->mOnGetControllerHintsListener:Landroid/media/MediaRouter2$OnGetControllerHintsListener;

    .line 1092
    .local p3, "listener":Landroid/media/MediaRouter2$OnGetControllerHintsListener;
    const/4 p4, 0x0

    .line 1093
    .local p4, "controllerHints":Landroid/os/Bundle;
    if-eqz p3, :cond_29

    .line 1094
    invoke-interface {p3, v5}, Landroid/media/MediaRouter2$OnGetControllerHintsListener;->onGetControllerHints(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    move-result-object p4

    .line 1095
    if-eqz p4, :cond_27

    .line 1096
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p4, v0

    move-object v8, p4

    goto :goto_2a

    .line 1095
    :cond_27
    move-object v8, p4

    goto :goto_2a

    .line 1093
    :cond_29
    move-object v8, p4

    .line 1101
    .end local p4    # "controllerHints":Landroid/os/Bundle;
    .local v8, "controllerHints":Landroid/os/Bundle;
    :goto_2a
    iget-object p4, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 1102
    :try_start_2d
    iget-object v0, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-object v1, v0

    .line 1103
    .local v1, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit p4
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_62

    .line 1104
    if-eqz v1, :cond_60

    .line 1106
    move-object v7, v5

    move-wide v4, v3

    move v3, v2

    move-object v2, v1

    .end local v1    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    .local v2, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    .local v3, "requestId":I
    .local v4, "managerRequestId":J
    .local v7, "route":Landroid/media/MediaRoute2Info;
    :try_start_37
    iget-object v1, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 1110
    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v6

    .line 1106
    invoke-interface/range {v1 .. v8}, Landroid/media/IMediaRouterService;->requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_40} :catch_45

    move-object p4, v2

    move v2, v3

    move-wide v3, v4

    move-object v5, v7

    .line 1120
    .end local v4    # "managerRequestId":J
    .end local v7    # "route":Landroid/media/MediaRoute2Info;
    .local v2, "requestId":I
    .local v3, "managerRequestId":J
    .restart local v5    # "route":Landroid/media/MediaRoute2Info;
    .local p4, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    goto :goto_61

    .line 1113
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    .end local p4    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    .local v2, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    .local v3, "requestId":I
    .restart local v4    # "managerRequestId":J
    .restart local v7    # "route":Landroid/media/MediaRoute2Info;
    :catch_45
    move-exception v0

    move-object p4, v2

    move v2, v3

    move-wide v3, v4

    move-object v5, v7

    .line 1114
    .end local v4    # "managerRequestId":J
    .end local v7    # "route":Landroid/media/MediaRoute2Info;
    .local v0, "ex":Landroid/os/RemoteException;
    .local v2, "requestId":I
    .local v3, "managerRequestId":J
    .restart local v5    # "route":Landroid/media/MediaRoute2Info;
    .restart local p4    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    const-string v1, "MR2"

    const-string v6, "createControllerForTransfer: Failed to request for creating a controller."

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    iget-object v1, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1117
    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-nez v1, :cond_61

    .line 1118
    invoke-direct {p0, v5}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    goto :goto_61

    .line 1104
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local p4    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    .restart local v1    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :cond_60
    move-object p4, v1

    .line 1122
    .end local v1    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    .restart local p4    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :cond_61
    :goto_61
    return-void

    .line 1103
    .end local p4    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit p4
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0
.end method

.method public whitelist requestScan(Landroid/media/MediaRouter2$ScanRequest;)Landroid/media/MediaRouter2$ScanToken;
    .registers 8
    .param p1, "scanRequest"    # Landroid/media/MediaRouter2$ScanRequest;

    .line 546
    const-string v0, "scanRequest must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 547
    new-instance v0, Landroid/media/MediaRouter2$ScanToken;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaRouter2$ScanToken;-><init>(ILandroid/media/MediaRouter2-IA;)V

    .line 549
    .local v0, "token":Landroid/media/MediaRouter2$ScanToken;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 550
    :try_start_14
    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    const/4 v3, 0x1

    if-nez v2, :cond_25

    .line 552
    invoke-virtual {p1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v2

    if-nez v2, :cond_23

    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_59

    if-nez v2, :cond_25

    :cond_23
    move v2, v3

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    .line 554
    .local v2, "shouldUpdate":Z
    :goto_26
    if-eqz v2, :cond_3d

    .line 556
    :try_start_28
    iget-object v4, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    .line 557
    invoke-virtual {p1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 558
    const/4 v5, 0x2

    goto :goto_33

    .line 559
    :cond_32
    move v5, v3

    .line 556
    :goto_33
    invoke-interface {v4, v5}, Landroid/media/MediaRouter2$MediaRouter2Impl;->updateScanningState(I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_36} :catch_37
    .catchall {:try_start_28 .. :try_end_36} :catchall_59

    .line 563
    goto :goto_3d

    .line 561
    :catch_37
    move-exception v3

    .line 562
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_38
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "token":Landroid/media/MediaRouter2$ScanToken;
    .end local p0    # "this":Landroid/media/MediaRouter2;
    .end local p1    # "scanRequest":Landroid/media/MediaRouter2$ScanRequest;
    throw v4

    .line 566
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "token":Landroid/media/MediaRouter2$ScanToken;
    .restart local p0    # "this":Landroid/media/MediaRouter2;
    .restart local p1    # "scanRequest":Landroid/media/MediaRouter2$ScanRequest;
    :cond_3d
    :goto_3d
    invoke-virtual {p1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 567
    iget v4, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    goto :goto_4e

    .line 569
    :cond_49
    iget v4, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    .line 572
    :goto_4e
    iget-object v3, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    invoke-static {v0}, Landroid/media/MediaRouter2$ScanToken;->-$$Nest$fgetmId(Landroid/media/MediaRouter2$ScanToken;)I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 573
    monitor-exit v1

    return-object v0

    .line 574
    .end local v2    # "shouldUpdate":Z
    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_38 .. :try_end_5b} :catchall_59

    throw v2
.end method

.method public blacklist setDeviceSuggestions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/SuggestedDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 892
    .local p1, "suggestedDeviceInfo":Ljava/util/List;, "Ljava/util/List<Landroid/media/SuggestedDeviceInfo;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setDeviceSuggestions(Ljava/util/List;)V

    .line 893
    return-void
.end method

.method public whitelist setOnGetControllerHintsListener(Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/MediaRouter2$OnGetControllerHintsListener;

    .line 1041
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setOnGetControllerHintsListener(Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V

    .line 1042
    return-void
.end method

.method public whitelist setRouteListingPreference(Landroid/media/RouteListingPreference;)V
    .registers 3
    .param p1, "routeListingPreference"    # Landroid/media/RouteListingPreference;

    .line 874
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setRouteListingPreference(Landroid/media/RouteListingPreference;)V

    .line 875
    return-void
.end method

.method public whitelist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .registers 4
    .param p1, "route"    # Landroid/media/MediaRoute2Info;
    .param p2, "volume"    # I

    .line 1191
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1193
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setRouteVolume(Landroid/media/MediaRoute2Info;I)V

    .line 1194
    return-void
.end method

.method public whitelist showSystemOutputSwitcher()Z
    .registers 2

    .line 841
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->showSystemOutputSwitcher()Z

    move-result v0

    return v0
.end method

.method public whitelist startScan()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 495
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->startScan()V

    .line 496
    return-void
.end method

.method public whitelist stop()V
    .registers 2

    .line 1062
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->stop()V

    .line 1063
    return-void
.end method

.method public whitelist stopScan()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 519
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->stopScan()V

    .line 520
    return-void
.end method

.method blacklist syncRoutesOnHandler(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .registers 6
    .param p2, "currentSystemSessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 1198
    .local p1, "currentRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    if-eqz p1, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    if-nez p2, :cond_b

    goto :goto_2f

    .line 1204
    :cond_b
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2;->updateRoutesOnHandler(Ljava/util/List;)V

    .line 1206
    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    .line 1207
    .local v0, "oldInfo":Landroid/media/RoutingSessionInfo;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    .line 1208
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1207
    invoke-static {p2, v2}, Landroid/media/MediaRouter2;->ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 1209
    invoke-virtual {v0, p2}, Landroid/media/RoutingSessionInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1210
    iget-object v1, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    .line 1212
    :cond_2e
    return-void

    .line 1199
    .end local v0    # "oldInfo":Landroid/media/RoutingSessionInfo;
    :cond_2f
    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncRoutesOnHandler: Received wrong data. currentRoutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentSystemSessionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return-void
.end method

.method public whitelist transfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;)V
    .registers 5
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1077
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/media/MediaRouter2$MediaRouter2Impl;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 1078
    return-void
.end method

.method public whitelist transferTo(Landroid/media/MediaRoute2Info;)V
    .registers 3
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 1054
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->transferTo(Landroid/media/MediaRoute2Info;)V

    .line 1055
    return-void
.end method

.method public whitelist unregisterControllerCallback(Landroid/media/MediaRouter2$ControllerCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/MediaRouter2$ControllerCallback;

    .line 1025
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1027
    iget-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$ControllerCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1028
    const-string v0, "MR2"

    const-string v1, "unregisterControllerCallback: Ignoring an unknown callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_1a
    return-void
.end method

.method public blacklist unregisterDeviceSuggestionsCallback(Landroid/media/MediaRouter2$DeviceSuggestionsCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/MediaRouter2$DeviceSuggestionsCallback;

    .line 816
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 818
    iget-object v0, p0, Landroid/media/MediaRouter2;->mDeviceSuggestionsCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$DeviceSuggestionsCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$DeviceSuggestionsCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 820
    const-string v0, "MR2"

    const-string v1, "unregisterDeviceSuggestionsCallback: Ignoring an unknown callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_1a
    return-void
.end method

.method public whitelist unregisterRouteCallback(Landroid/media/MediaRouter2$RouteCallback;)V
    .registers 5
    .param p1, "routeCallback"    # Landroid/media/MediaRouter2$RouteCallback;

    .line 737
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 739
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/media/MediaRouter2$RouteCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 740
    const-string v0, "MR2"

    const-string v1, "unregisterRouteCallback: Ignoring unknown callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 744
    :cond_1b
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->unregisterRouteCallback()V

    .line 745
    return-void
.end method

.method public whitelist unregisterRouteListingPreferenceUpdatedCallback(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/media/RouteListingPreference;",
            ">;)V"
        }
    .end annotation

    .line 798
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/media/RouteListingPreference;>;"
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 800
    iget-object v0, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 802
    const-string v0, "MR2"

    const-string v1, "unregisterRouteListingPreferenceUpdatedCallback: Ignoring an unknown callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_1a
    return-void
.end method

.method public whitelist unregisterTransferCallback(Landroid/media/MediaRouter2$TransferCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/media/MediaRouter2$TransferCallback;

    .line 994
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 996
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$TransferCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 997
    const-string v0, "MR2"

    const-string v1, "unregisterTransferCallback: Ignoring an unknown callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_1a
    return-void
.end method

.method blacklist updateControllerOnHandler(Landroid/media/RoutingSessionInfo;)V
    .registers 4
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1391
    if-nez p1, :cond_a

    .line 1392
    const-string v0, "MR2"

    const-string v1, "updateControllerOnHandler: Ignoring null sessionInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return-void

    .line 1396
    :cond_a
    nop

    .line 1397
    const-string v0, "updateControllerOnHandler"

    invoke-direct {p0, p1, v0}, Landroid/media/MediaRouter2;->getMatchingController(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    .line 1398
    .local v0, "controller":Landroid/media/MediaRouter2$RoutingController;
    if-eqz v0, :cond_19

    .line 1399
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 1400
    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    .line 1402
    :cond_19
    return-void
.end method

.method blacklist updateFilteredRoutesLocked()V
    .registers 5

    .line 1298
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 1300
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->filterRoutesWithCompositePreferenceLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1299
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 1301
    iget-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 1302
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1301
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1306
    iget-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda4;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1307
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1306
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1311
    return-void
.end method

.method blacklist updateRoutesOnHandler(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1286
    .local p1, "newRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1287
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1288
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 1289
    .local v2, "route":Landroid/media/MediaRoute2Info;
    iget-object v3, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    nop

    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_c

    .line 1291
    :cond_23
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    .line 1292
    monitor-exit v0

    .line 1293
    return-void

    .line 1292
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
