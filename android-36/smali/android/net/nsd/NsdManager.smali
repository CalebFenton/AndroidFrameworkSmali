.class public final Landroid/net/nsd/NsdManager;
.super Ljava/lang/Object;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/NsdManager$OffloadEngineProxy;,
        Landroid/net/nsd/NsdManager$ServiceHandler;,
        Landroid/net/nsd/NsdManager$NsdCallbackImpl;,
        Landroid/net/nsd/NsdManager$RegistrationListener;,
        Landroid/net/nsd/NsdManager$DiscoveryListener;,
        Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;,
        Landroid/net/nsd/NsdManager$ResolveListener;,
        Landroid/net/nsd/NsdManager$ServiceValidationType;,
        Landroid/net/nsd/NsdManager$HostValidationType;,
        Landroid/net/nsd/NsdManager$PublicKeyValidationType;,
        Landroid/net/nsd/NsdManager$ServiceInfoCallback;,
        Landroid/net/nsd/NsdManager$ResolutionFailureCode;,
        Landroid/net/nsd/NsdManager$StopOperationFailureCode;,
        Landroid/net/nsd/NsdManager$ProtocolType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_NSD_STATE_CHANGED:Ljava/lang/String; = "android.net.nsd.STATE_CHANGED"

.field public static final blacklist DAEMON_CLEANUP:I = 0x12

.field public static final blacklist DAEMON_STARTUP:I = 0x13

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o DISCOVER_SERVICES:I = 0x1

.field public static final greylist-max-o DISCOVER_SERVICES_FAILED:I = 0x3

.field public static final greylist-max-o DISCOVER_SERVICES_STARTED:I = 0x2

.field private static final blacklist DNSSEC_PROTOCOL:I = 0x3

.field private static final greylist-max-o EVENT_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_NSD_STATE:Ljava/lang/String; = "nsd_state"

.field public static final whitelist FAILURE_ALREADY_ACTIVE:I = 0x3

.field public static final whitelist FAILURE_BAD_PARAMETERS:I = 0x6

.field public static final whitelist FAILURE_INTERNAL_ERROR:I = 0x0

.field public static final whitelist FAILURE_MAX_LIMIT:I = 0x4

.field public static final whitelist FAILURE_OPERATION_NOT_RUNNING:I = 0x5

.field private static final greylist-max-o FIRST_LISTENER_KEY:I = 0x1

.field public static final blacklist MDNS_DISCOVERY_MANAGER_EVENT:I = 0x17

.field public static final blacklist MDNS_SERVICE_EVENT:I = 0x14

.field public static final whitelist NSD_STATE_DISABLED:I = 0x1

.field public static final whitelist NSD_STATE_ENABLED:I = 0x2

.field public static final whitelist PROTOCOL_DNS_SD:I = 0x1

.field public static final blacklist REGISTER_CLIENT:I = 0x15

.field public static final blacklist REGISTER_OFFLOAD_ENGINE:I = 0x21

.field public static final greylist-max-o REGISTER_SERVICE:I = 0x9

.field public static final blacklist REGISTER_SERVICE_CALLBACK:I = 0x1b

.field public static final blacklist REGISTER_SERVICE_CALLBACK_FAILED:I = 0x1c

.field public static final greylist-max-o REGISTER_SERVICE_FAILED:I = 0xa

.field public static final greylist-max-o REGISTER_SERVICE_SUCCEEDED:I = 0xb

.field public static final greylist-max-o RESOLVE_SERVICE:I = 0xf

.field public static final greylist-max-o RESOLVE_SERVICE_FAILED:I = 0x10

.field public static final greylist-max-o RESOLVE_SERVICE_SUCCEEDED:I = 0x11

.field public static final greylist-max-o SERVICE_FOUND:I = 0x4

.field public static final greylist-max-o SERVICE_LOST:I = 0x5

.field public static final blacklist SERVICE_UPDATED:I = 0x1d

.field public static final blacklist SERVICE_UPDATED_LOST:I = 0x1e

.field public static final greylist-max-o STOP_DISCOVERY:I = 0x6

.field public static final greylist-max-o STOP_DISCOVERY_FAILED:I = 0x7

.field public static final greylist-max-o STOP_DISCOVERY_SUCCEEDED:I = 0x8

.field public static final blacklist STOP_RESOLUTION:I = 0x18

.field public static final blacklist STOP_RESOLUTION_FAILED:I = 0x19

.field public static final blacklist STOP_RESOLUTION_SUCCEEDED:I = 0x1a

.field public static final blacklist SUBTYPE_LABEL_REGEX:Ljava/lang/String; = "_[\\x20-\\x2b\\x2d\\x2f-\\x7e]{1,62}"

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field public static final blacklist TTL_SECONDS_MAX:J = 0x8ca0L

.field public static final blacklist TTL_SECONDS_MIN:J = 0x1eL

.field public static final blacklist TYPE_LABEL_REGEX:Ljava/lang/String; = "_[a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]"

.field public static final blacklist TYPE_REGEX:Ljava/lang/String; = "^(?:(_[\\x20-\\x2b\\x2d\\x2f-\\x7e]{1,62})\\.)?(_[a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\\._(?:tcp|udp))\\.?((?:,_[\\x20-\\x2b\\x2d\\x2f-\\x7e]{1,62})*)$"

