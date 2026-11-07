.class public abstract Landroid/telephony/data/QualifiedNetworksService;
.super Landroid/app/Service;
.source "QualifiedNetworksService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;,
        Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;,
        Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;,
        Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
    }
.end annotation


# static fields
.field private static final blacklist QNS_APN_THROTTLE_STATUS_CHANGED:I = 0x5

.field private static final blacklist QNS_CREATE_NETWORK_AVAILABILITY_PROVIDER:I = 0x1

.field private static final blacklist QNS_EMERGENCY_DATA_NETWORK_PREFERRED_TRANSPORT_CHANGED:I = 0x6

.field private static final blacklist QNS_RECONNECT_QUALIFIED_NETWORK:I = 0x8

.field private static final blacklist QNS_REMOVE_ALL_NETWORK_AVAILABILITY_PROVIDERS:I = 0x3

.field private static final blacklist QNS_REMOVE_NETWORK_AVAILABILITY_PROVIDER:I = 0x2

.field private static final blacklist QNS_REQUEST_NETWORK_VALIDATION:I = 0x7

.field private static final blacklist QNS_UPDATE_QUALIFIED_NETWORKS:I = 0x4

.field public static final whitelist QUALIFIED_NETWORKS_SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.data.QualifiedNetworksService"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sFeatureFlag:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;


# instance fields
.field public final blacklist mBinder:Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;

.field private final blacklist mHandler:Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mProviders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandler:Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviders(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/QualifiedNetworksService;->mProviders:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/QualifiedNetworksService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/QualifiedNetworksService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/data/QualifiedNetworksService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    const-class v0, Landroid/telephony/data/QualifiedNetworksService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/QualifiedNetworksService;->TAG:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/telephony/data/QualifiedNetworksService;->sFeatureFlag:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 417
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mProviders:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;-><init>(Landroid/telephony/data/QualifiedNetworksService;Landroid/telephony/data/QualifiedNetworksService-IA;)V

    iput-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mBinder:Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;

    .line 418
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Landroid/telephony/data/QualifiedNetworksService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 419
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 421
    new-instance v0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;-><init>(Landroid/telephony/data/QualifiedNetworksService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandler:Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    .line 422
    const-string v0, "Qualified networks service created"

    invoke-direct {p0, v0}, Landroid/telephony/data/QualifiedNetworksService;->log(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 506
    sget-object v0, Landroid/telephony/data/QualifiedNetworksService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 510
    sget-object v0, Landroid/telephony/data/QualifiedNetworksService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 440
    if-eqz p1, :cond_12

    const-string v0, "android.telephony.data.QualifiedNetworksService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_12

    .line 444
    :cond_f
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mBinder:Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;

    return-object v0

    .line 441
    :cond_12
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/data/QualifiedNetworksService;->loge(Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onCreateNetworkAvailabilityProvider(I)Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 458
    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 450
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandler:Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 451
    const/4 v0, 0x0

    return v0
.end method
