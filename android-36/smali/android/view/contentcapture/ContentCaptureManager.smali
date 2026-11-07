.class public final Landroid/view/contentcapture/ContentCaptureManager;
.super Ljava/lang/Object;
.source "ContentCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;,
        Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;,
        Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;,
        Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;,
        Landroid/view/contentcapture/ContentCaptureManager$Dumper;,
        Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;,
        Landroid/view/contentcapture/ContentCaptureManager$LoggingLevel;,
        Landroid/view/contentcapture/ContentCaptureManager$DataShareError;
    }
.end annotation


# static fields
.field public static final whitelist DATA_SHARE_ERROR_CONCURRENT_REQUEST:I = 0x2

.field public static final whitelist DATA_SHARE_ERROR_TIMEOUT_INTERRUPTED:I = 0x3

.field public static final whitelist DATA_SHARE_ERROR_UNKNOWN:I = 0x1

.field public static final blacklist DEBUG:Z = false

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_ALLOWLIST_DELAY_MS:J = 0x7530L

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_ALLOWLIST_TIMEOUT_MS:J = 0xfaL

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_AUTO_DISCONNECT_TIMEOUT_MS:J = 0xbb8L

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_BUFFER_SIZE:I = 0x96

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_OPTIONAL_GROUPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_OPTIONAL_GROUPS_CONFIG:Ljava/lang/String; = ""

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_OPTIONAL_GROUPS_THRESHOLD:I = 0x0

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_REQUIRED_GROUPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_CONTENT_PROTECTION_REQUIRED_GROUPS_CONFIG:Ljava/lang/String; = ""

.field public static final blacklist DEFAULT_DISABLE_FLUSH_FOR_VIEW_TREE_APPEARING:Z = false

.field public static final blacklist DEFAULT_ENABLE_CONTENT_CAPTURE_RECEIVER:Z = true

.field public static final blacklist DEFAULT_ENABLE_CONTENT_PROTECTION_RECEIVER:Z = false

.field public static final blacklist DEFAULT_IDLE_FLUSHING_FREQUENCY_MS:I = 0x1388

.field public static final blacklist DEFAULT_LOG_HISTORY_SIZE:I = 0xa

.field public static final blacklist DEFAULT_MAX_BUFFER_SIZE:I = 0x1f4

.field public static final blacklist DEFAULT_TEXT_CHANGE_FLUSHING_FREQUENCY_MS:I = 0x3e8

.field public static final blacklist DEVICE_CONFIG_ENABLE_ACTIVITY_START_ASSIST_CONTENT:Ljava/lang/String; = "enable_activity_start_assist_content"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_ALLOWLIST_DELAY_MS:Ljava/lang/String; = "content_protection_allowlist_delay_ms"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_ALLOWLIST_TIMEOUT_MS:Ljava/lang/String; = "content_protection_allowlist_timeout_ms"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_AUTO_DISCONNECT_TIMEOUT:Ljava/lang/String; = "content_protection_auto_disconnect_timeout_ms"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_BUFFER_SIZE:Ljava/lang/String; = "content_protection_buffer_size"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_OPTIONAL_GROUPS_CONFIG:Ljava/lang/String; = "content_protection_optional_groups_config"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_OPTIONAL_GROUPS_THRESHOLD:Ljava/lang/String; = "content_protection_optional_groups_threshold"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_CONTENT_PROTECTION_REQUIRED_GROUPS_CONFIG:Ljava/lang/String; = "content_protection_required_groups_config"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_DISABLE_FLUSH_FOR_VIEW_TREE_APPEARING:Ljava/lang/String; = "disable_flush_for_view_tree_appearing"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_ENABLE_CONTENT_PROTECTION_RECEIVER:Ljava/lang/String; = "enable_content_protection_receiver"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_IDLE_FLUSH_FREQUENCY:Ljava/lang/String; = "idle_flush_frequency"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_IDLE_UNBIND_TIMEOUT:Ljava/lang/String; = "idle_unbind_timeout"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_LOGGING_LEVEL:Ljava/lang/String; = "logging_level"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_LOG_HISTORY_SIZE:Ljava/lang/String; = "log_history_size"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_MAX_BUFFER_SIZE:Ljava/lang/String; = "max_buffer_size"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_REPORT_LIST_VIEW_CHILDREN:Ljava/lang/String; = "report_list_view_children"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_SERVICE_EXPLICITLY_ENABLED:Ljava/lang/String; = "service_explicitly_enabled"