.field public static final blacklist UNREGISTER_CLIENT:I = 0x16

.field public static final blacklist UNREGISTER_OFFLOAD_ENGINE:I = 0x22

.field public static final greylist-max-o UNREGISTER_SERVICE:I = 0xc

.field public static final blacklist UNREGISTER_SERVICE_CALLBACK:I = 0x1f

.field public static final blacklist UNREGISTER_SERVICE_CALLBACK_SUCCEEDED:I = 0x20

.field public static final greylist-max-o UNREGISTER_SERVICE_FAILED:I = 0xd

.field public static final greylist-max-o UNREGISTER_SERVICE_SUCCEEDED:I = 0xe


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mDiscoveryMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/nsd/DiscoveryRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutorMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

.field private greylist-max-o mListenerKey:I

.field private final greylist-max-o mListenerMap:Landroid/util/SparseArray;

.field private final greylist-max-o mMapLock:Ljava/lang/Object;

.field private final blacklist mOffloadEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/nsd/NsdManager$OffloadEngineProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPerNetworkDiscoveryMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

.field private final greylist-max-o mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/net/nsd/NsdManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/net/nsd/NsdManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDiscoveryMap(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/net/nsd/NsdManager;->mDiscoveryMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutorMap(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/net/nsd/NsdManager;->mExecutorMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/net/nsd/NsdManager;)Landroid/net/nsd/NsdManager$ServiceHandler;
    .registers 1

    iget-object p0, p0, Landroid/net/nsd/NsdManager;->mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerMap(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMapLock(Landroid/net/nsd/NsdManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceMap(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveListener(Landroid/net/nsd/NsdManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->removeListener(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/nsd/NsdManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNsdServiceInfoType(Landroid/net/nsd/DiscoveryRequest;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/DiscoveryRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 149
    const-class v0, Landroid/net/nsd/NsdManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/nsd/NsdManager;->TAG:Ljava/lang/String;

    .line 338
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    .line 340
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "DISCOVER_SERVICES"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "DISCOVER_SERVICES_STARTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "DISCOVER_SERVICES_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "SERVICE_FOUND"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "SERVICE_LOST"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "STOP_DISCOVERY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "STOP_DISCOVERY_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "STOP_DISCOVERY_SUCCEEDED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "REGISTER_SERVICE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "REGISTER_SERVICE_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "REGISTER_SERVICE_SUCCEEDED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "UNREGISTER_SERVICE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "UNREGISTER_SERVICE_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "UNREGISTER_SERVICE_SUCCEEDED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "RESOLVE_SERVICE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x10

    const-string v2, "RESOLVE_SERVICE_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x11

    const-string v2, "RESOLVE_SERVICE_SUCCEEDED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x12

    const-string v2, "DAEMON_CLEANUP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x13

    const-string v2, "DAEMON_STARTUP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string v2, "MDNS_SERVICE_EVENT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x18

    const-string v2, "STOP_RESOLUTION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x19

    const-string v2, "STOP_RESOLUTION_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x1a

    const-string v2, "STOP_RESOLUTION_SUCCEEDED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x1b

    const-string v2, "REGISTER_SERVICE_CALLBACK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x1c

    const-string v2, "REGISTER_SERVICE_CALLBACK_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x1d

    const-string v2, "SERVICE_UPDATED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x1f

    const-string v2, "UNREGISTER_SERVICE_CALLBACK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x20

    const-string v2, "UNREGISTER_SERVICE_CALLBACK_SUCCEEDED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x17

    const-string v2, "MDNS_DISCOVERY_MANAGER_EVENT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x15

    const-string v2, "REGISTER_CLIENT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const/16 v1, 0x16

    const-string v2, "UNREGISTER_CLIENT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/nsd/INsdManager;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/nsd/INsdManager;

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    .line 390
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    .line 392
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    .line 394
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mDiscoveryMap:Landroid/util/SparseArray;

    .line 396
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mExecutorMap:Landroid/util/SparseArray;

    .line 398
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    .line 400
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mPerNetworkDiscoveryMap:Landroid/util/ArrayMap;

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mOffloadEngines:Ljava/util/ArrayList;

    .line 714
    iput-object p1, p0, Landroid/net/nsd/NsdManager;->mContext:Landroid/content/Context;

    .line 717
    new-instance v0, Landroid/net/nsd/NsdManager$ServiceHandler;

    invoke-static {}, Landroid/net/ConnectivityThread;->getInstanceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/nsd/NsdManager$ServiceHandler;-><init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

    .line 720
    :try_start_44
    new-instance v0, Landroid/net/nsd/NsdManager$NsdCallbackImpl;

    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

    invoke-direct {v0, v1}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;-><init>(Landroid/os/Handler;)V

    const-wide/32 v1, 0x101c8dd4

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/net/nsd/INsdManager;->connect(Landroid/net/connectivity/android/net/nsd/INsdManagerCallback;Z)Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_58} :catch_77

    .line 724
    nop

    .line 730
    const-wide/32 v0, 0xe073e21

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_76

    .line 731
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-nez v0, :cond_76

    .line 733
    :try_start_68
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    invoke-interface {v0}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;->startDaemon()V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6d} :catch_6e

    .line 737
    goto :goto_76

    .line 734
    :catch_6e
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/net/nsd/NsdManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to proactively start daemon"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_76
    :goto_76
    return-void

    .line 722
    :catch_77
    move-exception v0

    .line 723
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to connect to NsdService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o checkListener(Ljava/lang/Object;)V
    .registers 2
    .param p0, "listener"    # Ljava/lang/Object;

    .line 1731
    const-string v0, "listener cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1732
    return-void
.end method

.method static greylist-max-o checkProtocol(I)V
    .registers 3
    .param p0, "protocolType"    # I

    .line 1735
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 1738
    return-void

    .line 1736
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkServiceInfoForRegistration(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 6
    .param p0, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 1857
    const-string v0, "NsdServiceInfo cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1859
    invoke-static {p0}, Landroid/net/nsd/NsdManager;->validateService(Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdManager$ServiceValidationType;

    move-result-object v0

    .line 1860
    .local v0, "serviceValidation":Landroid/net/nsd/NsdManager$ServiceValidationType;
    invoke-static {p0}, Landroid/net/nsd/NsdManager;->validateHost(Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdManager$HostValidationType;

    move-result-object v1

    .line 1861
    .local v1, "hostValidation":Landroid/net/nsd/NsdManager$HostValidationType;
    invoke-static {p0}, Landroid/net/nsd/NsdManager;->validatePublicKey(Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    move-result-object v2

    .line 1863
    .local v2, "publicKeyValidation":Landroid/net/nsd/NsdManager$PublicKeyValidationType;
    sget-object v3, Landroid/net/nsd/NsdManager$ServiceValidationType;->NO_SERVICE:Landroid/net/nsd/NsdManager$ServiceValidationType;

    if-ne v0, v3, :cond_22

    sget-object v3, Landroid/net/nsd/NsdManager$HostValidationType;->DEFAULT_HOST:Landroid/net/nsd/NsdManager$HostValidationType;

    if-eq v1, v3, :cond_1a

    goto :goto_22

    .line 1865
    :cond_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Nothing to register"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1867
    :cond_22
    :goto_22
    sget-object v3, Landroid/net/nsd/NsdManager$PublicKeyValidationType;->NO_KEY:Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    if-ne v2, v3, :cond_43

    .line 1868
    sget-object v3, Landroid/net/nsd/NsdManager$ServiceValidationType;->HAS_SERVICE_ZERO_PORT:Landroid/net/nsd/NsdManager$ServiceValidationType;

    if-eq v0, v3, :cond_3b

    .line 1871
    sget-object v3, Landroid/net/nsd/NsdManager$ServiceValidationType;->NO_SERVICE:Landroid/net/nsd/NsdManager$ServiceValidationType;

    if-ne v0, v3, :cond_43

    sget-object v3, Landroid/net/nsd/NsdManager$HostValidationType;->CUSTOM_HOST_NO_ADDRESS:Landroid/net/nsd/NsdManager$HostValidationType;

    if-eq v1, v3, :cond_33

    goto :goto_43

    .line 1873
    :cond_33
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The host addresses must be specified unless there is a service"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1869
    :cond_3b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The port is missing"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1877
    :cond_43
    :goto_43
    return-void
.end method

.method private static blacklist checkServiceInfoForResolution(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 3
    .param p0, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 1741
    const-string v0, "NsdServiceInfo cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1742
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1745
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1748
    return-void

    .line 1746
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Service type cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1743
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Service name cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getListenerKey(Ljava/lang/Object;)I
    .registers 6
    .param p1, "listener"    # Ljava/lang/Object;

    .line 1216
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkListener(Ljava/lang/Object;)V

    .line 1217
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1218
    :try_start_6
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 1219
    .local v1, "valueIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    .line 1222
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 1220
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener not registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/nsd/NsdManager;
    .end local p1    # "listener":Ljava/lang/Object;
    throw v2

    .line 1223
    .end local v1    # "valueIndex":I
    .restart local p0    # "this":Landroid/net/nsd/NsdManager;
    .restart local p1    # "listener":Ljava/lang/Object;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private static blacklist getNsdServiceInfoType(Landroid/net/nsd/DiscoveryRequest;)Ljava/lang/String;
    .registers 2
    .param p0, "r"    # Landroid/net/nsd/DiscoveryRequest;

    .line 1227
    if-nez p0, :cond_5

    const-string v0, "?"

    return-object v0

    .line 1228
    :cond_5
    invoke-virtual {p0}, Landroid/net/nsd/DiscoveryRequest;->getServiceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getTypeAndSubtypes(Ljava/lang/String;)Landroid/util/Pair;
    .registers 5
    .param p0, "typeWithSubtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1331
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1332
    return-object v0

    .line 1334
    :cond_4
    const-string v1, "^(?:(_[\\x20-\\x2b\\x2d\\x2f-\\x7e]{1,62})\\.)?(_[a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\\._(?:tcp|udp))\\.?((?:,_[\\x20-\\x2b\\x2d\\x2f-\\x7e]{1,62})*)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1335
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_15

    return-object v0

    .line 1337
    :cond_15
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    return-object v0

    .line 1338
    :cond_21
    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist isSubtypeUpdateRequest(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$RegistrationListener;)Z
    .registers 14
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "listener"    # Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 1292
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1293
    :try_start_3
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 1294
    .local v1, "valueIndex":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_f

    .line 1295
    monitor-exit v0

    return v3

    .line 1297
    :cond_f
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1298
    .local v2, "key":I
    iget-object v4, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    .line 1299
    .local v4, "existingService":Landroid/net/nsd/NsdServiceInfo;
    if-nez v4, :cond_21

    .line 1300
    monitor-exit v0

    return v3

    .line 1302
    :cond_21
    nop

    .line 1303
    invoke-virtual {v4}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v5

    .line 1302
    invoke-static {v5}, Landroid/net/nsd/NsdManager;->getTypeAndSubtypes(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 1304
    .local v5, "existingTypeSubtype":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 1305
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v6

    .line 1304
    invoke-static {v6}, Landroid/net/nsd/NsdManager;->getTypeAndSubtypes(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 1306
    .local v6, "newTypeSubtype":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_6b

    if-nez v6, :cond_38

    goto :goto_6b

    .line 1309
    :cond_38
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 1310
    .local v7, "existingHasNoSubtype":Z
    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 1311
    .local v8, "updatedHasNoSubtype":Z
    if-eqz v7, :cond_4e

    if-eqz v8, :cond_4e

    .line 1314
    monitor-exit v0

    return v3

    .line 1317
    :cond_4e
    invoke-virtual {v4}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1318
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    const/4 v3, 0x1

    goto :goto_69

    :cond_68
    nop

    :goto_69
    monitor-exit v0

    .line 1317
    return v3

    .line 1307
    .end local v7    # "existingHasNoSubtype":Z
    .end local v8    # "updatedHasNoSubtype":Z
    :cond_6b
    :goto_6b
    monitor-exit v0

    return v3

    .line 1319
    .end local v1    # "valueIndex":I
    .end local v2    # "key":I
    .end local v4    # "existingService":Landroid/net/nsd/NsdServiceInfo;
    .end local v5    # "existingTypeSubtype":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "newTypeSubtype":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method static synthetic blacklist lambda$registerOffloadEngine$0(Landroid/net/nsd/OffloadEngine;Landroid/net/nsd/NsdManager$OffloadEngineProxy;)Z
    .registers 3
    .param p0, "engine"    # Landroid/net/nsd/OffloadEngine;
    .param p1, "impl"    # Landroid/net/nsd/NsdManager$OffloadEngineProxy;

    .line 459
    invoke-static {p1}, Landroid/net/nsd/NsdManager$OffloadEngineProxy;->-$$Nest$fgetmEngine(Landroid/net/nsd/NsdManager$OffloadEngineProxy;)Landroid/net/nsd/OffloadEngine;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$unregisterOffloadEngine$1(Landroid/net/nsd/OffloadEngine;Landroid/net/nsd/NsdManager$OffloadEngineProxy;)Z
    .registers 3
    .param p0, "engine"    # Landroid/net/nsd/OffloadEngine;
    .param p1, "impl"    # Landroid/net/nsd/NsdManager$OffloadEngineProxy;

    .line 493
    invoke-static {p1}, Landroid/net/nsd/NsdManager$OffloadEngineProxy;->-$$Nest$fgetmEngine(Landroid/net/nsd/NsdManager$OffloadEngineProxy;)Landroid/net/nsd/OffloadEngine;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static greylist-max-o nameOf(I)Ljava/lang/String;
    .registers 3
    .param p0, "event"    # I

    .line 376
    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 378
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 380
    :cond_f
    return-object v0
.end method

.method private greylist-max-o nextListenerKey()I
    .registers 3

    .line 1163
    iget v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    .line 1164
    iget v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    return v0
.end method

.method private blacklist putListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/net/nsd/DiscoveryRequest;)I
    .registers 6
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "discoveryRequest"    # Landroid/net/nsd/DiscoveryRequest;

    .line 1174
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1175
    :try_start_3
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mDiscoveryMap:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2, v1, p3}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1176
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private blacklist putListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdServiceInfo;)I
    .registers 6
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 1168
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1169
    :try_start_3
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2, v1, p3}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1170
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private blacklist putListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/util/SparseArray;Ljava/lang/Object;)I
    .registers 9
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/util/SparseArray<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 1181
    .local p3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p4, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1182
    :try_start_3
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkListener(Ljava/lang/Object;)V

    .line 1184
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 1185
    .local v1, "valueIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_22

    .line 1188
    invoke-direct {p0}, Landroid/net/nsd/NsdManager;->nextListenerKey()I

    move-result v2

    .line 1189
    .local v2, "key":I
    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1190
    invoke-virtual {p3, v2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1191
    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mExecutorMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1192
    monitor-exit v0

    return v2

    .line 1186
    .end local v2    # "key":I
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener already in use"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/nsd/NsdManager;
    .end local p1    # "listener":Ljava/lang/Object;
    .end local p2    # "e":Ljava/util/concurrent/Executor;
    .end local p3    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .end local p4    # "value":Ljava/lang/Object;, "TT;"
    throw v2

    .line 1193
    .end local v1    # "valueIndex":I
    .restart local p0    # "this":Landroid/net/nsd/NsdManager;
    .restart local p1    # "listener":Ljava/lang/Object;
    .restart local p2    # "e":Ljava/util/concurrent/Executor;
    .restart local p3    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .restart local p4    # "value":Ljava/lang/Object;, "TT;"
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private greylist-max-o removeListener(I)V
    .registers 4
    .param p1, "key"    # I

    .line 1207
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1208
    :try_start_3
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1209
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1210
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mDiscoveryMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1211
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mExecutorMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1212
    monitor-exit v0

    .line 1213
    return-void

    .line 1212
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private blacklist updateRegisteredListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdServiceInfo;)I
    .registers 7
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/util/concurrent/Executor;
    .param p3, "s"    # Landroid/net/nsd/NsdServiceInfo;

    .line 1198
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1199
    :try_start_3
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v1

    .line 1200
    .local v1, "key":I
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1201
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mExecutorMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1202
    monitor-exit v0

    .line 1203
    return v1

    .line 1202
    .end local v1    # "key":I
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private static blacklist validateHost(Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdManager$HostValidationType;
    .registers 4
    .param p0, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 1794
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1795
    .local v0, "hasHostname":Z
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getHostAddresses()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1796
    .local v1, "hasHostAddresses":Z
    if-nez v0, :cond_19

    .line 1801
    sget-object v2, Landroid/net/nsd/NsdManager$HostValidationType;->DEFAULT_HOST:Landroid/net/nsd/NsdManager$HostValidationType;

    return-object v2

    .line 1803
    :cond_19
    if-nez v1, :cond_1e

    .line 1804
    sget-object v2, Landroid/net/nsd/NsdManager$HostValidationType;->CUSTOM_HOST_NO_ADDRESS:Landroid/net/nsd/NsdManager$HostValidationType;

    return-object v2

    .line 1806
    :cond_1e
    sget-object v2, Landroid/net/nsd/NsdManager$HostValidationType;->CUSTOM_HOST:Landroid/net/nsd/NsdManager$HostValidationType;

    return-object v2
.end method

.method private static blacklist validatePublicKey(Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdManager$PublicKeyValidationType;
    .registers 6
    .param p0, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 1817
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getPublicKey()[B

    move-result-object v0

    .line 1818
    .local v0, "publicKey":[B
    if-nez v0, :cond_9

    .line 1819
    sget-object v1, Landroid/net/nsd/NsdManager$PublicKeyValidationType;->NO_KEY:Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    return-object v1

    .line 1821
    :cond_9
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_35

    .line 1824
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    .line 1825
    .local v1, "protocol":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    .line 1826
    sget-object v2, Landroid/net/nsd/NsdManager$PublicKeyValidationType;->HAS_KEY:Landroid/net/nsd/NsdManager$PublicKeyValidationType;

    return-object v2

    .line 1828
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The public key\'s protocol ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is invalid. It should be DNSSEC_PROTOCOL (3)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1822
    .end local v1    # "protocol":I
    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The public key should be at least 4 bytes long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist validateService(Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdManager$ServiceValidationType;
    .registers 5
    .param p0, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 1772
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1773
    .local v0, "hasServiceName":Z
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1774
    .local v1, "hasServiceType":Z
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v2

    if-nez v2, :cond_21

    .line 1775
    sget-object v2, Landroid/net/nsd/NsdManager$ServiceValidationType;->NO_SERVICE:Landroid/net/nsd/NsdManager$ServiceValidationType;

    return-object v2

    .line 1777
    :cond_21
    if-eqz v0, :cond_3f

    if-eqz v1, :cond_3f

    .line 1780
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v2

    if-ltz v2, :cond_37

    .line 1783
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v2

    if-nez v2, :cond_34

    .line 1784
    sget-object v2, Landroid/net/nsd/NsdManager$ServiceValidationType;->HAS_SERVICE_ZERO_PORT:Landroid/net/nsd/NsdManager$ServiceValidationType;

    return-object v2

    .line 1786
    :cond_34
    sget-object v2, Landroid/net/nsd/NsdManager$ServiceValidationType;->HAS_SERVICE:Landroid/net/nsd/NsdManager$ServiceValidationType;

    return-object v2

    .line 1781
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid port"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1778
    :cond_3f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The service name or the service type is missing"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist discoverServices(Landroid/net/nsd/DiscoveryRequest;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    .registers 6
    .param p1, "discoveryRequest"    # Landroid/net/nsd/DiscoveryRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 1504
    invoke-direct {p0, p3, p2, p1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/net/nsd/DiscoveryRequest;)I

    move-result v0

    .line 1506
    .local v0, "key":I
    :try_start_4
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    invoke-interface {v1, v0, p1}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;->discoverServices(ILandroid/net/nsd/DiscoveryRequest;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1509
    goto :goto_e

    .line 1507
    :catch_a
    move-exception v1

    .line 1508
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1510
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist discoverServices(Ljava/lang/String;ILandroid/net/Network;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    .registers 8
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "protocolType"    # I
    .param p3, "network"    # Landroid/net/Network;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "listener"    # Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 1466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1469
    new-instance v0, Landroid/net/nsd/DiscoveryRequest$Builder;

    invoke-direct {v0, p2, p1}, Landroid/net/nsd/DiscoveryRequest$Builder;-><init>(ILjava/lang/String;)V

    .line 1470
    invoke-virtual {v0, p3}, Landroid/net/nsd/DiscoveryRequest$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/nsd/DiscoveryRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/nsd/DiscoveryRequest$Builder;->build()Landroid/net/nsd/DiscoveryRequest;

    move-result-object v0

    .line 1471
    .local v0, "request":Landroid/net/nsd/DiscoveryRequest;
    invoke-virtual {p0, v0, p4, p5}, Landroid/net/nsd/NsdManager;->discoverServices(Landroid/net/nsd/DiscoveryRequest;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 1472
    return-void

    .line 1467
    .end local v0    # "request":Landroid/net/nsd/DiscoveryRequest;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Service type cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist discoverServices(Ljava/lang/String;ILandroid/net/NetworkRequest;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    .registers 16
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "protocolType"    # I
    .param p3, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "listener"    # Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 1553
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1556
    const-string v0, "NetworkRequest cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1557
    new-instance v0, Landroid/net/nsd/DiscoveryRequest$Builder;

    invoke-direct {v0, p2, p1}, Landroid/net/nsd/DiscoveryRequest$Builder;-><init>(ILjava/lang/String;)V

    .line 1558
    invoke-virtual {v0}, Landroid/net/nsd/DiscoveryRequest$Builder;->build()Landroid/net/nsd/DiscoveryRequest;

    move-result-object v1

    .line 1560
    .local v1, "discoveryRequest":Landroid/net/nsd/DiscoveryRequest;
    invoke-direct {p0, p5, p4, v1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/net/nsd/DiscoveryRequest;)I

    move-result v2

    .line 1562
    .local v2, "baseListenerKey":I
    new-instance v3, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p4

    move-object v8, p5

    .end local p1    # "serviceType":Ljava/lang/String;
    .end local p2    # "protocolType":I
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "listener":Landroid/net/nsd/NsdManager$DiscoveryListener;
    .local v5, "serviceType":Ljava/lang/String;
    .local v6, "protocolType":I
    .local v7, "executor":Ljava/util/concurrent/Executor;
    .local v8, "listener":Landroid/net/nsd/NsdManager$DiscoveryListener;
    invoke-direct/range {v3 .. v9}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;-><init>(Landroid/net/nsd/NsdManager;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$DiscoveryListener;Landroid/net/nsd/NsdManager-IA;)V

    .line 1565
    .local v3, "discoveryInfo":Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;
    iget-object p1, v4, Landroid/net/nsd/NsdManager;->mPerNetworkDiscoveryMap:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 1566
    :try_start_26
    iget-object p2, v4, Landroid/net/nsd/NsdManager;->mPerNetworkDiscoveryMap:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    invoke-virtual {v3, p3}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->start(Landroid/net/NetworkRequest;)V

    .line 1568
    monitor-exit p1

    .line 1569
    return-void

    .line 1568
    :catchall_34
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_34

    throw p2

    .line 1554
    .end local v1    # "discoveryRequest":Landroid/net/nsd/DiscoveryRequest;
    .end local v2    # "baseListenerKey":I
    .end local v3    # "discoveryInfo":Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;
    .end local v5    # "serviceType":Ljava/lang/String;
    .end local v6    # "protocolType":I
    .end local v7    # "executor":Ljava/util/concurrent/Executor;
    .end local v8    # "listener":Landroid/net/nsd/NsdManager$DiscoveryListener;
    .restart local p1    # "serviceType":Ljava/lang/String;
    .restart local p2    # "protocolType":I
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "listener":Landroid/net/nsd/NsdManager$DiscoveryListener;
    :cond_38
    move-object v5, p1

    move v6, p2

    .end local p1    # "serviceType":Ljava/lang/String;
    .end local p2    # "protocolType":I
    .restart local v5    # "serviceType":Ljava/lang/String;
    .restart local v6    # "protocolType":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Service type cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V
    .registers 10
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "protocolType"    # I
    .param p3, "listener"    # Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 1432
    const/4 v3, 0x0

    move-object v0, v3

    check-cast v0, Landroid/net/Network;

    new-instance v4, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .end local p1    # "serviceType":Ljava/lang/String;
    .end local p2    # "protocolType":I
    .end local p3    # "listener":Landroid/net/nsd/NsdManager$DiscoveryListener;
    .local v1, "serviceType":Ljava/lang/String;
    .local v2, "protocolType":I
    .local v5, "listener":Landroid/net/nsd/NsdManager$DiscoveryListener;
    invoke-virtual/range {v0 .. v5}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/Network;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 1433
    return-void
.end method

.method public whitelist registerOffloadEngine(Ljava/lang/String;JJLjava/util/concurrent/Executor;Landroid/net/nsd/OffloadEngine;)V
    .registers 19
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "offloadType"    # J
    .param p4, "offloadCapability"    # J
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "engine"    # Landroid/net/nsd/OffloadEngine;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 454
    move-object/from16 v1, p7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    new-instance v0, Landroid/net/nsd/NsdManager$OffloadEngineProxy;

    const/4 v2, 0x0

    move-object/from16 v3, p6

    invoke-direct {v0, v3, v1, v2}, Landroid/net/nsd/NsdManager$OffloadEngineProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/nsd/OffloadEngine;Landroid/net/nsd/NsdManager-IA;)V

    move-object v6, v0

    .line 458
    .local v6, "cbImpl":Landroid/net/nsd/NsdManager$OffloadEngineProxy;
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mOffloadEngines:Ljava/util/ArrayList;

    monitor-enter v2

    .line 459
    :try_start_17
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mOffloadEngines:Ljava/util/ArrayList;

    new-instance v4, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda2;-><init>(Landroid/net/nsd/OffloadEngine;)V

    invoke-static {v0, v4}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 462
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mOffloadEngines:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_40

    .line 465
    :try_start_2a
    iget-object v4, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    move-object v5, p1

    move-wide v9, p2

    move-wide v7, p4

    invoke-interface/range {v4 .. v10}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;->registerOffloadEngine(Ljava/lang/String;Landroid/net/connectivity/android/net/nsd/IOffloadEngine;JJ)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_32} :catch_33

    .line 468
    goto :goto_37

    .line 466
    :catch_33
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 469
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void

    .line 460
    :cond_38
    :try_start_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "This engine is already registered"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "cbImpl":Landroid/net/nsd/NsdManager$OffloadEngineProxy;
    .end local p0    # "this":Landroid/net/nsd/NsdManager;
    .end local p1    # "ifaceName":Ljava/lang/String;
    .end local p2    # "offloadType":J
    .end local p4    # "offloadCapability":J
    .end local p6    # "executor":Ljava/util/concurrent/Executor;
    .end local p7    # "engine":Landroid/net/nsd/OffloadEngine;
    throw v0

    .line 463
    .restart local v6    # "cbImpl":Landroid/net/nsd/NsdManager$OffloadEngineProxy;
    .restart local p0    # "this":Landroid/net/nsd/NsdManager;
    .restart local p1    # "ifaceName":Ljava/lang/String;
    .restart local p2    # "offloadType":J
    .restart local p4    # "offloadCapability":J
    .restart local p6    # "executor":Ljava/util/concurrent/Executor;
    .restart local p7    # "engine":Landroid/net/nsd/OffloadEngine;
    :catchall_40
    move-exception v0

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public blacklist registerService(Landroid/net/nsd/AdvertisingRequest;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$RegistrationListener;)V
    .registers 10
    .param p1, "advertisingRequest"    # Landroid/net/nsd/AdvertisingRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 1362
    invoke-virtual {p1}, Landroid/net/nsd/AdvertisingRequest;->getServiceInfo()Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    .line 1363
    .local v0, "serviceInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p1}, Landroid/net/nsd/AdvertisingRequest;->getProtocolType()I

    move-result v1

    .line 1364
    .local v1, "protocolType":I
    invoke-static {v0}, Landroid/net/nsd/NsdManager;->checkServiceInfoForRegistration(Landroid/net/nsd/NsdServiceInfo;)V

    .line 1365
    invoke-static {v1}, Landroid/net/nsd/NsdManager;->checkProtocol(I)V

    .line 1368
    invoke-virtual {p1}, Landroid/net/nsd/AdvertisingRequest;->getFlags()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_20

    .line 1370
    invoke-direct {p0, p3, p2, v0}, Landroid/net/nsd/NsdManager;->updateRegisteredListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v2

    .local v2, "key":I
    goto :goto_24

    .line 1372
    .end local v2    # "key":I
    :cond_20
    invoke-direct {p0, p3, p2, v0}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v2

    .line 1375
    .restart local v2    # "key":I
    :goto_24
    :try_start_24
    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    invoke-interface {v3, v2, p1}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;->registerService(ILandroid/net/nsd/AdvertisingRequest;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 1378
    goto :goto_2e

    .line 1376
    :catch_2a
    move-exception v3

    .line 1377
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1379
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2e
    return-void
.end method

.method public whitelist registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V
    .registers 5
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "protocolType"    # I
    .param p3, "listener"    # Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 1250
    new-instance v0, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILjava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 1251
    return-void
.end method

.method public whitelist registerService(Landroid/net/nsd/NsdServiceInfo;ILjava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$RegistrationListener;)V
    .registers 8
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "protocolType"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 1271
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkServiceInfoForRegistration(Landroid/net/nsd/NsdServiceInfo;)V

    .line 1272
    invoke-static {p2}, Landroid/net/nsd/NsdManager;->checkProtocol(I)V

    .line 1273
    new-instance v0, Landroid/net/nsd/AdvertisingRequest$Builder;

    invoke-direct {v0, p1, p2}, Landroid/net/nsd/AdvertisingRequest$Builder;-><init>(Landroid/net/nsd/NsdServiceInfo;I)V

    .line 1281
    .local v0, "builder":Landroid/net/nsd/AdvertisingRequest$Builder;
    invoke-direct {p0, p1, p4}, Landroid/net/nsd/NsdManager;->isSubtypeUpdateRequest(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$RegistrationListener;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1282
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/nsd/AdvertisingRequest$Builder;->setFlags(J)Landroid/net/nsd/AdvertisingRequest$Builder;

    .line 1284
    :cond_16
    invoke-virtual {v0}, Landroid/net/nsd/AdvertisingRequest$Builder;->build()Landroid/net/nsd/AdvertisingRequest;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/AdvertisingRequest;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 1285
    return-void
.end method

.method public whitelist registerServiceInfoCallback(Landroid/net/nsd/NsdServiceInfo;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$ServiceInfoCallback;)V
    .registers 6
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    .line 1695
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkServiceInfoForResolution(Landroid/net/nsd/NsdServiceInfo;)V

    .line 1696
    invoke-direct {p0, p3, p2, p1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v0

    .line 1698
    .local v0, "key":I
    :try_start_7
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    invoke-interface {v1, v0, p1}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;->registerServiceInfoCallback(ILandroid/net/nsd/NsdServiceInfo;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1701
    goto :goto_11

    .line 1699
    :catch_d
    move-exception v1

    .line 1700
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1702
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public whitelist resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V
    .registers 4
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "listener"    # Landroid/net/nsd/NsdManager$ResolveListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1621
    new-instance v0, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$ResolveListener;)V

    .line 1622
    return-void
.end method

.method public whitelist resolveService(Landroid/net/nsd/NsdServiceInfo;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdManager$ResolveListener;)V
    .registers 6
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/net/nsd/NsdManager$ResolveListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1641
    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkServiceInfoForResolution(Landroid/net/nsd/NsdServiceInfo;)V

    .line 1642
    invoke-direct {p0, p3, p2, p1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v0

    .line 1644
    .local v0, "key":I
    :try_start_7
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    invoke-interface {v1, v0, p1}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1647
    goto :goto_11

    .line 1645
    :catch_d
    move-exception v1

    .line 1646
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1648
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public whitelist stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 1588
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    .line 1590
    .local v0, "id":I
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mPerNetworkDiscoveryMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1591
    :try_start_7
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mPerNetworkDiscoveryMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;

    .line 1592
    .local v2, "info":Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;
    if-eqz v2, :cond_1a

    .line 1593
    invoke-virtual {v2}, Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;->requestStop()V

    .line 1594
    monitor-exit v1

    return-void

    .line 1596
    .end local v2    # "info":Landroid/net/nsd/NsdManager$PerNetworkDiscoveryTracker;
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_26

    .line 1598
    :try_start_1b
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    invoke-interface {v1, v0}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;->stopDiscovery(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    .line 1601
    goto :goto_25

    .line 1599
    :catch_21
    move-exception v1

    .line 1600
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1602
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_25
    return-void

    .line 1596
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public whitelist stopServiceResolution(Landroid/net/nsd/NsdManager$ResolveListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/nsd/NsdManager$ResolveListener;

    .line 1665
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    .line 1667
    .local v0, "id":I
    :try_start_4
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    invoke-interface {v1, v0}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;->stopResolution(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1670
    goto :goto_e

    .line 1668
    :catch_a
    move-exception v1

    .line 1669
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1671
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist unregisterOffloadEngine(Landroid/net/nsd/OffloadEngine;)V
    .registers 6
    .param p1, "engine"    # Landroid/net/nsd/OffloadEngine;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 489
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mOffloadEngines:Ljava/util/ArrayList;

    monitor-enter v0

    .line 492
    :try_start_6
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mOffloadEngines:Ljava/util/ArrayList;

    new-instance v2, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/net/nsd/NsdManager$$ExternalSyntheticLambda1;-><init>(Landroid/net/nsd/OffloadEngine;)V

    invoke-static {v1, v2}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->indexOf(Ljava/util/Collection;Ljava/util/function/Predicate;)I

    move-result v1

    .line 494
    .local v1, "index":I
    if-ltz v1, :cond_27

    .line 497
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mOffloadEngines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/nsd/NsdManager$OffloadEngineProxy;

    .line 498
    .end local v1    # "index":I
    .local v2, "cbImpl":Landroid/net/nsd/NsdManager$OffloadEngineProxy;
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_2f

    .line 501
    :try_start_1c
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    invoke-interface {v0, v2}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;->unregisterOffloadEngine(Landroid/net/connectivity/android/net/nsd/IOffloadEngine;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22

    .line 504
    goto :goto_26

    .line 502
    :catch_22
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void

    .line 495
    .end local v2    # "cbImpl":Landroid/net/nsd/NsdManager$OffloadEngineProxy;
    .restart local v1    # "index":I
    :cond_27
    :try_start_27
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This engine is not registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/nsd/NsdManager;
    .end local p1    # "engine":Landroid/net/nsd/OffloadEngine;
    throw v2

    .line 498
    .end local v1    # "index":I
    .restart local p0    # "this":Landroid/net/nsd/NsdManager;
    .restart local p1    # "engine":Landroid/net/nsd/OffloadEngine;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 1395
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    .line 1397
    .local v0, "id":I
    :try_start_4
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    invoke-interface {v1, v0}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;->unregisterService(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1400
    goto :goto_e

    .line 1398
    :catch_a
    move-exception v1

    .line 1399
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1401
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist unregisterServiceInfoCallback(Landroid/net/nsd/NsdManager$ServiceInfoCallback;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/nsd/NsdManager$ServiceInfoCallback;

    .line 1722
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    .line 1724
    .local v0, "id":I
    :try_start_4
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;

    invoke-interface {v1, v0}, Landroid/net/connectivity/android/net/nsd/INsdServiceConnector;->unregisterServiceInfoCallback(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1727
    goto :goto_e

    .line 1725
    :catch_a
    move-exception v1

    .line 1726
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1728
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