.field public static final blacklist DEVICE_CONFIG_PROPERTY_TEXT_CHANGE_FLUSH_FREQUENCY:Ljava/lang/String; = "text_change_flush_frequency"

.field public static final blacklist DUMPABLE_NAME:Ljava/lang/String; = "ContentCaptureManager"

.field public static final blacklist LOGGING_LEVEL_DEBUG:I = 0x1

.field public static final blacklist LOGGING_LEVEL_OFF:I = 0x0

.field public static final blacklist LOGGING_LEVEL_VERBOSE:I = 0x2

.field public static final whitelist NO_SESSION_ID:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RESULT_CODE_FALSE:I = 0x2

.field public static final blacklist RESULT_CODE_OK:I = 0x0

.field public static final blacklist RESULT_CODE_SECURITY_EXCEPTION:I = -0x1

.field public static final blacklist RESULT_CODE_TRUE:I = 0x1

.field private static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0x1388

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContentCaptureHandler:Landroid/os/Handler;

.field private final blacklist mContentProtectionEventBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

.field private final blacklist mDataShareAdapterResourceManager:Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

.field private blacklist mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

.field private blacklist mFlags:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

.field final blacklist mOptions:Landroid/content/ContentCaptureOptions;

.field private final blacklist mService:Landroid/view/contentcapture/IContentCaptureManager;

.field private blacklist mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$BGgoAybgPcW5kwRmi8OZB-nNNQo(Landroid/view/contentcapture/ContentCaptureManager;Lcom/android/internal/util/SyncResultReceiver;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureManager;->lambda$getContentCaptureConditions$0(Lcom/android/internal/util/SyncResultReceiver;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hmcKxvla5xwairS_fAjDplB2sLE(Landroid/view/contentcapture/ContentCaptureManager;Lcom/android/internal/util/SyncResultReceiver;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureManager;->lambda$isContentCaptureFeatureEnabled$1(Lcom/android/internal/util/SyncResultReceiver;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/view/contentcapture/ContentCaptureManager;)I
    .registers 1

    iget p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/contentcapture/ContentCaptureManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainSession(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureSession;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/IContentCaptureManager;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 219
    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    .line 472
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureManager;->DEFAULT_CONTENT_PROTECTION_REQUIRED_GROUPS:Ljava/util/List;

    .line 477
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureManager;->DEFAULT_CONTENT_PROTECTION_OPTIONAL_GROUPS:Ljava/util/List;

    .line 476
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/contentcapture/IContentCaptureManager;
    .param p3, "options"    # Landroid/content/ContentCaptureOptions;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    .line 567
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 568
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    .line 569
    const-string/jumbo v0, "service cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/IContentCaptureManager;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    .line 570
    const-string v0, "options cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentCaptureOptions;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    .line 572
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v0, v0, Landroid/content/ContentCaptureOptions;->loggingLevel:I

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureHelper;->setLoggingLevel(I)V

    .line 573
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->disableFlushForViewTreeAppearing:Z

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/ContentCaptureManager;->setFlushViewTreeAppearingEventDisabled(Z)V

    .line 575
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_59

    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_59
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;-><init>(Landroid/view/contentcapture/ContentCaptureManager-IA;)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDataShareAdapterResourceManager:Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    .line 579
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v0, v0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget v0, v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->bufferSize:I

    if-lez v0, :cond_81

    .line 581
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/view/contentcapture/ContentCaptureEvent;

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-object v2, v2, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget v2, v2, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->bufferSize:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentProtectionEventBuffer:Lcom/android/internal/util/RingBuffer;

    goto :goto_83

    .line 586
    :cond_81
    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentProtectionEventBuffer:Lcom/android/internal/util/RingBuffer;

    .line 588
    :goto_83
    return-void
.end method

.method private static blacklist getService()Landroid/view/contentcapture/IContentCaptureManager;
    .registers 1

    .line 1088
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getServiceSettingsComponentName()Landroid/content/ComponentName;
    .registers 8

    .line 712
    nop

    .line 713
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 714
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    .line 716
    :cond_b
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v2

    .line 717
    .local v2, "service":Landroid/view/contentcapture/IContentCaptureManager;
    new-instance v3, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v4, 0x1388

    invoke-direct {v3, v4}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 719
    .local v3, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_16
    invoke-interface {v2, v3}, Landroid/view/contentcapture/IContentCaptureManager;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V

    .line 720
    invoke-virtual {v3}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v4

    .line 721
    .local v4, "resultCode":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_27

    .line 724
    invoke-virtual {v3}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    return-object v5

    .line 722
    :cond_27
    new-instance v5, Ljava/lang/SecurityException;

    invoke-virtual {v3}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/view/contentcapture/IContentCaptureManager;
    .end local v3    # "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    throw v5
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_31} :catch_4b
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_16 .. :try_end_31} :catch_31

    .line 727
    .end local v4    # "resultCode":I
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "service":Landroid/view/contentcapture/IContentCaptureManager;
    .restart local v3    # "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    :catch_31
    move-exception v4

    .line 728
    .local v4, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    sget-object v5, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to get service settings componentName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-object v1

    .line 725
    .end local v4    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_4b
    move-exception v1

    .line 726
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method private synthetic blacklist lambda$getContentCaptureConditions$0(Lcom/android/internal/util/SyncResultReceiver;)V
    .registers 4
    .param p1, "r"    # Lcom/android/internal/util/SyncResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 779
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/view/contentcapture/IContentCaptureManager;->getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$isContentCaptureFeatureEnabled$1(Lcom/android/internal/util/SyncResultReceiver;)V
    .registers 3
    .param p1, "r"    # Lcom/android/internal/util/SyncResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 891
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method private blacklist prepareContentCaptureHandler()Landroid/os/Handler;
    .registers 2

    .line 620
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentCaptureHandler:Landroid/os/Handler;

    if-nez v0, :cond_a

    .line 621
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentCaptureHandler:Landroid/os/Handler;

    .line 623
    :cond_a
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentCaptureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private blacklist prepareUiHandler()Landroid/os/Handler;
    .registers 2

    .line 629
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 630
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mUiHandler:Landroid/os/Handler;

    .line 632
    :cond_e
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static blacklist resetTemporaryService(I)V
    .registers 4
    .param p0, "userId"    # I

    .line 1032
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getService()Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 1033
    .local v0, "service":Landroid/view/contentcapture/IContentCaptureManager;
    if-nez v0, :cond_d

    .line 1034
    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "IContentCaptureManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_d
    :try_start_d
    invoke-interface {v0, p0}, Landroid/view/contentcapture/IContentCaptureManager;->resetTemporaryService(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    .line 1040
    nop

    .line 1041
    return-void

    .line 1038
    :catch_12
    move-exception v1

    .line 1039
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist setDefaultServiceEnabled(IZ)V
    .registers 5
    .param p0, "userId"    # I
    .param p1, "enabled"    # Z

    .line 1076
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getService()Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 1077
    .local v0, "service":Landroid/view/contentcapture/IContentCaptureManager;
    if-nez v0, :cond_d

    .line 1078
    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "IContentCaptureManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_d
    :try_start_d
    invoke-interface {v0, p0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->setDefaultServiceEnabled(IZ)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    .line 1084
    nop

    .line 1085
    return-void

    .line 1082
    :catch_12
    move-exception v1

    .line 1083
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist setTemporaryService(ILjava/lang/String;I)V
    .registers 6
    .param p0, "userId"    # I
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .line 1057
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getService()Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 1058
    .local v0, "service":Landroid/view/contentcapture/IContentCaptureManager;
    if-nez v0, :cond_d

    .line 1059
    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "IContentCaptureManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_d
    :try_start_d
    invoke-interface {v0, p0, p1, p2}, Landroid/view/contentcapture/IContentCaptureManager;->setTemporaryService(ILjava/lang/String;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    .line 1065
    nop

    .line 1066
    return-void

    .line 1063
    :catch_12
    move-exception v1

    .line 1064
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist syncRun(Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;)Lcom/android/internal/util/SyncResultReceiver;
    .registers 6
    .param p1, "r"    # Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;

    .line 961
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 963
    .local v0, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_7
    invoke-interface {p1, v0}, Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;->run(Lcom/android/internal/util/SyncResultReceiver;)V

    .line 964
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v1

    .line 965
    .local v1, "resultCode":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 972
    .end local v1    # "resultCode":I
    nop

    .line 973
    return-object v0

    .line 966
    .restart local v1    # "resultCode":I
    :cond_13
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    .end local p0    # "this":Landroid/view/contentcapture/ContentCaptureManager;
    .end local p1    # "r":Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;
    throw v2
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1d} :catch_26
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_7 .. :try_end_1d} :catch_1d

    .line 970
    .end local v1    # "resultCode":I
    .restart local v0    # "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    .restart local p0    # "this":Landroid/view/contentcapture/ContentCaptureManager;
    .restart local p1    # "r":Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;
    :catch_1d
    move-exception v1

    .line 971
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get syn run result from SyncResultReceiver."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 968
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_26
    move-exception v1

    .line 969
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public blacklist addDumpable(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 978
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    if-nez v0, :cond_c

    .line 979
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/contentcapture/ContentCaptureManager$Dumper;-><init>(Landroid/view/contentcapture/ContentCaptureManager;Landroid/view/contentcapture/ContentCaptureManager-IA;)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    .line 981
    :cond_c
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    .line 982
    return-void
.end method

.method public blacklist flush(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 676
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    .line 677
    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->flush(I)V

    .line 678
    return-void
.end method

.method public whitelist getContentCaptureConditions()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;"
        }
    .end annotation

    .line 776
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 778
    :cond_e
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/contentcapture/ContentCaptureManager;)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureManager;->syncRun(Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;)Lcom/android/internal/util/SyncResultReceiver;

    move-result-object v0

    .line 782
    .local v0, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    nop

    .line 783
    :try_start_18
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableListResult()Ljava/util/ArrayList;

    move-result-object v1

    .line 784
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureHelper;->toSet(Ljava/util/List;)Landroid/util/ArraySet;

    move-result-object v2
    :try_end_20
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_18 .. :try_end_20} :catch_21

    return-object v2

    .line 785
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    :catch_21
    move-exception v1

    .line 786
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get content capture conditions."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getContentProtectionEventBuffer()Lcom/android/internal/util/RingBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;"
        }
    .end annotation

    .line 988
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContentProtectionEventBuffer:Lcom/android/internal/util/RingBuffer;

    return-object v0
.end method

.method public blacklist getFlushViewTreeAppearingEventDisabled()Z
    .registers 3

    .line 871
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    :try_start_3
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 874
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;
    .registers 9

    .line 602
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    :try_start_3
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    if-nez v0, :cond_3a

    .line 604
    new-instance v2, Landroid/view/contentcapture/MainContentCaptureSession;

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    .line 607
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureManager;->prepareUiHandler()Landroid/os/Handler;

    move-result-object v5

    .line 608
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureManager;->prepareContentCaptureHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3f

    move-object v4, p0

    :try_start_16
    invoke-direct/range {v2 .. v7}, Landroid/view/contentcapture/MainContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;Landroid/view/contentcapture/ContentCaptureManager;Landroid/os/Handler;Landroid/os/Handler;Landroid/view/contentcapture/IContentCaptureManager;)V

    iput-object v2, v4, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    .line 611
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_3b

    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMainContentCaptureSession(): created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 603
    :cond_3a
    move-object v4, p0

    .line 613
    :cond_3b
    :goto_3b
    iget-object v0, v4, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    monitor-exit v1

    return-object v0

    .line 614
    :catchall_3f
    move-exception v0

    move-object v4, p0

    :goto_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_43

    throw v0

    :catchall_43
    move-exception v0

    goto :goto_41
.end method

.method public whitelist getServiceComponentName()Landroid/content/ComponentName;
    .registers 5

    .line 688
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 690
    :cond_e
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 692
    .local v0, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    :try_start_15
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v1, v0}, Landroid/view/contentcapture/IContentCaptureManager;->getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    .line 693
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_2a
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_15 .. :try_end_20} :catch_21

    return-object v1

    .line 696
    :catch_21
    move-exception v1

    .line 697
    .local v1, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get service componentName."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 694
    .end local v1    # "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    :catch_2a
    move-exception v1

    .line 695
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isContentCaptureEnabled()Z
    .registers 4

    .line 748
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 751
    :cond_8
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_b
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    .line 753
    .local v2, "mainSession":Landroid/view/contentcapture/ContentCaptureSession;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_19

    .line 756
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/view/contentcapture/ContentCaptureSession;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    .line 758
    :cond_17
    const/4 v0, 0x1

    return v0

    .line 753
    .end local v2    # "mainSession":Landroid/view/contentcapture/ContentCaptureSession;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist isContentCaptureFeatureEnabled()Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 890
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/contentcapture/ContentCaptureManager;)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureManager;->syncRun(Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;)Lcom/android/internal/util/SyncResultReceiver;

    move-result-object v0

    .line 894
    .local v0, "resultReceiver":Lcom/android/internal/util/SyncResultReceiver;
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2

    .line 895
    .local v2, "resultCode":I
    packed-switch v2, :pswitch_data_4a

    .line 901
    sget-object v3, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    goto :goto_17

    .line 899
    :pswitch_14
    return v1

    .line 897
    :pswitch_15
    const/4 v1, 0x1

    return v1

    .line 901
    :goto_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "received invalid result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_a .. :try_end_2e} :catch_2f

    .line 902
    return v1

    .line 904
    .end local v2    # "resultCode":I
    :catch_2f
    move-exception v2

    .line 905
    .local v2, "e":Lcom/android/internal/util/SyncResultReceiver$TimeoutException;
    sget-object v3, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get content capture feature enable status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return v1

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public blacklist onActivityCreated(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "applicationToken"    # Landroid/os/IBinder;
    .param p2, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p3, "activityComponent"    # Landroid/content/ComponentName;

    .line 639
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    .line 640
    :cond_7
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_a
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/view/contentcapture/ContentCaptureSession;->start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 643
    monitor-exit v0

    .line 644
    return-void

    .line 643
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v1
.end method

.method public blacklist onActivityDestroyed()V
    .registers 2

    .line 663
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    .line 664
    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->destroy()V

    .line 665
    return-void
.end method

.method public blacklist onActivityPaused()V
    .registers 2

    .line 656
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    .line 657
    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->notifySessionPaused()V

    .line 658
    return-void
.end method

.method public blacklist onActivityResumed()V
    .registers 2

    .line 649
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    .line 650
    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->notifySessionResumed()V

    .line 651
    return-void
.end method

.method public whitelist removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 917
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    :try_start_3
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 923
    nop

    .line 924
    return-void

    .line 921
    :catch_a
    move-exception v0

    .line 922
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setContentCaptureEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 797
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_29

    .line 798
    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setContentCaptureEnabled(): setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_29
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    if-eqz p1, :cond_35

    .line 804
    :try_start_2e
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    goto :goto_3b

    .line 806
    :cond_35
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    .line 808
    :goto_3b
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    .line 809
    .local v1, "mainSession":Landroid/view/contentcapture/ContentCaptureSession;
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_46

    .line 810
    if-eqz v1, :cond_45

    .line 811
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v1, v0}, Landroid/view/contentcapture/ContentCaptureSession;->setDisabled(Z)Z

    .line 813
    :cond_45
    return-void

    .line 809
    .end local v1    # "mainSession":Landroid/view/contentcapture/ContentCaptureSession;
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public blacklist setFlushViewTreeAppearingEventDisabled(Z)V
    .registers 5
    .param p1, "disabled"    # Z

    .line 852
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_1d

    .line 853
    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFlushViewTreeAppearingEventDisabled(): setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_1d
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    if-eqz p1, :cond_29

    .line 858
    :try_start_22
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    goto :goto_2f

    .line 860
    :cond_29
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    .line 862
    :goto_2f
    monitor-exit v0

    .line 863
    return-void

    .line 862
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist shareData(Landroid/view/contentcapture/DataShareRequest;Ljava/util/concurrent/Executor;Landroid/view/contentcapture/DataShareWriteAdapter;)V
    .registers 8
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "dataShareWriteAdapter"    # Landroid/view/contentcapture/DataShareWriteAdapter;

    .line 941
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    :try_start_9
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    new-instance v1, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDataShareAdapterResourceManager:Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    const/4 v3, 0x0

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/view/contentcapture/DataShareWriteAdapter;Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;Landroid/view/contentcapture/ContentCaptureManager-IA;)V

    invoke-interface {v0, p1, v1}, Landroid/view/contentcapture/IContentCaptureManager;->shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_18

    .line 951
    nop

    .line 952
    return-void

    .line 949
    :catch_18
    move-exception v0

    .line 950
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 821
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_1f

    .line 822
    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWindowAttributes(): window flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_1f
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    move v0, v2

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 829
    .local v0, "flagSecureEnabled":Z
    :goto_2a
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 830
    :try_start_2d
    iget v4, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_33

    move v1, v2

    .line 831
    .local v1, "alreadyDisabledByApp":Z
    :cond_33
    if-eqz v0, :cond_3c

    .line 832
    iget v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    goto :goto_42

    .line 834
    :cond_3c
    iget v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    .line 836
    :goto_42
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/ContentCaptureSession;

    .line 837
    .local v2, "mainSession":Landroid/view/contentcapture/ContentCaptureSession;
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_4d

    .line 840
    if-eqz v2, :cond_4c

    if-nez v1, :cond_4c

    .line 841
    invoke-virtual {v2, v0}, Landroid/view/contentcapture/ContentCaptureSession;->setDisabled(Z)Z

    .line 843
    :cond_4c
    return-void

    .line 837
    .end local v1    # "alreadyDisabledByApp":Z
    .end local v2    # "mainSession":Landroid/view/contentcapture/ContentCaptureSession;
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method
