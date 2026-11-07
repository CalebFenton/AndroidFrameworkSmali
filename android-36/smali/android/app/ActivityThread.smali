.class public final Landroid/app/ActivityThread;
.super Landroid/app/ClientTransactionHandler;
.source "ActivityThread.java"

# interfaces
.implements Landroid/app/ActivityThreadInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$SafeCancellationTransport;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$PurgeIdler;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$DumpResourcesData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$ProviderKey;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$AndroidOs;,
        Landroid/app/ActivityThread$ReceiverList;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x4

.field private static final blacklist BINDER_CALLBACK_THROTTLE:J = 0x2774L

.field private static final blacklist CONTENT_PROVIDER_RETAIN_TIME:J = 0x3e8L

.field private static final blacklist DEBUG_APP_INFO:Z = false

.field private static final greylist-max-o DEBUG_BACKUP:Z = false

.field public static final greylist-max-o DEBUG_BROADCAST:Z = false

.field public static final greylist-max-o DEBUG_CONFIGURATION:Z = false

.field public static final greylist-max-o DEBUG_MEMORY_TRIM:Z = false

.field static final greylist-max-o DEBUG_MESSAGES:Z = false

.field public static final greylist-max-o DEBUG_ORDER:Z = false

.field private static final greylist-max-o DEBUG_PROVIDER:Z = false

.field private static final greylist-max-o DEBUG_RESULTS:Z = false

.field private static final greylist-max-o DEBUG_SERVICE:Z = false

.field private static final blacklist DEBUG_STORE_ENABLED:Z

.field private static final blacklist DEFAULT_FULL_BACKUP_AGENT:Ljava/lang/String; = "android.app.backup.FullBackupAgent"

.field private static final greylist-max-o HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s"

.field private static final greylist-max-o HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field public static final greylist-max-o INVALID_PROC_STATE_SEQ:J = -0x1L

.field private static final blacklist LONG_MESSAGE_THRESHOLD_MS:J

.field private static final greylist-max-o MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final blacklist ONE_ALT_COUNT_COLUMN:Ljava/lang/String; = "%21s %8s %21s %8d"

.field private static final greylist-max-o ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field public static final greylist-max-o PROC_START_SEQ_IDENT:Ljava/lang/String; = "seq="

.field private static final blacklist REQUEST_DIRECT_ACTIONS_RETRY_MAX_COUNT:I = 0x7

.field private static final blacklist REQUEST_DIRECT_ACTIONS_RETRY_TIME_MS:J = 0xc8L

.field public static final greylist-max-o SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final blacklist SERVICE_DONE_EXECUTING_REBIND:I = 0x3

.field public static final greylist-max-o SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final greylist-max-o SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field public static final blacklist SERVICE_DONE_EXECUTING_UNBIND:I = 0x4

.field private static final greylist-max-o SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final greylist-max-o TAG:Ljava/lang/String; = "ActivityThread"

.field private static final blacklist THREE_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d %21s %8d"

.field private static final greylist-max-o TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field private static final blacklist TWO_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s %21s %8s"

.field private static final blacklist VM_PROCESS_STATE_JANK_IMPERCEPTIBLE:I = 0x1

.field private static final blacklist VM_PROCESS_STATE_JANK_PERCEPTIBLE:I = 0x0

.field static final greylist-max-o localLOGV:Z = false

.field private static volatile greylist sCurrentActivityThread:Landroid/app/ActivityThread;

.field private static final greylist-max-o sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field static volatile greylist-max-p sMainThreadHandler:Landroid/os/Handler;

.field static volatile greylist sPackageManager:Landroid/content/pm/IPackageManager;

.field private static volatile blacklist sPermissionManager:Landroid/permission/IPermissionManager;


# instance fields
.field final greylist mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mActivitiesToBeDestroyed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/DestroyActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field private final blacklist mBackupAgentsByUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mBinderCallbackLast:J

.field greylist mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field private blacklist mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field greylist-max-r mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mConfigurationChangedListenerController:Landroid/app/ConfigurationChangedListenerController;

.field private blacklist mConfigurationController:Landroid/app/ConfigurationController;

.field private blacklist mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

.field greylist-max-o mCoreSettings:Landroid/os/Bundle;

.field private final blacklist mCoreSettingsLock:Ljava/lang/Object;

.field greylist-max-r mCurDefaultDisplayDpi:I

.field private final blacklist mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

.field greylist mDensityCompatMode:Z

.field private blacklist mDisplaySystemUiContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field

.field final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field final greylist-max-o mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field greylist-max-o mGcIdlerScheduled:Z

.field final blacklist mGetProviderKeys:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderKey;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mH:Landroid/app/ActivityThread$H;

.field greylist mInitialApplication:Landroid/app/Application;

.field greylist mInstrumentation:Landroid/app/Instrumentation;

.field greylist mInstrumentationAppDir:Ljava/lang/String;

.field greylist-max-o mInstrumentationLibDir:Ljava/lang/String;

.field greylist-max-o mInstrumentationPackageName:Ljava/lang/String;

.field greylist-max-o mInstrumentationSplitAppDirs:[Ljava/lang/String;

.field greylist mInstrumentedAppDir:Ljava/lang/String;

.field greylist-max-o mInstrumentedLibDir:Ljava/lang/String;

.field greylist-max-o mInstrumentedSplitAppDirs:[Ljava/lang/String;

.field blacklist mInstrumentingWithoutRestart:Z

.field final greylist-max-o mLastAssistStructures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/assist/AssistStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mLastProcessState:I

.field blacklist mLastReportedDeviceId:I

.field private greylist-max-o mLastSessionId:I

.field final greylist-max-p mLocalProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mLocalProvidersByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mLooper:Landroid/os/Looper;

.field private greylist-max-o mNetworkBlockSeq:J

.field private final greylist-max-o mNetworkPolicyLock:Ljava/lang/Object;

.field final blacklist mNewActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

.field greylist mNumVisibleActivities:I

.field final greylist-max-o mOnPauseListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final greylist mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPendingAppInfoUpdates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-r mPendingConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mPendingOverrideConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mProfiler:Landroid/app/ActivityThread$Profiler;

.field final greylist mProviderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mProviderRefCountMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

.field blacklist mPurgeIdlerScheduled:Z

.field final greylist-max-o mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteCancellations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/ActivityThread$SafeCancellationTransport;",
            "Landroid/os/CancellationSignal;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mResourcePackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-p mResourcesManager:Landroid/app/ResourcesManager;

.field final greylist mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mServicesData:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$CreateServiceData;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mSomeActivitiesChanged:Z

.field private blacklist mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

.field private blacklist mStartSeq:J

.field private greylist mSystemContext:Landroid/app/ContextImpl;

.field greylist-max-o mSystemThread:Z

.field private final greylist-max-o mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

.field private blacklist mUpdateHttpProxyOnBind:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$4WJ6ycaJHWhLhvg2pL0uW-b1mR0(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->lambda$syncTransferSplashscreenViewTransaction$4(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ER5_VDuGIZMC0J2vqX33KPnkevc(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->lambda$attach$6(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JtANQHbm8_woSrSSrItwPFzx9Rc(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBinderCallbackLast(Landroid/app/ActivityThread;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/ActivityThread;->mBinderCallbackLast:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigurationController(Landroid/app/ActivityThread;)Landroid/app/ConfigurationController;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkPolicyLock(Landroid/app/ActivityThread;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingAppInfoUpdates(Landroid/app/ActivityThread;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mPendingAppInfoUpdates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResourcesManager(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransactionExecutor(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBinderCallbackLast(Landroid/app/ActivityThread;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/ActivityThread;->mBinderCallbackLast:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkBlockSeq(Landroid/app/ActivityThread;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUpdateHttpProxyOnBind(Landroid/app/ActivityThread;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyPendingApplicationInfoChanges(Landroid/app/ActivityThread;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->applyPendingApplicationInfoChanges(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->createSafeCancellationTransport(Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetGetProviderKey(Landroid/app/ActivityThread;Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBindApplication(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCreateBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCreateService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDestroyBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpActivity(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpGfxInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpGfxInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpProvider(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpResources(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpResourcesData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpResources(Landroid/app/ActivityThread$DumpResourcesData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDumpService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleEnterAnimationComplete(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleFinishInstrumentationWithoutRestart(Landroid/app/ActivityThread;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityThread;->handleFinishInstrumentationWithoutRestart()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleInstrumentWithoutRestart(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleInstrumentWithoutRestart(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleLocalVoiceInteractionStarted(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePerformDirectAction(Landroid/app/ActivityThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handlePerformDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleReceiver(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestDirectActions(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRunIsolatedEntryPoint(Landroid/app/ActivityThread;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleServiceArgs(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetContentCaptureOptionsCallback(Landroid/app/ActivityThread;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetContentCaptureOptionsCallback(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetCoreSettings(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStartBinderTracking(Landroid/app/ActivityThread;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityThread;->handleStartBinderTracking()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStopBinderTrackingAndDump(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStopService(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTimeoutService(Landroid/app/ActivityThread;Landroid/os/IBinder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleTimeoutService(Landroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTimeoutServiceForType(Landroid/app/ActivityThread;Landroid/os/IBinder;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleTimeoutServiceForType(Landroid/os/IBinder;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTrimMemory(Landroid/app/ActivityThread;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleUnbindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpurgePendingResources(Landroid/app/ActivityThread;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityThread;->purgePendingResources()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->removeSafeCancellationTransport(Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreportSplashscreenViewShown(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->reportSplashscreenViewShown(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msyncTransferSplashscreenViewTransaction(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->syncTransferSplashscreenViewTransaction(Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mthrowRemoteServiceException(Landroid/app/ActivityThread;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->throwRemoteServiceException(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateUiTranslationState(Landroid/app/ActivityThread;Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/ActivityThread;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG_STORE_ENABLED()Z
    .registers 1

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_STORE_ENABLED:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLONG_MESSAGE_THRESHOLD_MS()J
    .registers 2

    sget-wide v0, Landroid/app/ActivityThread;->LONG_MESSAGE_THRESHOLD_MS:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 374
    invoke-static {}, Lcom/android/internal/os/Flags;->debugStoreEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_STORE_ENABLED:Z

    .line 380
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x7d0

    int-to-long v0, v0

    sput-wide v0, Landroid/app/ActivityThread;->LONG_MESSAGE_THRESHOLD_MS:J

    .line 4964
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor greylist <init>()V
    .registers 4

    .line 3183
    invoke-direct {p0}, Landroid/app/ClientTransactionHandler;-><init>()V

    .line 309
    new-instance v0, Landroid/os/DdmSyncStageUpdater;

    invoke-direct {v0}, Landroid/os/DdmSyncStageUpdater;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

    .line 366
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    .line 371
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/ActivityThread;->mBinderCallbackLast:J

    .line 388
    iput-wide v0, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    .line 400
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread-IA;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 402
    nop

    .line 403
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 404
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 406
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-direct {v0, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    .line 414
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 417
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    .line 425
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingAppInfoUpdates:Landroid/util/ArrayMap;

    .line 429
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 430
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mNewActivities:Ljava/util/ArrayList;

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 436
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 437
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    .line 439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    .line 441
    new-instance v2, Landroid/app/ConfigurationChangedListenerController;

    invoke-direct {v2}, Landroid/app/ConfigurationChangedListenerController;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mConfigurationChangedListenerController:Landroid/app/ConfigurationChangedListenerController;

    .line 447
    iput v0, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    .line 448
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    .line 449
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 464
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    .line 468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 476
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    .line 483
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 484
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 486
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 487
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 488
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 490
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 491
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 493
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 494
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 505
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 508
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 511
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 513
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 518
    new-instance v2, Landroid/app/servertransaction/TransactionExecutor;

    invoke-direct {v2, p0}, Landroid/app/servertransaction/TransactionExecutor;-><init>(Landroid/app/ClientTransactionHandler;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    .line 557
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 560
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 563
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 566
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    .line 573
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    .line 576
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 581
    new-instance v2, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 582
    new-instance v2, Landroid/app/ActivityThread$PurgeIdler;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$PurgeIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    .line 584
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 585
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 591
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 596
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    .line 598
    iput-object v1, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 3184
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3185
    return-void
.end method

.method private blacklist applyPendingApplicationInfoChanges(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6946
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 6947
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingAppInfoUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 6948
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    .line 6949
    if-nez v1, :cond_f

    .line 6950
    return-void

    .line 6952
    :cond_f
    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 6953
    return-void

    .line 6948
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private greylist attach(ZJ)V
    .registers 7
    .param p1, "system"    # Z
    .param p2, "startSeq"    # J

    .line 8731
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    .line 8732
    new-instance v0, Landroid/app/ConfigurationController;

    invoke-direct {v0, p0}, Landroid/app/ConfigurationController;-><init>(Landroid/app/ActivityThreadInternal;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 8733
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 8734
    iput-wide p2, p0, Landroid/app/ActivityThread;->mStartSeq:J

    .line 8735
    iget-object v0, p0, Landroid/app/ActivityThread;->mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

    sget-object v1, Landroid/os/DdmSyncState$Stage;->Attach:Landroid/os/DdmSyncState$Stage;

    invoke-virtual {v0, v1}, Landroid/os/DdmSyncStageUpdater;->next(Landroid/os/DdmSyncState$Stage;)V

    .line 8737
    if-nez p1, :cond_42

    .line 8738
    nop

    .line 8739
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 8738
    const-string v1, "<pre-initialized>"

    invoke-static {v1, v0}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 8740
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 8741
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 8743
    .local v0, "mgr":Landroid/app/IActivityManager;
    :try_start_2d
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p2, p3}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;J)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_3c

    .line 8746
    nop

    .line 8748
    new-instance v1, Landroid/app/ActivityThread$6;

    invoke-direct {v1, p0}, Landroid/app/ActivityThread$6;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    .line 8769
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    goto :goto_50

    .line 8744
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :catch_3c
    move-exception v1

    .line 8745
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 8772
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_42
    nop

    .line 8773
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 8772
    const-string/jumbo v1, "system_process"

    invoke-static {v1, v0}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 8774
    invoke-static {p0}, Landroid/app/ActivityThread;->initializeSystemThread(Landroid/app/ActivityThread;)V

    .line 8777
    :goto_50
    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;-><init>(Landroid/app/ActivityThread;)V

    .line 8796
    .local v0, "configChangedCallback":Landroid/view/ViewRootImpl$ConfigChangedCallback;
    invoke-static {v0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 8797
    return-void
.end method

.method private static greylist-max-o attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .registers 5
    .param p0, "agent"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 4911
    :try_start_0
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 4912
    const/4 v0, 0x1

    return v0

    .line 4913
    :catch_5
    move-exception v0

    .line 4914
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching agent with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4915
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6619
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 6620
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 6621
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6622
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 6623
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_2f

    .line 6626
    :cond_26
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6628
    :goto_2f
    return-void
.end method

.method private greylist-max-o callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "saveState"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 6012
    if-eqz p2, :cond_14

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v0, :cond_14

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v0, :cond_14

    .line 6013
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 6014
    .local v0, "shouldSaveState":Z
    :goto_15
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreP(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    .line 6015
    .local v1, "isPreP":Z
    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    .line 6016
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 6020
    :cond_20
    :try_start_20
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    invoke-virtual {v2, v3, p3}, Landroid/app/Activity;->performStop(ZLjava/lang/String;)V
    :try_end_27
    .catch Landroid/util/SuperNotCalledException; {:try_start_20 .. :try_end_27} :catch_70
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_28

    .line 6030
    goto :goto_33

    .line 6023
    :catch_28
    move-exception v2

    .line 6024
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 6031
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_33
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 6033
    if-eqz v0, :cond_3e

    if-nez v1, :cond_3e

    .line 6034
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 6036
    :cond_3e
    return-void

    .line 6025
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_3f
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6027
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6028
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 6021
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_70
    move-exception v2

    .line 6022
    .local v2, "e":Landroid/util/SuperNotCalledException;
    throw v2
.end method

.method private greylist-max-o checkAndBlockForNetworkAccess()V
    .registers 8

    .line 4353
    iget-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4354
    :try_start_3
    iget-wide v1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_22

    .line 4356
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-wide v5, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    invoke-interface {v1, v5, v6}, Landroid/app/IActivityManager;->waitForNetworkStateUpdate(J)V

    .line 4357
    iput-wide v3, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17
    .catchall {:try_start_b .. :try_end_16} :catchall_24

    goto :goto_18

    .line 4358
    :catch_17
    move-exception v1

    :goto_18
    nop

    .line 4359
    :try_start_19
    invoke-static {}, Landroid/app/Flags;->clearDnsCacheOnNetworkRulesUpdate()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 4364
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 4367
    :cond_22
    monitor-exit v0

    .line 4368
    return-void

    .line 4367
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw v1
.end method

.method static final greylist-max-o cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 6
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p1, "force"    # Z

    .line 5622
    iget-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    .line 5623
    return-void

    .line 5625
    :cond_7
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v0, :cond_35

    .line 5626
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 5627
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 5626
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5628
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 5629
    .local v0, "wtoken":Landroid/os/IBinder;
    if-eqz v0, :cond_35

    .line 5630
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5631
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5630
    const-string v3, "Activity"

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5634
    .end local v0    # "wtoken":Landroid/os/IBinder;
    :cond_35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 5635
    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 5636
    return-void
.end method

.method private greylist-max-o createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4371
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    move-result v6

    .line 4372
    .local v6, "displayId":I
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 4375
    .local v0, "appContext":Landroid/app/ContextImpl;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 4379
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const-string v2, "debug.second-display.pkg"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4380
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_53

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v3, v3, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 4381
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 4382
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_39
    if-ge v5, v4, :cond_53

    aget v7, v3, v5

    .line 4383
    .local v7, "id":I
    if-eqz v7, :cond_50

    .line 4384
    nop

    .line 4385
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v3

    .line 4386
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v0, v3}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/ContextImpl;

    .line 4387
    goto :goto_53

    .line 4382
    .end local v3    # "display":Landroid/view/Display;
    .end local v7    # "id":I
    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 4391
    :cond_53
    :goto_53
    return-object v0
.end method

.method private blacklist createBaseContextForSandboxActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;
    .registers 12
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4401
    const-string v1, "ActivityThread"

    invoke-static {}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;->getInstance()Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;

    move-result-object v2

    .line 4405
    .local v2, "sdkSandboxActivityAuthority":Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;
    const/4 v3, 0x0

    :try_start_7
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;->getActivityContextInfo(Landroid/content/Intent;)Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_d} :catch_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_d} :catch_47
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_3f

    .line 4415
    .local v0, "contextInfo":Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;
    nop

    .line 4417
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    move-result v8

    .line 4418
    .local v8, "displayId":I
    nop

    .line 4419
    invoke-interface {v0}, Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;->getSdkApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 4420
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 4421
    invoke-interface {v0}, Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;->getContextFlags()I

    move-result v4

    .line 4418
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v5

    .line 4423
    .local v5, "sdkApk":Landroid/app/LoadedApk;
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    move-result-object v1

    .line 4427
    .local v1, "activityContext":Landroid/app/ContextImpl;
    iget-object v3, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v6, 0x0

    iget-object v7, v4, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v6, v7}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    .line 4430
    return-object v1

    .line 4412
    .end local v0    # "contextInfo":Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;
    .end local v1    # "activityContext":Landroid/app/ContextImpl;
    .end local v5    # "sdkApk":Landroid/app/LoadedApk;
    .end local v8    # "displayId":I
    :catch_3f
    move-exception v0

    move-object v4, p0

    .line 4413
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Failed to create context for sandbox activity"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4414
    return-object v3

    .line 4409
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_47
    move-exception v0

    move-object v4, p0

    .line 4410
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "SDK customized context flag is disabled"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4411
    return-object v3

    .line 4406
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_4f
    move-exception v0

    move-object v4, p0

    .line 4407
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Passed intent does not match an expected sandbox activity"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4408
    return-object v3
.end method

.method private blacklist createSafeCancellationTransport(Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;
    .registers 4
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2312
    monitor-enter p0

    .line 2313
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 2314
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    .line 2316
    :cond_c
    new-instance v0, Landroid/app/ActivityThread$SafeCancellationTransport;

    invoke-direct {v0, p0, p1}, Landroid/app/ActivityThread$SafeCancellationTransport;-><init>(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)V

    .line 2318
    .local v0, "transport":Landroid/app/ActivityThread$SafeCancellationTransport;
    iget-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2319
    monitor-exit p0

    return-object v0

    .line 2320
    .end local v0    # "transport":Landroid/app/ActivityThread$SafeCancellationTransport;
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private blacklist createSplashScreen(Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
    .registers 13
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p3, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    .param p4, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 4780
    new-instance v0, Landroid/window/SplashScreenView$Builder;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/window/SplashScreenView$Builder;-><init>(Landroid/content/Context;)V

    .line 4781
    .local v0, "builder":Landroid/window/SplashScreenView$Builder;
    invoke-virtual {v0, p3}, Landroid/window/SplashScreenView$Builder;->createFromParcel(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/window/SplashScreenView$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/SplashScreenView$Builder;->build()Landroid/window/SplashScreenView;

    move-result-object v4

    .line 4782
    .local v4, "view":Landroid/window/SplashScreenView;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v4, v1}, Landroid/window/SplashScreenView;->attachHostWindow(Landroid/view/Window;)V

    .line 4783
    invoke-virtual {p2, v4}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    .line 4784
    invoke-virtual {v4}, Landroid/window/SplashScreenView;->requestLayout()V

    .line 4786
    invoke-virtual {v4}, Landroid/window/SplashScreenView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Landroid/app/ActivityThread$1;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "decorView":Lcom/android/internal/policy/DecorView;
    .end local p4    # "startingWindowLeash":Landroid/view/SurfaceControl;
    .local v5, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v6, "decorView":Lcom/android/internal/policy/DecorView;
    .local v7, "startingWindowLeash":Landroid/view/SurfaceControl;
    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4804
    return-void
.end method

.method public static blacklist createSystemActivityThreadForTesting()Landroid/app/ActivityThread;
    .registers 2

    .line 3194
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 3195
    .local v0, "thread":Landroid/app/ActivityThread;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 3196
    invoke-static {v0}, Landroid/app/ActivityThread;->initializeSystemThread(Landroid/app/ActivityThread;)V

    .line 3197
    return-object v0
.end method

.method public static greylist currentActivityThread()Landroid/app/ActivityThread;
    .registers 1

    .line 2913
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static greylist currentApplication()Landroid/app/Application;
    .registers 2

    .line 2948
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2949
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public static blacklist currentAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 2927
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2928
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2929
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 2928
    :goto_16
    return-object v1
.end method

.method public static greylist-max-o currentOpPackageName()Ljava/lang/String;
    .registers 2

    .line 2921
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2922
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2923
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 2922
    :goto_16
    return-object v1
.end method

.method public static greylist currentPackageName()Ljava/lang/String;
    .registers 2

    .line 2934
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2935
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_11

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_11

    .line 2936
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 2935
    :goto_12
    return-object v1
.end method

.method public static greylist currentProcessName()Ljava/lang/String;
    .registers 2

    .line 2941
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2942
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_f

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_f

    .line 2943
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 2942
    :goto_10
    return-object v1
.end method

.method private greylist-max-o deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .registers 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .line 4503
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4504
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4d

    .line 4505
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    .line 4506
    .local v2, "intent":Lcom/android/internal/content/ReferrerIntent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/content/ReferrerIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4507
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4508
    invoke-virtual {v4}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 4507
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/content/ReferrerIntent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4509
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 4510
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 4511
    new-instance v3, Landroid/app/ComponentCaller;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v5, v2, Lcom/android/internal/content/ReferrerIntent;->mCallerToken:Landroid/os/IBinder;

    invoke-direct {v3, v4, v5}, Landroid/app/ComponentCaller;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 4512
    .local v3, "caller":Landroid/app/ComponentCaller;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2, v3}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;Landroid/app/ComponentCaller;)V

    .line 4513
    .end local v3    # "caller":Landroid/app/ComponentCaller;
    goto :goto_4a

    .line 4514
    :cond_43
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    .line 4504
    .end local v2    # "intent":Lcom/android/internal/content/ReferrerIntent;
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4517
    .end local v1    # "i":I
    :cond_4d
    return-void
.end method

.method private greylist-max-o deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .registers 24
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6160
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v1, p1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    .line 6161
    .local v2, "N":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_b6

    .line 6162
    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/ResultInfo;

    .line 6164
    .local v5, "ri":Landroid/app/ResultInfo;
    :try_start_13
    iget-object v0, v5, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v0, :cond_33

    .line 6165
    iget-object v0, v5, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 6166
    iget-object v0, v5, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v6}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6167
    invoke-virtual {v7}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    .line 6166
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 6171
    :cond_33
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->contentUriPermissionApis()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 6172
    new-instance v0, Landroid/app/ComponentCaller;

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v7, v5, Landroid/app/ResultInfo;->mCallerToken:Landroid/os/IBinder;

    invoke-direct {v0, v6, v7}, Landroid/app/ComponentCaller;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    move-object v13, v0

    .line 6173
    .local v13, "caller":Landroid/app/ComponentCaller;
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v9, v5, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v10, v5, Landroid/app/ResultInfo;->mRequestCode:I

    iget v11, v5, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v12, v5, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    move-object/from16 v14, p3

    invoke-virtual/range {v8 .. v14}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Landroid/app/ComponentCaller;Ljava/lang/String;)V

    .line 6175
    .end local v13    # "caller":Landroid/app/ComponentCaller;
    goto :goto_68

    .line 6176
    :cond_53
    iget-object v14, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v15, v5, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v0, v5, Landroid/app/ResultInfo;->mRequestCode:I

    iget v6, v5, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v7, v5, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    move-object/from16 v19, p3

    move/from16 v16, v0

    move/from16 v17, v6

    move-object/from16 v18, v7

    invoke-virtual/range {v14 .. v19}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_68} :catch_6b

    .line 6186
    :goto_68
    move-object/from16 v6, p0

    goto :goto_78

    .line 6179
    :catch_6b
    move-exception v0

    .line 6180
    .local v0, "e":Ljava/lang/Exception;
    move-object/from16 v6, p0

    iget-object v7, v6, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v8, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 6161
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "ri":Landroid/app/ResultInfo;
    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 6181
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "ri":Landroid/app/ResultInfo;
    :cond_7b
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure delivering result "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6183
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 6184
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 6161
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "ri":Landroid/app/ResultInfo;
    :cond_b6
    move-object/from16 v6, p0

    move-object/from16 v4, p2

    .line 6188
    .end local v3    # "i":I
    return-void
.end method

.method public static greylist-max-o dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V
    .registers 54
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "dumpDalvik"    # Z
    .param p3, "dumpSummaryOnly"    # Z
    .param p4, "nativeMax"    # J
    .param p6, "nativeAllocated"    # J
    .param p8, "nativeFree"    # J
    .param p10, "dalvikMax"    # J
    .param p12, "dalvikAllocated"    # J
    .param p14, "dalvikFree"    # J
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3736
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    const-wide v1, 0x10500000004L

    const-wide v3, 0x10500000003L

    const-wide v5, 0x10500000002L

    if-nez p3, :cond_25c

    .line 3737
    const-wide v7, 0x10b00000003L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 3738
    .local v7, "nhToken":J
    move-wide v9, v3

    iget v4, v14, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move-wide v11, v5

    iget v5, v14, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    iget v6, v14, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move-wide v15, v7

    .end local v7    # "nhToken":J
    .local v15, "nhToken":J
    iget v7, v14, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    iget v8, v14, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move-wide/from16 v17, v9

    iget v9, v14, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    iget-boolean v10, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move-wide v12, v11

    iget v11, v14, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move-wide/from16 v19, v12

    iget v12, v14, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    iget v13, v14, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    move-wide/from16 v21, v1

    const-wide v1, 0x10b00000001L

    const-string v3, "Native Heap"

    move-wide/from16 v23, v15

    move-wide/from16 v14, p4

    .end local v15    # "nhToken":J
    .local v23, "nhToken":J
    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3744
    const-wide v1, 0x10500000002L

    invoke-virtual {v0, v1, v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3745
    move-wide/from16 v3, p6

    const-wide v5, 0x10500000003L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3746
    move-wide/from16 v7, p8

    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3747
    move-wide/from16 v11, v23

    .end local v23    # "nhToken":J
    .local v11, "nhToken":J
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3749
    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 3750
    .local v1, "dvToken":J
    move-object/from16 v13, p1

    iget v4, v13, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move-wide/from16 v17, v5

    iget v5, v13, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iget v6, v13, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iget v7, v13, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v8, v13, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    move-wide/from16 v21, v9

    iget v9, v13, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iget-boolean v10, v13, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .end local v11    # "nhToken":J
    .restart local v23    # "nhToken":J
    iget v11, v13, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    iget v12, v13, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    move-object v3, v13

    iget v13, v3, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    move-wide/from16 v25, v1

    .end local v1    # "dvToken":J
    .local v25, "dvToken":J
    const-wide v1, 0x10b00000001L

    const-string v3, "Dalvik Heap"

    const-wide v14, 0x10500000002L

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3756
    move-wide/from16 v1, p10

    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3757
    move-wide/from16 v3, p12

    const-wide v5, 0x10500000003L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3758
    move-wide/from16 v5, p14

    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3759
    move-wide/from16 v7, v25

    .end local v25    # "dvToken":J
    .local v7, "dvToken":J
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3761
    move-object/from16 v9, p1

    iget v10, v9, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 3762
    .local v10, "otherPss":I
    iget v11, v9, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 3763
    .local v11, "otherSwappablePss":I
    iget v12, v9, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 3764
    .local v12, "otherSharedDirty":I
    iget v13, v9, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 3765
    .local v13, "otherPrivateDirty":I
    iget v14, v9, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 3766
    .local v14, "otherSharedClean":I
    iget v15, v9, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 3767
    .local v15, "otherPrivateClean":I
    iget v0, v9, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 3768
    .local v0, "otherSwappedOut":I
    move/from16 v16, v0

    .end local v0    # "otherSwappedOut":I
    .local v16, "otherSwappedOut":I
    iget v0, v9, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 3769
    .local v0, "otherSwappedOutPss":I
    move/from16 v25, v0

    .end local v0    # "otherSwappedOutPss":I
    .local v25, "otherSwappedOutPss":I
    iget v0, v9, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 3771
    .local v0, "otherRss":I
    const/16 v26, 0x0

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    move v14, v0

    move v15, v10

    move/from16 v0, v26

    move/from16 v26, v11

    .end local v10    # "otherPss":I
    .end local v11    # "otherSwappablePss":I
    .end local v12    # "otherSharedDirty":I
    .end local v13    # "otherPrivateDirty":I
    .local v0, "i":I
    .local v14, "otherRss":I
    .local v15, "otherPss":I
    .local v26, "otherSwappablePss":I
    .local v27, "otherSharedDirty":I
    .local v28, "otherPrivateDirty":I
    .local v29, "otherSharedClean":I
    .local v30, "otherPrivateClean":I
    :goto_e6
    const/16 v10, 0x11

    if-ge v0, v10, :cond_168

    .line 3772
    invoke-virtual {v9, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v4

    .line 3773
    .local v4, "myPss":I
    invoke-virtual {v9, v0}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v5

    .line 3774
    .local v5, "mySwappablePss":I
    invoke-virtual {v9, v0}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v6

    .line 3775
    .local v6, "mySharedDirty":I
    move-wide v10, v7

    .end local v7    # "dvToken":J
    .local v10, "dvToken":J
    invoke-virtual {v9, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v7

    .line 3776
    .local v7, "myPrivateDirty":I
    invoke-virtual {v9, v0}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v8

    .line 3777
    .local v8, "mySharedClean":I
    invoke-virtual {v9, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v3

    .line 3778
    .local v3, "myPrivateClean":I
    move-wide v12, v10

    .end local v10    # "dvToken":J
    .local v12, "dvToken":J
    invoke-virtual {v9, v0}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v11

    .line 3779
    .local v11, "mySwappedOut":I
    move-wide/from16 v31, v12

    .end local v12    # "dvToken":J
    .local v31, "dvToken":J
    invoke-virtual {v9, v0}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v12

    .line 3780
    .local v12, "mySwappedOutPss":I
    invoke-virtual {v9, v0}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v13

    .line 3781
    .local v13, "myRss":I
    if-nez v4, :cond_12d

    if-nez v6, :cond_12d

    if-nez v7, :cond_12d

    if-nez v8, :cond_12d

    if-nez v3, :cond_12d

    if-nez v13, :cond_12d

    .line 3783
    iget-boolean v10, v9, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_124

    move v10, v12

    goto :goto_125

    :cond_124
    move v10, v11

    :goto_125
    if-eqz v10, :cond_128

    goto :goto_12d

    :cond_128
    move/from16 v33, v0

    move v0, v14

    move-object v14, v9

    goto :goto_159

    .line 3784
    :cond_12d
    :goto_12d
    nop

    .line 3785
    move v10, v3

    .end local v3    # "myPrivateClean":I
    .local v10, "myPrivateClean":I
    invoke-static {v0}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v33, v10

    .end local v10    # "myPrivateClean":I
    .local v33, "myPrivateClean":I
    iget-boolean v10, v9, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3784
    const-wide v1, 0x20b00000005L

    move/from16 v34, v14

    move-object v14, v9

    move/from16 v9, v33

    move/from16 v33, v0

    move-object/from16 v0, p0

    .end local v0    # "i":I
    .end local v14    # "otherRss":I
    .local v9, "myPrivateClean":I
    .local v33, "i":I
    .local v34, "otherRss":I
    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3790
    sub-int/2addr v15, v4

    .line 3791
    sub-int v26, v26, v5

    .line 3792
    sub-int v27, v27, v6

    .line 3793
    sub-int v28, v28, v7

    .line 3794
    sub-int v29, v29, v8

    .line 3795
    sub-int v30, v30, v9

    .line 3796
    sub-int v16, v16, v11

    .line 3797
    sub-int v25, v25, v12

    .line 3798
    sub-int v0, v34, v13

    .line 3771
    .end local v4    # "myPss":I
    .end local v5    # "mySwappablePss":I
    .end local v6    # "mySharedDirty":I
    .end local v7    # "myPrivateDirty":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "myPrivateClean":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "mySwappedOutPss":I
    .end local v13    # "myRss":I
    .end local v34    # "otherRss":I
    .local v0, "otherRss":I
    :goto_159
    add-int/lit8 v1, v33, 0x1

    move-wide/from16 v3, p12

    move-wide/from16 v5, p14

    move-object v9, v14

    move-wide/from16 v7, v31

    move v14, v0

    move v0, v1

    move-wide/from16 v1, p10

    .end local v33    # "i":I
    .local v1, "i":I
    goto/16 :goto_e6

    .end local v1    # "i":I
    .end local v31    # "dvToken":J
    .local v0, "i":I
    .local v7, "dvToken":J
    .restart local v14    # "otherRss":I
    :cond_168
    move/from16 v33, v0

    move-wide/from16 v31, v7

    move/from16 v34, v14

    move-object v14, v9

    .line 3802
    .end local v0    # "i":I
    .end local v7    # "dvToken":J
    .end local v14    # "otherRss":I
    .restart local v31    # "dvToken":J
    .restart local v34    # "otherRss":I
    const-string v3, "Unknown"

    iget-boolean v10, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-wide v1, 0x10b00000006L

    move-object/from16 v0, p0

    move v4, v15

    move/from16 v11, v16

    move/from16 v12, v25

    move/from16 v5, v26

    move/from16 v6, v27

    move/from16 v7, v28

    move/from16 v8, v29

    move/from16 v9, v30

    move/from16 v13, v34

    .end local v15    # "otherPss":I
    .end local v16    # "otherSwappedOut":I
    .end local v25    # "otherSwappedOutPss":I
    .end local v26    # "otherSwappablePss":I
    .end local v27    # "otherSharedDirty":I
    .end local v28    # "otherPrivateDirty":I
    .end local v29    # "otherSharedClean":I
    .end local v30    # "otherPrivateClean":I
    .end local v34    # "otherRss":I
    .local v4, "otherPss":I
    .local v5, "otherSwappablePss":I
    .local v6, "otherSharedDirty":I
    .local v7, "otherPrivateDirty":I
    .local v8, "otherSharedClean":I
    .local v9, "otherPrivateClean":I
    .local v11, "otherSwappedOut":I
    .local v12, "otherSwappedOutPss":I
    .local v13, "otherRss":I
    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3806
    .end local v4    # "otherPss":I
    .end local v5    # "otherSwappablePss":I
    .end local v6    # "otherSharedDirty":I
    .end local v7    # "otherPrivateDirty":I
    .end local v8    # "otherSharedClean":I
    .end local v9    # "otherPrivateClean":I
    .end local v11    # "otherSwappedOut":I
    .end local v12    # "otherSwappedOutPss":I
    .end local v13    # "otherRss":I
    .restart local v15    # "otherPss":I
    .restart local v16    # "otherSwappedOut":I
    .restart local v25    # "otherSwappedOutPss":I
    .restart local v26    # "otherSwappablePss":I
    .restart local v27    # "otherSharedDirty":I
    .restart local v28    # "otherPrivateDirty":I
    .restart local v29    # "otherSharedClean":I
    .restart local v30    # "otherPrivateClean":I
    .restart local v34    # "otherRss":I
    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 3807
    .local v1, "tToken":J
    nop

    .line 3808
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v5

    .line 3809
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v6

    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v7

    .line 3810
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v8

    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v9

    iget-boolean v10, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3811
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v11

    .line 3812
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v12

    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v13

    .line 3807
    move-wide/from16 v35, v1

    .end local v1    # "tToken":J
    .local v35, "tToken":J
    const-wide v1, 0x10b00000001L

    const-string v3, "TOTAL"

    move/from16 v33, v15

    move-wide/from16 v14, v35

    .end local v15    # "otherPss":I
    .end local v35    # "tToken":J
    .local v14, "tToken":J
    .local v33, "otherPss":I
    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3813
    add-long v1, p4, p10

    const-wide v11, 0x10500000002L

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3815
    add-long v1, p6, p12

    const-wide v5, 0x10500000003L

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3817
    add-long v1, p8, p14

    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3819
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3821
    if-eqz p2, :cond_258

    .line 3822
    const/16 v1, 0x11

    .line 3823
    .local v1, "i":I
    :goto_1f3
    const/16 v2, 0x20

    if-ge v1, v2, :cond_251

    .line 3825
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v4

    .line 3826
    .local v4, "myPss":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v5

    .line 3827
    .local v5, "mySwappablePss":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v6

    .line 3828
    .local v6, "mySharedDirty":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v7

    .line 3829
    .local v7, "myPrivateDirty":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v8

    .line 3830
    .local v8, "mySharedClean":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v9

    .line 3831
    .local v9, "myPrivateClean":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v11

    .line 3832
    .local v11, "mySwappedOut":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v12

    .line 3833
    .local v12, "mySwappedOutPss":I
    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v13

    .line 3834
    .local v13, "myRss":I
    if-nez v4, :cond_237

    if-nez v6, :cond_237

    if-nez v7, :cond_237

    if-nez v8, :cond_237

    if-nez v9, :cond_237

    .line 3836
    iget-boolean v3, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_22d

    move v3, v12

    goto :goto_22e

    :cond_22d
    move v3, v11

    :goto_22e
    if-eqz v3, :cond_231

    goto :goto_237

    :cond_231
    move/from16 v35, v1

    move-wide/from16 v36, v14

    move-object v14, v2

    goto :goto_24c

    .line 3837
    :cond_237
    :goto_237
    nop

    .line 3838
    invoke-static {v1}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3837
    move/from16 v35, v1

    .end local v1    # "i":I
    .local v35, "i":I
    const-wide v1, 0x20b00000008L

    move-wide/from16 v36, v14

    move-object/from16 v14, p1

    .end local v14    # "tToken":J
    .local v36, "tToken":J
    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3824
    .end local v4    # "myPss":I
    .end local v5    # "mySwappablePss":I
    .end local v6    # "mySharedDirty":I
    .end local v7    # "myPrivateDirty":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "myPrivateClean":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "mySwappedOutPss":I
    .end local v13    # "myRss":I
    :goto_24c
    add-int/lit8 v1, v35, 0x1

    move-wide/from16 v14, v36

    .end local v35    # "i":I
    .restart local v1    # "i":I
    goto :goto_1f3

    .line 3823
    .end local v36    # "tToken":J
    .restart local v14    # "tToken":J
    :cond_251
    move/from16 v35, v1

    move-wide/from16 v36, v14

    move-object/from16 v14, p1

    .end local v1    # "i":I
    .end local v14    # "tToken":J
    .restart local v35    # "i":I
    .restart local v36    # "tToken":J
    goto :goto_25c

    .line 3821
    .end local v35    # "i":I
    .end local v36    # "tToken":J
    .restart local v14    # "tToken":J
    :cond_258
    move-wide/from16 v36, v14

    move-object/from16 v14, p1

    .line 3847
    .end local v14    # "tToken":J
    .end local v16    # "otherSwappedOut":I
    .end local v23    # "nhToken":J
    .end local v25    # "otherSwappedOutPss":I
    .end local v26    # "otherSwappablePss":I
    .end local v27    # "otherSharedDirty":I
    .end local v28    # "otherPrivateDirty":I
    .end local v29    # "otherSharedClean":I
    .end local v30    # "otherPrivateClean":I
    .end local v31    # "dvToken":J
    .end local v33    # "otherPss":I
    .end local v34    # "otherRss":I
    :cond_25c
    :goto_25c
    const-wide v1, 0x10b00000009L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 3848
    .local v1, "asToken":J
    nop

    .line 3849
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v3

    .line 3848
    const-wide v4, 0x10500000001L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3850
    nop

    .line 3851
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v3

    .line 3850
    const-wide v11, 0x10500000002L

    invoke-virtual {v0, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3852
    nop

    .line 3853
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v3

    .line 3852
    const-wide v5, 0x10500000003L

    invoke-virtual {v0, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3854
    nop

    .line 3855
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v3

    .line 3854
    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3856
    nop

    .line 3857
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v3

    .line 3856
    const-wide v4, 0x10500000005L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3858
    nop

    .line 3859
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v3

    .line 3858
    const-wide v4, 0x10500000006L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3860
    nop

    .line 3861
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v3

    .line 3860
    const-wide v4, 0x10500000007L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3862
    iget-boolean v3, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-wide v4, 0x10500000008L

    if-eqz v3, :cond_2d2

    .line 3863
    nop

    .line 3864
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v3

    .line 3863
    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2da

    .line 3866
    :cond_2d2
    nop

    .line 3867
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v3

    .line 3866
    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3869
    :goto_2da
    nop

    .line 3870
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeapRss()I

    move-result v3

    .line 3869
    const-wide v4, 0x1050000000aL

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3871
    nop

    .line 3872
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeapRss()I

    move-result v3

    .line 3871
    const-wide v4, 0x1050000000bL

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3873
    nop

    .line 3874
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryCodeRss()I

    move-result v3

    .line 3873
    const-wide v4, 0x1050000000cL

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3875
    nop

    .line 3876
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryStackRss()I

    move-result v3

    .line 3875
    const-wide v4, 0x1050000000dL

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3877
    nop

    .line 3878
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphicsRss()I

    move-result v3

    .line 3877
    const-wide v4, 0x1050000000eL

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3879
    nop

    .line 3880
    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getSummaryUnknownRss()I

    move-result v3

    .line 3879
    const-wide v4, 0x1050000000fL

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3882
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3883
    return-void
.end method

.method public static greylist-max-o dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    .registers 68
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "checkin"    # Z
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "pid"    # I
    .param p7, "processName"    # Ljava/lang/String;
    .param p8, "nativeMax"    # J
    .param p10, "nativeAllocated"    # J
    .param p12, "nativeFree"    # J
    .param p14, "dalvikMax"    # J
    .param p16, "dalvikAllocated"    # J
    .param p18, "dalvikFree"    # J
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3408
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p8

    move-wide/from16 v4, p10

    move-wide/from16 v6, p12

    move-wide/from16 v8, p14

    move-wide/from16 v10, p16

    move-wide/from16 v12, p18

    if-eqz p2, :cond_202

    .line 3413
    const/4 v15, 0x4

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const/16 v15, 0x2c

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 3414
    move/from16 v14, p6

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 3415
    move-object/from16 v14, p7

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 3418
    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 3419
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 3420
    const-string v15, "N/A,"

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3421
    add-long v2, p8, v8

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3424
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3425
    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3426
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3427
    add-long v3, p10, v10

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3430
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3431
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3432
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3433
    add-long v3, v6, v12

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3436
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3437
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3438
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3439
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3442
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3443
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3444
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3445
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3448
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3449
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3450
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3451
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3454
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3455
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3456
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3457
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3460
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3461
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3462
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3463
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3466
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3467
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3468
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3469
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3472
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3473
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3474
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3475
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3478
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_189

    .line 3479
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3480
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3481
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 3482
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_195

    .line 3484
    :cond_189
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3485
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3486
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3487
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3491
    :goto_195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_196
    const/16 v3, 0x11

    if-ge v2, v3, :cond_201

    .line 3492
    invoke-static {v2}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3493
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3494
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3495
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3496
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3497
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3498
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3499
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3500
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_1fb

    .line 3501
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1fe

    .line 3503
    :cond_1fb
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3491
    :goto_1fe
    add-int/lit8 v2, v2, 0x1

    goto :goto_196

    .line 3506
    .end local v2    # "i":I
    :cond_201
    return-void

    .line 3509
    :cond_202
    move-object/from16 v14, p7

    const-string v2, " "

    if-nez p5, :cond_6a6

    .line 3510
    const-string v3, "SwapPss"

    const-string v4, "Swap"

    const-string v5, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const-string v15, "%13s %8s %8s %8s %8s %8s %8s %8s %8s"

    if-eqz p3, :cond_313

    .line 3511
    nop

    .line 3512
    move-object/from16 v17, v3

    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_21c

    move-object/from16 v25, v17

    goto :goto_21e

    :cond_21c
    move-object/from16 v25, v4

    :goto_21e
    const-string v28, "Heap"

    const-string v29, "Heap"

    const-string v18, ""

    const-string v19, "Pss"

    const-string v20, "Pss"

    const-string v21, "Shared"

    const-string v22, "Private"

    const-string v23, "Shared"

    const-string v24, "Private"

    const-string v26, "Rss"

    const-string v27, "Heap"

    filled-new-array/range {v18 .. v29}, [Ljava/lang/Object;

    move-result-object v3

    .line 3511
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3514
    const-string v27, "Alloc"

    const-string v28, "Free"

    const-string v17, ""

    const-string v18, "Total"

    const-string v19, "Clean"

    const-string v20, "Dirty"

    const-string v21, "Dirty"

    const-string v22, "Clean"

    const-string v23, "Clean"

    const-string v24, "Dirty"

    const-string v25, "Total"

    const-string v26, "Size"

    filled-new-array/range {v17 .. v28}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3517
    const-string v27, "------"

    const-string v28, "------"

    const-string v17, ""

    const-string v18, "------"

    const-string v19, "------"

    const-string v20, "------"

    const-string v21, "------"

    const-string v22, "------"

    const-string v23, "------"

    const-string v24, "------"

    const-string v25, "------"

    const-string v26, "------"

    filled-new-array/range {v17 .. v28}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3519
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 3520
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 3521
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 3522
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_2a4

    .line 3523
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_2a6

    :cond_2a4
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 3522
    :goto_2a6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 3524
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v17, "Native Heap"

    filled-new-array/range {v17 .. v28}, [Ljava/lang/Object;

    move-result-object v3

    .line 3519
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3525
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 3526
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 3527
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 3528
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_2f0

    .line 3529
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_2f2

    :cond_2f0
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 3528
    :goto_2f2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 3530
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v17, "Dalvik Heap"

    filled-new-array/range {v17 .. v28}, [Ljava/lang/Object;

    move-result-object v3

    .line 3525
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3dd

    .line 3532
    :cond_313
    move-object/from16 v17, v3

    .line 3533
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_31c

    move-object/from16 v22, v17

    goto :goto_31e

    :cond_31c
    move-object/from16 v22, v4

    :goto_31e
    const-string v25, "Heap"

    const-string v26, "Heap"

    const-string v18, ""

    const-string v19, "Pss"

    const-string v20, "Private"

    const-string v21, "Private"

    const-string v23, "Rss"

    const-string v24, "Heap"

    filled-new-array/range {v18 .. v26}, [Ljava/lang/Object;

    move-result-object v3

    .line 3532
    invoke-static {v0, v15, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3535
    const-string v24, "Alloc"

    const-string v25, "Free"

    const-string v17, ""

    const-string v18, "Total"

    const-string v19, "Dirty"

    const-string v20, "Clean"

    const-string v21, "Dirty"

    const-string v22, "Total"

    const-string v23, "Size"

    filled-new-array/range {v17 .. v25}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v15, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3537
    const-string v25, "------"

    const-string v26, "------"

    const-string v17, ""

    const-string v18, "------"

    const-string v19, "------"

    const-string v20, "------"

    const-string v21, "------"

    const-string v22, "------"

    const-string v23, "------"

    const-string v24, "------"

    filled-new-array/range {v17 .. v26}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v15, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3539
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 3540
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 3541
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 3542
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_382

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_384

    .line 3543
    :cond_382
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 3542
    :goto_384
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 3543
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 3544
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v17, "Native Heap"

    filled-new-array/range {v17 .. v25}, [Ljava/lang/Object;

    move-result-object v3

    .line 3539
    invoke-static {v0, v15, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3545
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 3546
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 3547
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 3548
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_3bc

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_3be

    .line 3549
    :cond_3bc
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 3548
    :goto_3be
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget v3, v1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 3549
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 3550
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v17, "Dalvik Heap"

    filled-new-array/range {v17 .. v25}, [Ljava/lang/Object;

    move-result-object v3

    .line 3545
    invoke-static {v0, v15, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3553
    :goto_3dd
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 3554
    .local v3, "otherPss":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 3555
    .local v4, "otherSwappablePss":I
    move/from16 v17, v3

    .end local v3    # "otherPss":I
    .local v17, "otherPss":I
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 3556
    .local v3, "otherSharedDirty":I
    move/from16 v18, v3

    .end local v3    # "otherSharedDirty":I
    .local v18, "otherSharedDirty":I
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 3557
    .local v3, "otherPrivateDirty":I
    move/from16 v19, v3

    .end local v3    # "otherPrivateDirty":I
    .local v19, "otherPrivateDirty":I
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 3558
    .local v3, "otherSharedClean":I
    move/from16 v20, v3

    .end local v3    # "otherSharedClean":I
    .local v20, "otherSharedClean":I
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 3559
    .local v3, "otherPrivateClean":I
    move/from16 v21, v3

    .end local v3    # "otherPrivateClean":I
    .local v21, "otherPrivateClean":I
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 3560
    .local v3, "otherSwappedOut":I
    move/from16 v22, v3

    .end local v3    # "otherSwappedOut":I
    .local v22, "otherSwappedOut":I
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 3561
    .local v3, "otherSwappedOutPss":I
    move/from16 v23, v3

    .end local v3    # "otherSwappedOutPss":I
    .local v23, "otherSwappedOutPss":I
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 3563
    .local v3, "otherRss":I
    const/16 v24, 0x0

    move/from16 v47, v4

    move v4, v3

    move/from16 v3, v24

    move/from16 v24, v17

    move/from16 v17, v47

    .local v3, "i":I
    .local v4, "otherRss":I
    .local v17, "otherSwappablePss":I
    .local v24, "otherPss":I
    :goto_408
    move/from16 v25, v4

    const/16 v4, 0x11

    .end local v4    # "otherRss":I
    .local v25, "otherRss":I
    if-ge v3, v4, :cond_4cf

    .line 3564
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v16

    .line 3565
    .local v16, "myPss":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v26

    .line 3566
    .local v26, "mySwappablePss":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v27

    .line 3567
    .local v27, "mySharedDirty":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v28

    .line 3568
    .local v28, "myPrivateDirty":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v29

    .line 3569
    .local v29, "mySharedClean":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v30

    .line 3570
    .local v30, "myPrivateClean":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v31

    .line 3571
    .local v31, "mySwappedOut":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v32

    .line 3572
    .local v32, "mySwappedOutPss":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v33

    .line 3573
    .local v33, "myRss":I
    if-nez v16, :cond_44e

    if-nez v27, :cond_44e

    if-nez v28, :cond_44e

    if-nez v29, :cond_44e

    if-nez v30, :cond_44e

    if-nez v33, :cond_44e

    .line 3575
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_445

    move/from16 v4, v32

    goto :goto_447

    :cond_445
    move/from16 v4, v31

    :goto_447
    if-eqz v4, :cond_44a

    goto :goto_44e

    :cond_44a
    move/from16 v4, v25

    goto/16 :goto_4cb

    .line 3576
    :cond_44e
    :goto_44e
    if-eqz p3, :cond_48b

    .line 3577
    invoke-static {v3}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v35

    .line 3578
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 3579
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    .line 3580
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_473

    move/from16 v4, v32

    goto :goto_475

    :cond_473
    move/from16 v4, v31

    :goto_475
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    .line 3581
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const-string v45, ""

    const-string v46, ""

    const-string v44, ""

    filled-new-array/range {v35 .. v46}, [Ljava/lang/Object;

    move-result-object v4

    .line 3577
    invoke-static {v0, v5, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4b9

    .line 3583
    :cond_48b
    invoke-static {v3}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v35

    .line 3584
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 3585
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 3586
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_4a2

    move/from16 v4, v32

    goto :goto_4a4

    :cond_4a2
    move/from16 v4, v31

    :goto_4a4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 3587
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    const-string v42, ""

    const-string v43, ""

    const-string v41, ""

    filled-new-array/range {v35 .. v43}, [Ljava/lang/Object;

    move-result-object v4

    .line 3583
    invoke-static {v0, v15, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3589
    :goto_4b9
    sub-int v24, v24, v16

    .line 3590
    sub-int v17, v17, v26

    .line 3591
    sub-int v18, v18, v27

    .line 3592
    sub-int v19, v19, v28

    .line 3593
    sub-int v20, v20, v29

    .line 3594
    sub-int v21, v21, v30

    .line 3595
    sub-int v22, v22, v31

    .line 3596
    sub-int v23, v23, v32

    .line 3597
    sub-int v4, v25, v33

    .line 3563
    .end local v16    # "myPss":I
    .end local v25    # "otherRss":I
    .end local v26    # "mySwappablePss":I
    .end local v27    # "mySharedDirty":I
    .end local v28    # "myPrivateDirty":I
    .end local v29    # "mySharedClean":I
    .end local v30    # "myPrivateClean":I
    .end local v31    # "mySwappedOut":I
    .end local v32    # "mySwappedOutPss":I
    .end local v33    # "myRss":I
    .restart local v4    # "otherRss":I
    :goto_4cb
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_408

    .line 3601
    .end local v3    # "i":I
    .end local v4    # "otherRss":I
    .restart local v25    # "otherRss":I
    :cond_4cf
    if-eqz p3, :cond_56f

    .line 3602
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 3603
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    .line 3604
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_4f0

    move/from16 v3, v23

    goto :goto_4f2

    :cond_4f0
    move/from16 v3, v22

    :goto_4f2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    .line 3605
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const-string v45, ""

    const-string v46, ""

    const-string v35, "Unknown"

    const-string v44, ""

    filled-new-array/range {v35 .. v46}, [Ljava/lang/Object;

    move-result-object v3

    .line 3602
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3606
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 3607
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 3608
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 3609
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 3610
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_542

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v3

    goto :goto_546

    .line 3611
    :cond_542
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v3

    .line 3610
    :goto_546
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 3611
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    add-long v3, p8, v8

    .line 3612
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    add-long v3, p10, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    add-long v3, v6, v12

    .line 3613
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    const-string v26, "TOTAL"

    filled-new-array/range {v26 .. v37}, [Ljava/lang/Object;

    move-result-object v3

    .line 3606
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5e7

    .line 3615
    :cond_56f
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 3616
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 3617
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_582

    move/from16 v3, v23

    goto :goto_584

    :cond_582
    move/from16 v3, v22

    :goto_584
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 3618
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const-string v33, ""

    const-string v34, ""

    const-string v26, "Unknown"

    const-string v32, ""

    filled-new-array/range {v26 .. v34}, [Ljava/lang/Object;

    move-result-object v3

    .line 3615
    invoke-static {v0, v15, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3619
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 3620
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 3621
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 3622
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_5bc

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v3

    goto :goto_5c0

    .line 3623
    :cond_5bc
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v3

    .line 3622
    :goto_5c0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 3623
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    add-long v3, p8, v8

    .line 3624
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    add-long v3, p10, v10

    .line 3625
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    add-long v3, v6, v12

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v26, "TOTAL"

    filled-new-array/range {v26 .. v34}, [Ljava/lang/Object;

    move-result-object v3

    .line 3619
    invoke-static {v0, v15, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3628
    :goto_5e7
    if-eqz p4, :cond_6a6

    .line 3629
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3630
    const-string v3, " Dalvik Details"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3632
    const/16 v3, 0x11

    .line 3633
    .restart local v3    # "i":I
    :goto_5f3
    const/16 v4, 0x20

    if-ge v3, v4, :cond_6a4

    .line 3634
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v4

    .line 3635
    .local v4, "myPss":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v16

    .line 3636
    .local v16, "mySwappablePss":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v26

    .line 3637
    .local v26, "mySharedDirty":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v27

    .line 3638
    .local v27, "myPrivateDirty":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v28

    .line 3639
    .local v28, "mySharedClean":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v29

    .line 3640
    .local v29, "myPrivateClean":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v30

    .line 3641
    .local v30, "mySwappedOut":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v31

    .line 3642
    .local v31, "mySwappedOutPss":I
    invoke-virtual {v1, v3}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v32

    .line 3643
    .local v32, "myRss":I
    if-nez v4, :cond_633

    if-nez v26, :cond_633

    if-nez v27, :cond_633

    if-nez v28, :cond_633

    if-nez v29, :cond_633

    .line 3645
    move/from16 v33, v3

    .end local v3    # "i":I
    .local v33, "i":I
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_62e

    move/from16 v3, v31

    goto :goto_630

    :cond_62e
    move/from16 v3, v30

    :goto_630
    if-eqz v3, :cond_6a0

    goto :goto_635

    .line 3643
    .end local v33    # "i":I
    .restart local v3    # "i":I
    :cond_633
    move/from16 v33, v3

    .line 3646
    .end local v3    # "i":I
    .restart local v33    # "i":I
    :goto_635
    if-eqz p3, :cond_672

    .line 3647
    invoke-static/range {v33 .. v33}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v34

    .line 3648
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 3649
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 3650
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_65a

    move/from16 v3, v31

    goto :goto_65c

    :cond_65a
    move/from16 v3, v30

    :goto_65c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    .line 3651
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    const-string v44, ""

    const-string v45, ""

    const-string v43, ""

    filled-new-array/range {v34 .. v45}, [Ljava/lang/Object;

    move-result-object v3

    .line 3647
    invoke-static {v0, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6a0

    .line 3653
    :cond_672
    invoke-static/range {v33 .. v33}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v34

    .line 3654
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    .line 3655
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 3656
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_689

    move/from16 v3, v31

    goto :goto_68b

    :cond_689
    move/from16 v3, v30

    :goto_68b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 3657
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    const-string v41, ""

    const-string v42, ""

    const-string v40, ""

    filled-new-array/range {v34 .. v42}, [Ljava/lang/Object;

    move-result-object v3

    .line 3653
    invoke-static {v0, v15, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3633
    .end local v4    # "myPss":I
    .end local v16    # "mySwappablePss":I
    .end local v26    # "mySharedDirty":I
    .end local v27    # "myPrivateDirty":I
    .end local v28    # "mySharedClean":I
    .end local v29    # "myPrivateClean":I
    .end local v30    # "mySwappedOut":I
    .end local v31    # "mySwappedOutPss":I
    .end local v32    # "myRss":I
    :cond_6a0
    :goto_6a0
    add-int/lit8 v3, v33, 0x1

    .end local v33    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_5f3

    :cond_6a4
    move/from16 v33, v3

    .line 3664
    .end local v3    # "i":I
    .end local v17    # "otherSwappablePss":I
    .end local v18    # "otherSharedDirty":I
    .end local v19    # "otherPrivateDirty":I
    .end local v20    # "otherSharedClean":I
    .end local v21    # "otherPrivateClean":I
    .end local v22    # "otherSwappedOut":I
    .end local v23    # "otherSwappedOutPss":I
    .end local v24    # "otherPss":I
    .end local v25    # "otherRss":I
    :cond_6a6
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3665
    const-string v3, " App Summary"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3666
    const-string v3, "Pss(KB)"

    const-string v4, "Rss(KB)"

    const-string v5, ""

    filled-new-array {v5, v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%21s %8s %21s %8s"

    invoke-static {v0, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3667
    const-string v3, "------"

    filled-new-array {v5, v3, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3668
    nop

    .line 3669
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeapRss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v15, "Java Heap:"

    filled-new-array {v15, v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 3668
    const-string v4, "%21s %8d %21s %8d"

    invoke-static {v0, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3670
    nop

    .line 3671
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3672
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeapRss()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v6, "Native Heap:"

    filled-new-array {v6, v3, v5, v15}, [Ljava/lang/Object;

    move-result-object v3

    .line 3670
    invoke-static {v0, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3673
    nop

    .line 3674
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryCodeRss()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Code:"

    filled-new-array {v7, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 3673
    invoke-static {v0, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3675
    nop

    .line 3676
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryStackRss()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Stack:"

    filled-new-array {v7, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 3675
    invoke-static {v0, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3677
    nop

    .line 3678
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphicsRss()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Graphics:"

    filled-new-array {v7, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 3677
    invoke-static {v0, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3679
    nop

    .line 3680
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Private Other:"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 3679
    const-string v4, "%21s %8d"

    invoke-static {v0, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3681
    nop

    .line 3682
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "System:"

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 3681
    invoke-static {v0, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3683
    nop

    .line 3684
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryUnknownRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Unknown:"

    filled-new-array {v4, v5, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 3683
    const-string v4, "%21s %8s %21s %8d"

    invoke-static {v0, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3685
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3686
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-string v3, "%21s %8d %21s %8d %21s %8d"

    if-eqz v2, :cond_7b4

    .line 3687
    nop

    .line 3688
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 3689
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 3690
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v15, "TOTAL PSS:"

    const-string v17, "TOTAL RSS:"

    const-string v19, "TOTAL SWAP PSS:"

    filled-new-array/range {v15 .. v20}, [Ljava/lang/Object;

    move-result-object v2

    .line 3687
    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7da

    .line 3692
    :cond_7b4
    nop

    .line 3693
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 3694
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 3695
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v15, "TOTAL PSS:"

    const-string v17, "TOTAL RSS:"

    const-string v19, "TOTAL SWAP (KB):"

    filled-new-array/range {v15 .. v20}, [Ljava/lang/Object;

    move-result-object v2

    .line 3692
    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3697
    :goto_7da
    return-void
.end method

.method private static blacklist dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V
    .registers 28
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "pss"    # I
    .param p5, "cleanPss"    # I
    .param p6, "sharedDirty"    # I
    .param p7, "privateDirty"    # I
    .param p8, "sharedClean"    # I
    .param p9, "privateClean"    # I
    .param p10, "hasSwappedOutPss"    # Z
    .param p11, "dirtySwap"    # I
    .param p12, "dirtySwapPss"    # I
    .param p13, "rss"    # I

    .line 3708
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3710
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    move-object/from16 v4, p3

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3711
    const-wide v2, 0x10500000002L

    move/from16 v5, p4

    invoke-virtual {p0, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3712
    const-wide v2, 0x10500000003L

    move/from16 v6, p5

    invoke-virtual {p0, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3713
    const-wide v2, 0x10500000004L

    move/from16 v7, p6

    invoke-virtual {p0, v2, v3, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3714
    const-wide v2, 0x10500000005L

    move/from16 v8, p7

    invoke-virtual {p0, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3715
    const-wide v2, 0x10500000006L

    move/from16 v9, p8

    invoke-virtual {p0, v2, v3, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3716
    const-wide v2, 0x10500000007L

    move/from16 v10, p9

    invoke-virtual {p0, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3717
    if-eqz p10, :cond_59

    .line 3718
    const-wide v2, 0x10500000009L

    move/from16 v11, p12

    invoke-virtual {p0, v2, v3, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move/from16 v12, p11

    goto :goto_65

    .line 3720
    :cond_59
    move/from16 v11, p12

    const-wide v2, 0x10500000008L

    move/from16 v12, p11

    invoke-virtual {p0, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3722
    :goto_65
    const-wide v2, 0x1050000000aL

    move/from16 v13, p13

    invoke-virtual {p0, v2, v3, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3724
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3725
    return-void
.end method

.method private blacklist generateForegroundServiceDidNotStartInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2387
    nop

    .line 2388
    invoke-static {p2}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;->getServiceClassNameFromExtras(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 2389
    .local v0, "serviceClassName":Ljava/lang/String;
    if-nez v0, :cond_9

    const/4 v1, 0x0

    goto :goto_d

    .line 2390
    :cond_9
    invoke-static {v0}, Landroid/app/Service;->getStartForegroundServiceStackTrace(Ljava/lang/String;)Landroid/app/StackTrace;

    move-result-object v1

    :goto_d
    nop

    .line 2391
    .local v1, "inner":Ljava/lang/Exception;
    new-instance v2, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;

    invoke-direct {v2, p1, v1}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist generateForegroundServiceDidNotStopInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2396
    nop

    .line 2397
    invoke-static {p2}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;->getServiceClassNameFromExtras(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 2398
    .local v0, "serviceClassName":Ljava/lang/String;
    if-nez v0, :cond_9

    const/4 v1, 0x0

    goto :goto_d

    .line 2399
    :cond_9
    invoke-static {v0}, Landroid/app/Service;->getStartForegroundServiceStackTrace(Ljava/lang/String;)Landroid/app/StackTrace;

    move-result-object v1

    :goto_d
    nop

    .line 2400
    .local v1, "inner":Ljava/lang/Exception;
    new-instance v2, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;

    invoke-direct {v2, p1, v1}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist getBackupAgentName(Landroid/app/ActivityThread$CreateBackupAgentData;)Ljava/lang/String;
    .registers 5
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 5195
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 5197
    .local v0, "agentName":Ljava/lang/String;
    if-nez v0, :cond_12

    iget v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    iget v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    .line 5199
    :cond_10
    const-string v0, "android.app.backup.FullBackupAgent"

    .line 5201
    :cond_12
    return-object v0
.end method

.method private blacklist getBackupAgentsForUser(I)Landroid/util/ArrayMap;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation

    .line 5226
    iget-object v0, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 5227
    .local v0, "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    if-nez v0, :cond_15

    .line 5228
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 5229
    iget-object v1, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5231
    :cond_15
    return-object v0
.end method

.method private blacklist getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;
    .registers 7
    .param p1, "auth"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 8239
    new-instance v0, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v0, p1, p2}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 8240
    .local v0, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v1, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 8241
    :try_start_8
    iget-object v2, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    new-instance v3, Landroid/app/ActivityThread$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/app/ActivityThread$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderKey;

    .line 8242
    .local v2, "lock":Landroid/app/ActivityThread$ProviderKey;
    monitor-exit v1

    return-object v2

    .line 8243
    .end local v2    # "lock":Landroid/app/ActivityThread$ProviderKey;
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v2
.end method

.method private greylist-max-o getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;
    .registers 7
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "insInfo"    # Landroid/content/pm/InstrumentationInfo;

    .line 7497
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 7498
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 7501
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 7502
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7503
    .local v0, "secondaryIsa":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.dalvik.vm.isa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7504
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7505
    .local v1, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_38

    move-object v2, v0

    goto :goto_39

    :cond_38
    move-object v2, v1

    .line 7507
    .end local v0    # "secondaryIsa":Ljava/lang/String;
    .local v2, "secondaryIsa":Ljava/lang/String;
    :goto_39
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 7508
    .local v0, "runtimeIsa":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 7509
    iget-object v3, p2, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v3

    .line 7512
    .end local v0    # "runtimeIsa":Ljava/lang/String;
    .end local v1    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v2    # "secondaryIsa":Ljava/lang/String;
    :cond_4a
    iget-object v0, p2, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public static greylist-max-o getIntentBeingBroadcast()Landroid/content/Intent;
    .registers 1

    .line 4972
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private static blacklist getOperationTypeFromBackupMode(I)I
    .registers 3
    .param p0, "backupMode"    # I

    .line 5180
    packed-switch p0, :pswitch_data_22

    .line 5188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid backup mode when initialising BackupAgent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5190
    const/4 v0, -0x1

    return v0

    .line 5183
    :pswitch_1d
    const/4 v0, 0x1

    return v0

    .line 5186
    :pswitch_1f
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method private greylist-max-o getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;
    .registers 15
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z

    .line 3096
    nop

    .line 3097
    invoke-static {}, Landroid/os/Process;->isSdkSandbox()Z

    move-result v7

    .line 3096
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p3    # "baseLoader":Ljava/lang/ClassLoader;
    .end local p4    # "securityViolation":Z
    .end local p5    # "includeCode":Z
    .end local p6    # "registerPackage":Z
    .local v1, "aInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "compatInfo":Landroid/content/res/CompatibilityInfo;
    .local v3, "baseLoader":Ljava/lang/ClassLoader;
    .local v4, "securityViolation":Z
    .local v5, "includeCode":Z
    .local v6, "registerPackage":Z
    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;
    .registers 20
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z
    .param p7, "isSdkSandbox"    # Z

    .line 3103
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_10

    move v0, v4

    goto :goto_11

    :cond_10
    move v0, v5

    :goto_11
    move v8, v0

    .line 3104
    .local v8, "differentUser":Z
    iget-object v9, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v9

    .line 3106
    if-nez v8, :cond_34

    if-eqz p7, :cond_1a

    goto :goto_34

    .line 3109
    :cond_1a
    if-eqz p5, :cond_28

    .line 3110
    :try_start_1c
    iget-object v0, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v10, v0

    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_36

    .line 3112
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_28
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v10, v0

    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_36

    .line 3108
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_34
    :goto_34
    const/4 v0, 0x0

    move-object v10, v0

    .line 3115
    .local v10, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_36
    if-eqz v10, :cond_42

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk;

    goto :goto_43

    .line 3165
    .end local v10    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_3f
    move-exception v0

    goto/16 :goto_f0

    .line 3115
    .restart local v10    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_42
    const/4 v0, 0x0

    :goto_43
    move-object v11, v0

    .line 3117
    .local v11, "packageInfo":Landroid/app/LoadedApk;
    if-eqz v11, :cond_9a

    .line 3118
    invoke-static {v11, p1}, Landroid/app/ActivityThread;->isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 3119
    invoke-virtual {v11}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-wide v3, v0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    iget-wide v5, p1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_73

    .line 3122
    const-string v0, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageInfo() called with an older ApplicationInfo than the cached version for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 3125
    :cond_73
    const-string v0, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageInfo() caused update to cached ApplicationInfo for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3128
    .local v0, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 3129
    invoke-virtual {v11, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 3133
    .end local v0    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_98
    :goto_98
    monitor-exit v9

    return-object v11

    .line 3144
    :cond_9a
    new-instance v0, Landroid/app/LoadedApk;

    if-eqz p5, :cond_a6

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_a6

    move v6, v4

    goto :goto_a7

    :cond_a6
    move v6, v5

    :goto_a7
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    .line 3149
    .end local v11    # "packageInfo":Landroid/app/LoadedApk;
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-boolean v3, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v3, :cond_ce

    const-string v3, "android"

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 3150
    nop

    .line 3151
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v3

    iget-object v3, v3, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 3150
    invoke-virtual {v0, p1, v3}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3154
    :cond_ce
    if-nez v8, :cond_ee

    if-eqz p7, :cond_d3

    goto :goto_ee

    .line 3156
    :cond_d3
    if-eqz p5, :cond_e2

    .line 3157
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ee

    .line 3160
    :cond_e2
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3164
    :cond_ee
    :goto_ee
    monitor-exit v9

    return-object v0

    .line 3165
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v10    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_f0
    monitor-exit v9
    :try_end_f1
    .catchall {:try_start_1c .. :try_end_f1} :catchall_3f

    throw v0
.end method

.method public static greylist getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 2954
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_7

    .line 2955
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0

    .line 2957
    :cond_7
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2958
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 2959
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1
.end method

.method public static blacklist getPermissionManager()Landroid/permission/IPermissionManager;
    .registers 2

    .line 2964
    sget-object v0, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    if-eqz v0, :cond_7

    .line 2965
    sget-object v0, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    return-object v0

    .line 2967
    :cond_7
    const-string/jumbo v0, "permissionmgr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2968
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    .line 2969
    sget-object v1, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    return-object v1
.end method

.method private blacklist getSystemUiContextNoCreateLocked(I)Landroid/content/Context;
    .registers 5
    .param p1, "displayId"    # I

    .line 3307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 3308
    iget-object v1, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 3309
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_20

    .line 3310
    return-object v1

    .line 3307
    .end local v1    # "context":Landroid/content/Context;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3313
    .end local v0    # "i":I
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist handleActivityConfigurationChangedInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;Z)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I
    .param p4, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;
    .param p5, "alwaysReportChange"    # Z

    .line 7110
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7111
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 7112
    .local v1, "pendingOverrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p2, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 7118
    monitor-exit v0

    return-void

    .line 7120
    :cond_15
    iget-object v2, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7121
    nop

    .end local v1    # "pendingOverrideConfig":Landroid/content/res/Configuration;
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_7e

    .line 7123
    const/4 v0, -0x1

    if-ne p3, v0, :cond_27

    .line 7126
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplayId()I

    move-result p3

    .line 7128
    :cond_27
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 7129
    invoke-virtual {v0}, Landroid/app/Activity;->getDisplayId()I

    move-result v0

    .line 7128
    invoke-static {v0, p3}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v0

    .line 7130
    .local v0, "movedToDifferentDisplay":Z
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_40

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_40

    if-nez v0, :cond_40

    .line 7137
    return-void

    .line 7141
    :cond_40
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 7142
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 7144
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_58

    .line 7145
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    goto :goto_59

    :cond_58
    const/4 v1, 0x0

    .line 7153
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    :goto_59
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 7154
    invoke-virtual {v2}, Landroid/app/ConfigurationController;->getCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 7155
    if-eqz v0, :cond_63

    move v3, p3

    goto :goto_69

    :cond_63
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getDisplayId()I

    move-result v3

    .line 7153
    :goto_69
    invoke-direct {p0, p1, v2, v3, p5}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    move-result-object v2

    .line 7159
    .local v2, "reportedConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_77

    .line 7160
    if-eqz v0, :cond_74

    .line 7161
    invoke-virtual {v1, p3, v2}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 7163
    :cond_74
    invoke-virtual {v1, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    .line 7165
    :cond_77
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 7168
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleActivityWindowInfoChanged(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 7169
    return-void

    .line 7121
    .end local v0    # "movedToDifferentDisplay":Z
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "reportedConfig":Landroid/content/res/Configuration;
    :catchall_7e
    move-exception v1

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v1
.end method

.method private blacklist handleActivityWindowInfoChanged(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7172
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v0

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmLastReportedActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/ActivityWindowInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7173
    return-void

    .line 7175
    :cond_f
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmLastReportedActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v0

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 7176
    invoke-static {}, Landroid/app/servertransaction/ClientTransactionListenerController;->getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/servertransaction/ClientTransactionListenerController;->onActivityWindowInfoChanged(Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V

    .line 7178
    return-void
.end method

.method static greylist-max-o handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V
    .registers 5
    .param p0, "agent"    # Ljava/lang/String;
    .param p1, "loadedApk"    # Landroid/app/LoadedApk;

    .line 4920
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 4921
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :goto_9
    invoke-static {p0, v1}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4922
    return-void

    .line 4924
    :cond_10
    if-eqz v1, :cond_15

    .line 4925
    invoke-static {p0, v0}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    .line 4927
    :cond_15
    return-void
.end method

.method static blacklist handleAttachStartupAgents(Ljava/lang/String;)V
    .registers 8
    .param p0, "dataDir"    # Ljava/lang/String;

    .line 4931
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/ContextImpl;->getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 4932
    .local v0, "codeCache":Ljava/nio/file/Path;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 4933
    return-void

    .line 4935
    :cond_17
    const-string/jumbo v2, "startup_agents"

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 4936
    .local v2, "startupPath":Ljava/nio/file/Path;
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 4937
    invoke-static {v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_71

    .line 4938
    .local v1, "startupFiles":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_2a
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 4939
    .local v4, "p":Ljava/nio/file/Path;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4940
    invoke-interface {v4}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4939
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V
    :try_end_5d
    .catchall {:try_start_2a .. :try_end_5d} :catchall_64

    .line 4944
    .end local v4    # "p":Ljava/nio/file/Path;
    goto :goto_2e

    .line 4945
    :cond_5e
    if-eqz v1, :cond_70

    :try_start_60
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_71

    goto :goto_70

    .line 4937
    :catchall_64
    move-exception v3

    if-eqz v1, :cond_6f

    :try_start_67
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v4

    :try_start_6c
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "dataDir":Ljava/lang/String;
    :cond_6f
    :goto_6f
    throw v3
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_70} :catch_71

    .line 4949
    .end local v0    # "codeCache":Ljava/nio/file/Path;
    .end local v1    # "startupFiles":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local v2    # "startupPath":Ljava/nio/file/Path;
    .restart local p0    # "dataDir":Ljava/lang/String;
    :cond_70
    :goto_70
    goto :goto_72

    .line 4947
    :catch_71
    move-exception v0

    .line 4950
    :goto_72
    return-void
.end method

.method private greylist handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .registers 28
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7517
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    iget-object v0, v1, Landroid/app/ActivityThread;->mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

    sget-object v2, Landroid/os/DdmSyncState$Stage;->Bind:Landroid/os/DdmSyncState$Stage;

    invoke-virtual {v0, v2}, Landroid/os/DdmSyncStageUpdater;->next(Landroid/os/DdmSyncState$Stage;)V

    .line 7520
    invoke-static {}, Ldalvik/system/VMRuntime;->registerSensitiveThread()V

    .line 7522
    const-string v0, "debug.allocTracker.stackDepth"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 7523
    .local v10, "property":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_21

    .line 7524
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ldalvik/system/VMDebug;->setAllocTrackerStackDepth(I)V

    .line 7526
    :cond_21
    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    const/4 v11, 0x1

    if-eqz v0, :cond_29

    .line 7527
    invoke-static {v11}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->setRecentAllocationsTrackingEnabled(Z)V

    .line 7530
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iget-wide v2, v9, Landroid/app/ActivityThread$AppBindData;->startRequestedElapsedTime:J

    iget-wide v4, v9, Landroid/app/ActivityThread$AppBindData;->startRequestedUptime:J

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    invoke-static/range {v12 .. v19}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 7533
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->disabledCompatChanges:[J

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->mLoggableCompatChanges:[J

    invoke-static {v0, v2}, Landroid/app/AppCompatCallbacks;->install([J[J)V

    .line 7535
    invoke-static {}, Ldalvik/system/AppSpecializationHooks;->handleCompatChangesBeforeBindingApplication()V

    .line 7540
    invoke-direct {v1}, Landroid/app/ActivityThread;->initZipPathValidatorCallback()V

    .line 7542
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 7543
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/app/ConfigurationController;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 7544
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/app/ConfigurationController;->setCompatConfiguration(Landroid/content/res/Configuration;)V

    .line 7545
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, v1, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 7546
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iput-object v0, v1, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 7548
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 7549
    const/4 v0, 0x0

    .line 7550
    .local v0, "agent":Ljava/lang/String;
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v2, :cond_b5

    .line 7551
    iget-object v2, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v3, v3, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 7552
    iget-object v2, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v3, v3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v3, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 7553
    iget-object v2, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v3, v3, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v3, v2, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 7554
    iget-object v2, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v3, v3, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v3, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 7555
    iget-object v2, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v3, v3, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v3, v2, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 7556
    iget-object v2, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v3, v3, Landroid/app/ProfilerInfo;->clockType:I

    iput v3, v2, Landroid/app/ActivityThread$Profiler;->mClockType:I

    .line 7557
    iget-object v2, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v3, v3, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iput v3, v2, Landroid/app/ActivityThread$Profiler;->mProfilerOutputVersion:I

    .line 7558
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v2, v2, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v2, :cond_b5

    .line 7559
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v0, v2, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    move-object v12, v0

    goto :goto_b6

    .line 7563
    :cond_b5
    move-object v12, v0

    .end local v0    # "agent":Ljava/lang/String;
    .local v12, "agent":Ljava/lang/String;
    :goto_b6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Ldalvik/system/VMDebug;->setUserId(I)V

    .line 7564
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMDebug;->addApplication(Ljava/lang/String;)V

    .line 7566
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 7567
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7569
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 7567
    invoke-static {v0, v2, v3}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7570
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->setProcessPackageName(Ljava/lang/String;)V

    .line 7571
    iget-object v0, v1, Landroid/app/ActivityThread;->mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

    sget-object v2, Landroid/os/DdmSyncState$Stage;->Named:Landroid/os/DdmSyncState$Stage;

    invoke-virtual {v0, v2}, Landroid/os/DdmSyncStageUpdater;->next(Landroid/os/DdmSyncState$Stage;)V

    .line 7575
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->setProcessDataDirectory(Ljava/lang/String;)V

    .line 7577
    iget-object v0, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_f6

    .line 7578
    iget-object v0, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 7585
    :cond_f6
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xc

    if-gt v0, v2, :cond_103

    .line 7586
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 7590
    :cond_103
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_10d

    move v0, v11

    goto :goto_10e

    :cond_10d
    const/4 v0, 0x0

    :goto_10e
    invoke-static {v0}, Landroid/util/UtilConfig;->setThrowExceptionForUpperArrayOutOfBounds(Z)V

    .line 7593
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/os/Message;->updateCheckRecycle(I)V

    .line 7597
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/graphics/Compatibility;->setTargetSdkVersion(I)V

    .line 7605
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 7610
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 7614
    :try_start_12c
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->mSerializedSystemFontMap:Landroid/os/SharedMemory;

    invoke-static {v0}, Landroid/graphics/Typeface;->setSystemFontMap(Landroid/os/SharedMemory;)V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_131} :catch_132
    .catch Landroid/system/ErrnoException; {:try_start_12c .. :try_end_131} :catch_132

    .line 7618
    goto :goto_13d

    .line 7615
    :catch_132
    move-exception v0

    .line 7616
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActivityThread"

    const-string v3, "Failed to parse serialized system font map"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7617
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 7621
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13d
    iget-object v2, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 7627
    :try_start_140
    iget-object v0, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v3, v4}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 7628
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, v1, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 7631
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->applyCompatConfiguration()Landroid/content/res/Configuration;

    .line 7632
    monitor-exit v2
    :try_end_155
    .catchall {:try_start_140 .. :try_end_155} :catchall_4c2

    .line 7634
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v0, :cond_15b

    move v8, v11

    goto :goto_15c

    :cond_15b
    const/4 v8, 0x0

    .line 7635
    .local v8, "isSdkSandbox":Z
    :goto_15c
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 7638
    if-eqz v8, :cond_175

    .line 7639
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/app/LoadedApk;->setSdkSandboxStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 7643
    :cond_175
    if-eqz v12, :cond_17c

    .line 7644
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {v12, v0}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    .line 7650
    :cond_17c
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_18b

    .line 7652
    iput-boolean v11, v1, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 7653
    const/16 v0, 0xa0

    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 7655
    :cond_18b
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 7659
    iget-object v0, v1, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v2, "time_12_24"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7660
    .local v2, "use24HourSetting":Ljava/lang/String;
    const/4 v0, 0x0

    .line 7661
    .local v0, "is24Hr":Ljava/lang/Boolean;
    if-eqz v2, :cond_1af

    .line 7662
    const-string v3, "24"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ab

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1ad

    :cond_1ab
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1ad
    move-object v0, v3

    goto :goto_1b0

    .line 7661
    :cond_1af
    move-object v3, v0

    .line 7667
    .end local v0    # "is24Hr":Ljava/lang/Boolean;
    .local v3, "is24Hr":Ljava/lang/Boolean;
    :goto_1b0
    invoke-static {v3}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 7669
    invoke-direct {v1}, Landroid/app/ActivityThread;->updateDebugViewAttributeState()Z

    .line 7671
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 7672
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 7675
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x2

    and-int/2addr v0, v4

    if-eqz v0, :cond_1ca

    move v0, v11

    goto :goto_1cb

    :cond_1ca
    const/4 v0, 0x0

    :goto_1cb
    move v5, v0

    .line 7676
    .local v5, "isAppDebuggable":Z
    if-nez v5, :cond_1d9

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_1d7

    goto :goto_1d9

    :cond_1d7
    const/4 v0, 0x0

    goto :goto_1da

    :cond_1d9
    :goto_1d9
    move v0, v11

    :goto_1da
    move v6, v0

    .line 7677
    .local v6, "isAppProfileable":Z
    invoke-static {v6}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    .line 7678
    if-nez v6, :cond_1e4

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1eb

    :cond_1e4
    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    if-eqz v0, :cond_1eb

    .line 7679
    invoke-static {}, Landroid/os/Binder;->enableStackTracking()V

    .line 7683
    :cond_1eb
    if-nez v6, :cond_1f1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1f4

    .line 7684
    :cond_1f1
    invoke-direct {v1}, Landroid/app/ActivityThread;->nInitZygoteChildHeapProfiling()V

    .line 7688
    :cond_1f4
    if-nez v5, :cond_1fd

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1fb

    goto :goto_1fd

    :cond_1fb
    const/4 v0, 0x0

    goto :goto_1fe

    :cond_1fd
    :goto_1fd
    move v0, v11

    :goto_1fe
    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setDebuggingEnabled(Z)V

    .line 7689
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setPackageName(Ljava/lang/String;)V

    .line 7692
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setContextForInit(Landroid/content/Context;)V

    .line 7693
    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    if-eqz v0, :cond_216

    .line 7694
    invoke-static {}, Landroid/graphics/HardwareRenderer;->setIsSystemOrPersistent()V

    .line 7700
    :cond_216
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    if-eqz v0, :cond_220

    .line 7701
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    move-object v7, v0

    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    goto :goto_222

    .line 7703
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    :cond_220
    const/4 v0, 0x0

    move-object v7, v0

    .line 7706
    .local v7, "ii":Landroid/content/pm/InstrumentationInfo;
    :goto_222
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v15

    .line 7707
    .local v15, "mgr":Landroid/app/IActivityManager;
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move/from16 v16, v11

    invoke-static {v1, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v11

    .line 7708
    .local v11, "appContext":Landroid/app/ContextImpl;
    iget-object v0, v1, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0, v11}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 7711
    const-string v0, "Setup proxies"

    const-wide/16 v13, 0x40

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7717
    :try_start_23a
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_240
    .catchall {:try_start_23a .. :try_end_240} :catchall_4b5

    .line 7718
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_25d

    .line 7719
    :try_start_242
    const-class v4, Landroid/net/ConnectivityManager;

    .line 7720
    invoke-virtual {v11, v4}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 7721
    .local v4, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V
    :try_end_251
    .catchall {:try_start_242 .. :try_end_251} :catchall_252

    goto :goto_25d

    .line 7724
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    :catchall_252
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v18, v3

    move/from16 v24, v5

    move/from16 v25, v6

    goto/16 :goto_4be

    :cond_25d
    :goto_25d
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 7725
    nop

    .line 7727
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_278

    .line 7728
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v4

    .line 7730
    .local v4, "oldMask":I
    :try_start_26b
    invoke-direct {v1, v11}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/content/Context;)V
    :try_end_26e
    .catchall {:try_start_26b .. :try_end_26e} :catchall_273

    .line 7732
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 7733
    nop

    .line 7734
    .end local v4    # "oldMask":I
    goto :goto_27b

    .line 7732
    .restart local v4    # "oldMask":I
    :catchall_273
    move-exception v0

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 7733
    throw v0

    .line 7735
    .end local v4    # "oldMask":I
    :cond_278
    invoke-static/range {v16 .. v16}, Landroid/graphics/HardwareRenderer;->setIsolatedProcess(Z)V

    .line 7741
    :goto_27b
    const-string v0, "NetworkSecurityConfigProvider.install"

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7742
    invoke-static {v11}, Landroid/security/net/config/NetworkSecurityConfigProvider;->install(Landroid/content/Context;)V

    .line 7743
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 7748
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_28f

    .line 7749
    invoke-static {v11}, Landroid/net/TrafficStats;->init(Landroid/content/Context;)V

    .line 7753
    :cond_28f
    if-eqz v7, :cond_295

    .line 7754
    invoke-direct {v1, v7, v9, v11}, Landroid/app/ActivityThread;->initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V

    goto :goto_2a1

    .line 7756
    :cond_295
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 7757
    iget-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    .line 7760
    :goto_2a1
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v0, v4

    if-eqz v0, :cond_2b2

    .line 7761
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    goto :goto_2b9

    .line 7765
    :cond_2b2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    .line 7772
    :goto_2b9
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 7773
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v13

    .line 7775
    .local v13, "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-eqz v0, :cond_2dd

    .line 7776
    iget-object v0, v1, Landroid/app/ActivityThread;->mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

    sget-object v14, Landroid/os/DdmSyncState$Stage;->Debugger:Landroid/os/DdmSyncState$Stage;

    invoke-virtual {v0, v14}, Landroid/os/DdmSyncStageUpdater;->next(Landroid/os/DdmSyncState$Stage;)V

    .line 7777
    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v14, 0x2

    if-ne v0, v14, :cond_2d5

    .line 7778
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->waitForDebugger(Landroid/app/ActivityThread$AppBindData;)V

    goto :goto_2dd

    .line 7779
    :cond_2d5
    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v14, 0x3

    if-ne v0, v14, :cond_2dd

    .line 7780
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->suspendAllAndSendVmStart(Landroid/app/ActivityThread$AppBindData;)V

    .line 7784
    :cond_2dd
    :goto_2dd
    iget-object v0, v1, Landroid/app/ActivityThread;->mDdmSyncStageUpdater:Landroid/os/DdmSyncStageUpdater;

    sget-object v14, Landroid/os/DdmSyncState$Stage;->Running:Landroid/os/DdmSyncState$Stage;

    invoke-virtual {v0, v14}, Landroid/os/DdmSyncStageUpdater;->next(Landroid/os/DdmSyncState$Stage;)V

    .line 7786
    const-wide/16 v19, 0x0

    .line 7790
    .local v19, "timestampApplicationOnCreateNs":J
    :try_start_2e6
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-boolean v14, v9, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z
    :try_end_2ea
    .catchall {:try_start_2e6 .. :try_end_2ea} :catchall_494

    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "use24HourSetting":Ljava/lang/String;
    .local v21, "use24HourSetting":Ljava/lang/String;
    :try_start_2ed
    invoke-virtual {v0, v14, v2}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    move-object v2, v0

    .line 7793
    .local v2, "app":Landroid/app/Application;
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->autofillOptions:Landroid/content/AutofillOptions;

    invoke-virtual {v2, v0}, Landroid/app/Application;->setAutofillOptions(Landroid/content/AutofillOptions;)V

    .line 7796
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    invoke-virtual {v2, v0}, Landroid/app/Application;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 7797
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v14, 0xa4

    invoke-virtual {v1, v14, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 7799
    iput-object v2, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 7801
    monitor-enter p0
    :try_end_308
    .catchall {:try_start_2ed .. :try_end_308} :catchall_48a

    .line 7802
    :try_start_308
    iget-boolean v0, v1, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    move v14, v0

    .line 7805
    .local v14, "updateHttpProxy":Z
    monitor-exit p0
    :try_end_30c
    .catchall {:try_start_308 .. :try_end_30c} :catchall_479

    .line 7806
    if-eqz v14, :cond_31d

    .line 7807
    :try_start_30e
    invoke-static {v2}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V
    :try_end_311
    .catchall {:try_start_30e .. :try_end_311} :catchall_312

    goto :goto_31d

    .line 7842
    .end local v2    # "app":Landroid/app/Application;
    .end local v14    # "updateHttpProxy":Z
    :catchall_312
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    goto/16 :goto_49f

    .line 7812
    .restart local v2    # "app":Landroid/app/Application;
    .restart local v14    # "updateHttpProxy":Z
    :cond_31d
    :goto_31d
    :try_start_31d
    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z
    :try_end_31f
    .catchall {:try_start_31d .. :try_end_31f} :catchall_48a

    if-nez v0, :cond_32e

    .line 7813
    :try_start_321
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_32e

    .line 7814
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-direct {v1, v2, v0}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_32e
    .catchall {:try_start_321 .. :try_end_32e} :catchall_312

    .line 7821
    :cond_32e
    :try_start_32e
    iget-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_330
    .catch Ljava/lang/Exception; {:try_start_32e .. :try_end_330} :catch_445
    .catchall {:try_start_32e .. :try_end_330} :catchall_48a

    move-object/from16 v18, v3

    .end local v3    # "is24Hr":Ljava/lang/Boolean;
    .local v18, "is24Hr":Ljava/lang/Boolean;
    :try_start_332
    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_337
    .catch Ljava/lang/Exception; {:try_start_332 .. :try_end_337} :catch_43b
    .catchall {:try_start_332 .. :try_end_337} :catchall_432

    .line 7827
    nop

    .line 7829
    :try_start_338
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v22

    move-wide/from16 v19, v22

    .line 7830
    iget-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v2}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_343
    .catch Ljava/lang/Exception; {:try_start_338 .. :try_end_343} :catch_351
    .catchall {:try_start_338 .. :try_end_343} :catchall_348

    .line 7838
    move-object/from16 v22, v2

    move-wide/from16 v2, v19

    goto :goto_360

    .line 7842
    .end local v2    # "app":Landroid/app/Application;
    .end local v14    # "updateHttpProxy":Z
    :catchall_348
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    goto/16 :goto_49f

    .line 7831
    .restart local v2    # "app":Landroid/app/Application;
    .restart local v14    # "updateHttpProxy":Z
    :catch_351
    move-exception v0

    .line 7832
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v19, 0x0

    .line 7833
    :try_start_354
    iget-object v3, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3
    :try_end_35a
    .catchall {:try_start_354 .. :try_end_35a} :catchall_432

    if-eqz v3, :cond_3fb

    move-object/from16 v22, v2

    move-wide/from16 v2, v19

    .line 7842
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "updateHttpProxy":Z
    .end local v19    # "timestampApplicationOnCreateNs":J
    .local v2, "timestampApplicationOnCreateNs":J
    .local v22, "app":Landroid/app/Application;
    :goto_360
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v14, 0x1b

    if-lt v0, v14, :cond_372

    .line 7843
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_375

    .line 7844
    :cond_372
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7849
    :cond_375
    invoke-static {v11}, Landroid/provider/FontsContract;->setApplicationContextForResources(Landroid/content/Context;)V

    .line 7850
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_3c4

    .line 7853
    :try_start_37e
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v14, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_386
    .catch Landroid/os/RemoteException; {:try_start_37e .. :try_end_386} :catch_3b8

    .line 7856
    move-object/from16 v23, v4

    .end local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .local v23, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_388
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4
    :try_end_38c
    .catch Landroid/os/RemoteException; {:try_start_388 .. :try_end_38c} :catch_3b2

    .line 7853
    move/from16 v24, v5

    move/from16 v25, v6

    .end local v5    # "isAppDebuggable":Z
    .end local v6    # "isAppProfileable":Z
    .local v24, "isAppDebuggable":Z
    .local v25, "isAppProfileable":Z
    const-wide/16 v5, 0x80

    :try_start_392
    invoke-interface {v0, v14, v5, v6, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 7857
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_3af

    .line 7858
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "preloaded_fonts"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 7860
    .local v4, "preloadedFontsResource":I
    if-eqz v4, :cond_3af

    .line 7861
    iget-object v5, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->preloadFonts(I)V
    :try_end_3af
    .catch Landroid/os/RemoteException; {:try_start_392 .. :try_end_3af} :catch_3b0

    .line 7866
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "preloadedFontsResource":I
    :cond_3af
    goto :goto_3ca

    .line 7864
    :catch_3b0
    move-exception v0

    goto :goto_3bf

    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    .restart local v5    # "isAppDebuggable":Z
    .restart local v6    # "isAppProfileable":Z
    :catch_3b2
    move-exception v0

    move/from16 v24, v5

    move/from16 v25, v6

    .end local v5    # "isAppDebuggable":Z
    .end local v6    # "isAppProfileable":Z
    .restart local v24    # "isAppDebuggable":Z
    .restart local v25    # "isAppProfileable":Z
    goto :goto_3bf

    .end local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v5    # "isAppDebuggable":Z
    .restart local v6    # "isAppProfileable":Z
    :catch_3b8
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .line 7865
    .end local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v5    # "isAppDebuggable":Z
    .end local v6    # "isAppProfileable":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v24    # "isAppDebuggable":Z
    .restart local v25    # "isAppProfileable":Z
    :goto_3bf
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 7850
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    .restart local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v5    # "isAppDebuggable":Z
    .restart local v6    # "isAppProfileable":Z
    :cond_3c4
    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .line 7870
    .end local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v5    # "isAppDebuggable":Z
    .end local v6    # "isAppProfileable":Z
    .restart local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v24    # "isAppDebuggable":Z
    .restart local v25    # "isAppProfileable":Z
    :goto_3ca
    :try_start_3ca
    iget-wide v4, v1, Landroid/app/ActivityThread;->mStartSeq:J

    invoke-interface {v15, v4, v5, v2, v3}, Landroid/app/IActivityManager;->finishAttachApplication(JJ)V
    :try_end_3cf
    .catch Landroid/os/RemoteException; {:try_start_3ca .. :try_end_3cf} :catch_3f5

    .line 7873
    nop

    .line 7876
    new-instance v0, Landroid/app/ActivityThread$3;

    invoke-direct {v0, v1, v15}, Landroid/app/ActivityThread$3;-><init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V

    invoke-static {v0}, Landroid/os/Binder;->setTransactionCallback(Landroid/os/IBinderCallback;)V

    .line 7897
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_3f4

    if-nez v7, :cond_3f4

    invoke-static {}, Landroid/app/Flags;->reportPostgcMemoryMetrics()Z

    move-result v0

    if-eqz v0, :cond_3f4

    .line 7898
    invoke-static {}, Lcom/android/libcore/readonly/Flags;->postCleanupApis()Z

    move-result v0

    if-eqz v0, :cond_3f4

    .line 7899
    new-instance v0, Landroid/app/ActivityThread$4;

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$4;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v0}, Ldalvik/system/VMRuntime;->addPostCleanupCallback(Ljava/lang/Runnable;)V

    .line 7905
    :cond_3f4
    return-void

    .line 7871
    :catch_3f5
    move-exception v0

    .line 7872
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 7834
    .end local v22    # "app":Landroid/app/Application;
    .end local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    .local v0, "e":Ljava/lang/Exception;
    .local v2, "app":Landroid/app/Application;
    .restart local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v5    # "isAppDebuggable":Z
    .restart local v6    # "isAppProfileable":Z
    .restart local v14    # "updateHttpProxy":Z
    .restart local v19    # "timestampApplicationOnCreateNs":J
    :cond_3fb
    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .end local v2    # "app":Landroid/app/Application;
    .end local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v5    # "isAppDebuggable":Z
    .end local v6    # "isAppProfileable":Z
    .restart local v22    # "app":Landroid/app/Application;
    .restart local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v24    # "isAppDebuggable":Z
    .restart local v25    # "isAppProfileable":Z
    :try_start_403
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create application "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7835
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7836
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v8    # "isSdkSandbox":Z
    .end local v10    # "property":Ljava/lang/String;
    .end local v11    # "appContext":Landroid/app/ContextImpl;
    .end local v12    # "agent":Ljava/lang/String;
    .end local v13    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v15    # "mgr":Landroid/app/IActivityManager;
    .end local v18    # "is24Hr":Ljava/lang/Boolean;
    .end local v19    # "timestampApplicationOnCreateNs":J
    .end local v21    # "use24HourSetting":Ljava/lang/String;
    .end local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    throw v2

    .line 7842
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "updateHttpProxy":Z
    .end local v22    # "app":Landroid/app/Application;
    .restart local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v5    # "isAppDebuggable":Z
    .restart local v6    # "isAppProfileable":Z
    .restart local v7    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v8    # "isSdkSandbox":Z
    .restart local v10    # "property":Ljava/lang/String;
    .restart local v11    # "appContext":Landroid/app/ContextImpl;
    .restart local v12    # "agent":Ljava/lang/String;
    .restart local v13    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v15    # "mgr":Landroid/app/IActivityManager;
    .restart local v18    # "is24Hr":Ljava/lang/Boolean;
    .restart local v19    # "timestampApplicationOnCreateNs":J
    .restart local v21    # "use24HourSetting":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catchall_432
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .end local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v5    # "isAppDebuggable":Z
    .end local v6    # "isAppProfileable":Z
    .restart local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v24    # "isAppDebuggable":Z
    .restart local v25    # "isAppProfileable":Z
    goto/16 :goto_49f

    .line 7823
    .end local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    .restart local v2    # "app":Landroid/app/Application;
    .restart local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v5    # "isAppDebuggable":Z
    .restart local v6    # "isAppProfileable":Z
    .restart local v14    # "updateHttpProxy":Z
    :catch_43b
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .end local v2    # "app":Landroid/app/Application;
    .end local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v5    # "isAppDebuggable":Z
    .end local v6    # "isAppProfileable":Z
    .restart local v22    # "app":Landroid/app/Application;
    .restart local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v24    # "isAppDebuggable":Z
    .restart local v25    # "isAppProfileable":Z
    goto :goto_450

    .end local v18    # "is24Hr":Ljava/lang/Boolean;
    .end local v22    # "app":Landroid/app/Application;
    .end local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    .restart local v2    # "app":Landroid/app/Application;
    .restart local v3    # "is24Hr":Ljava/lang/Boolean;
    .restart local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v5    # "isAppDebuggable":Z
    .restart local v6    # "isAppProfileable":Z
    :catch_445
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .line 7824
    .end local v2    # "app":Landroid/app/Application;
    .end local v3    # "is24Hr":Ljava/lang/Boolean;
    .end local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v5    # "isAppDebuggable":Z
    .end local v6    # "isAppProfileable":Z
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v18    # "is24Hr":Ljava/lang/Boolean;
    .restart local v22    # "app":Landroid/app/Application;
    .restart local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v24    # "isAppDebuggable":Z
    .restart local v25    # "isAppProfileable":Z
    :goto_450
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown in onCreate() of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7826
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v8    # "isSdkSandbox":Z
    .end local v10    # "property":Ljava/lang/String;
    .end local v11    # "appContext":Landroid/app/ContextImpl;
    .end local v12    # "agent":Ljava/lang/String;
    .end local v13    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v15    # "mgr":Landroid/app/IActivityManager;
    .end local v18    # "is24Hr":Ljava/lang/Boolean;
    .end local v19    # "timestampApplicationOnCreateNs":J
    .end local v21    # "use24HourSetting":Ljava/lang/String;
    .end local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    throw v2
    :try_end_479
    .catchall {:try_start_403 .. :try_end_479} :catchall_486

    .line 7805
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "updateHttpProxy":Z
    .end local v22    # "app":Landroid/app/Application;
    .restart local v2    # "app":Landroid/app/Application;
    .restart local v3    # "is24Hr":Ljava/lang/Boolean;
    .restart local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v5    # "isAppDebuggable":Z
    .restart local v6    # "isAppProfileable":Z
    .restart local v7    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v8    # "isSdkSandbox":Z
    .restart local v10    # "property":Ljava/lang/String;
    .restart local v11    # "appContext":Landroid/app/ContextImpl;
    .restart local v12    # "agent":Ljava/lang/String;
    .restart local v13    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v15    # "mgr":Landroid/app/IActivityManager;
    .restart local v19    # "timestampApplicationOnCreateNs":J
    .restart local v21    # "use24HourSetting":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catchall_479
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .end local v2    # "app":Landroid/app/Application;
    .end local v3    # "is24Hr":Ljava/lang/Boolean;
    .end local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v5    # "isAppDebuggable":Z
    .end local v6    # "isAppProfileable":Z
    .restart local v18    # "is24Hr":Ljava/lang/Boolean;
    .restart local v22    # "app":Landroid/app/Application;
    .restart local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v24    # "isAppDebuggable":Z
    .restart local v25    # "isAppProfileable":Z
    :goto_484
    :try_start_484
    monitor-exit p0
    :try_end_485
    .catchall {:try_start_484 .. :try_end_485} :catchall_488

    .end local v7    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v8    # "isSdkSandbox":Z
    .end local v10    # "property":Ljava/lang/String;
    .end local v11    # "appContext":Landroid/app/ContextImpl;
    .end local v12    # "agent":Ljava/lang/String;
    .end local v13    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v15    # "mgr":Landroid/app/IActivityManager;
    .end local v18    # "is24Hr":Ljava/lang/Boolean;
    .end local v19    # "timestampApplicationOnCreateNs":J
    .end local v21    # "use24HourSetting":Ljava/lang/String;
    .end local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :try_start_485
    throw v0
    :try_end_486
    .catchall {:try_start_485 .. :try_end_486} :catchall_486

    .line 7842
    .end local v22    # "app":Landroid/app/Application;
    .restart local v7    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v8    # "isSdkSandbox":Z
    .restart local v10    # "property":Ljava/lang/String;
    .restart local v11    # "appContext":Landroid/app/ContextImpl;
    .restart local v12    # "agent":Ljava/lang/String;
    .restart local v13    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v15    # "mgr":Landroid/app/IActivityManager;
    .restart local v18    # "is24Hr":Ljava/lang/Boolean;
    .restart local v19    # "timestampApplicationOnCreateNs":J
    .restart local v21    # "use24HourSetting":Ljava/lang/String;
    .restart local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v24    # "isAppDebuggable":Z
    .restart local v25    # "isAppProfileable":Z
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catchall_486
    move-exception v0

    goto :goto_49f

    .line 7805
    .restart local v22    # "app":Landroid/app/Application;
    :catchall_488
    move-exception v0

    goto :goto_484

    .line 7842
    .end local v18    # "is24Hr":Ljava/lang/Boolean;
    .end local v22    # "app":Landroid/app/Application;
    .end local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    .restart local v3    # "is24Hr":Ljava/lang/Boolean;
    .restart local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v5    # "isAppDebuggable":Z
    .restart local v6    # "isAppProfileable":Z
    :catchall_48a
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .end local v3    # "is24Hr":Ljava/lang/Boolean;
    .end local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v5    # "isAppDebuggable":Z
    .end local v6    # "isAppProfileable":Z
    .restart local v18    # "is24Hr":Ljava/lang/Boolean;
    .restart local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v24    # "isAppDebuggable":Z
    .restart local v25    # "isAppProfileable":Z
    goto :goto_49f

    .end local v18    # "is24Hr":Ljava/lang/Boolean;
    .end local v21    # "use24HourSetting":Ljava/lang/String;
    .end local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    .local v2, "use24HourSetting":Ljava/lang/String;
    .restart local v3    # "is24Hr":Ljava/lang/Boolean;
    .restart local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v5    # "isAppDebuggable":Z
    .restart local v6    # "isAppProfileable":Z
    :catchall_494
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    .end local v2    # "use24HourSetting":Ljava/lang/String;
    .end local v3    # "is24Hr":Ljava/lang/Boolean;
    .end local v4    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v5    # "isAppDebuggable":Z
    .end local v6    # "isAppProfileable":Z
    .restart local v18    # "is24Hr":Ljava/lang/Boolean;
    .restart local v21    # "use24HourSetting":Ljava/lang/String;
    .restart local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v24    # "isAppDebuggable":Z
    .restart local v25    # "isAppProfileable":Z
    :goto_49f
    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v14, 0x1b

    if-lt v2, v14, :cond_4b1

    .line 7843
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b4

    .line 7844
    :cond_4b1
    invoke-static/range {v23 .. v23}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7846
    :cond_4b4
    throw v0

    .line 7724
    .end local v13    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v18    # "is24Hr":Ljava/lang/Boolean;
    .end local v19    # "timestampApplicationOnCreateNs":J
    .end local v21    # "use24HourSetting":Ljava/lang/String;
    .end local v23    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    .restart local v2    # "use24HourSetting":Ljava/lang/String;
    .restart local v3    # "is24Hr":Ljava/lang/Boolean;
    .restart local v5    # "isAppDebuggable":Z
    .restart local v6    # "isAppProfileable":Z
    :catchall_4b5
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v18, v3

    move/from16 v24, v5

    move/from16 v25, v6

    .end local v2    # "use24HourSetting":Ljava/lang/String;
    .end local v3    # "is24Hr":Ljava/lang/Boolean;
    .end local v5    # "isAppDebuggable":Z
    .end local v6    # "isAppProfileable":Z
    .restart local v18    # "is24Hr":Ljava/lang/Boolean;
    .restart local v21    # "use24HourSetting":Ljava/lang/String;
    .restart local v24    # "isAppDebuggable":Z
    .restart local v25    # "isAppProfileable":Z
    :goto_4be
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 7725
    throw v0

    .line 7632
    .end local v7    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v8    # "isSdkSandbox":Z
    .end local v11    # "appContext":Landroid/app/ContextImpl;
    .end local v15    # "mgr":Landroid/app/IActivityManager;
    .end local v18    # "is24Hr":Ljava/lang/Boolean;
    .end local v21    # "use24HourSetting":Ljava/lang/String;
    .end local v24    # "isAppDebuggable":Z
    .end local v25    # "isAppProfileable":Z
    :catchall_4c2
    move-exception v0

    :try_start_4c3
    monitor-exit v2
    :try_end_4c4
    .catchall {:try_start_4c3 .. :try_end_4c4} :catchall_4c2

    throw v0
.end method

.method private greylist-max-o handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .registers 11
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .line 5301
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityThread$CreateServiceData;

    .line 5302
    .local v1, "createData":Landroid/app/ActivityThread$CreateServiceData;
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Service;

    .line 5305
    .local v2, "s":Landroid/app/Service;
    if-eqz v2, :cond_9e

    .line 5307
    :try_start_18
    iget-object v0, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5308
    iget-object v0, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v3, v1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    .line 5309
    invoke-virtual {v2}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 5308
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_30} :catch_61

    .line 5311
    :try_start_30
    iget-boolean v0, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v0, :cond_46

    .line 5312
    iget-object v0, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 5313
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v0}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 5315
    .end local v0    # "binder":Landroid/os/IBinder;
    goto :goto_59

    .line 5316
    :cond_46
    iget-object v0, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 5317
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v8, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;IIILandroid/content/Intent;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_59} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_59} :catch_61

    .line 5322
    :goto_59
    nop

    .line 5329
    goto :goto_9e

    .line 5320
    :catch_5b
    move-exception v0

    .line 5321
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_5c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v1    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .end local v2    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    throw v3
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_61} :catch_61

    .line 5323
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .restart local v2    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    :catch_61
    move-exception v0

    .line 5324
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_6b

    goto :goto_9e

    .line 5325
    :cond_6b
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5327
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 5331
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9e
    :goto_9e
    return-void
.end method

.method private greylist-max-o handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 14
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 5103
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5104
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 5103
    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5105
    .local v0, "requestedPackage":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_f8

    const-string v3, "ActivityThread"

    if-eq v1, v2, :cond_39

    .line 5106
    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asked to instantiate non-matching package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_38} :catch_f8

    .line 5108
    return-void

    .line 5112
    .end local v0    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :cond_39
    nop

    .line 5115
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5118
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5119
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-object v1, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 5120
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_4d

    .line 5121
    const-string v2, "Asked to create backup agent for nonexistent package"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    return-void

    .line 5125
    :cond_4d
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->getBackupAgentName(Landroid/app/ActivityThread$CreateBackupAgentData;)Ljava/lang/String;

    move-result-object v2

    .line 5128
    .local v2, "classname":Ljava/lang/String;
    const/4 v4, 0x0

    .line 5129
    .local v4, "binder":Landroid/os/IBinder;
    :try_start_52
    iget v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-direct {p0, v5}, Landroid/app/ActivityThread;->getBackupAgentsForUser(I)Landroid/util/ArrayMap;

    move-result-object v5

    .line 5130
    .local v5, "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/backup/BackupAgent;

    .line 5131
    .local v6, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v6, :cond_65

    .line 5136
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v3
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_64} :catch_d0

    .end local v4    # "binder":Landroid/os/IBinder;
    .local v3, "binder":Landroid/os/IBinder;
    goto :goto_be

    .line 5141
    .end local v3    # "binder":Landroid/os/IBinder;
    .restart local v4    # "binder":Landroid/os/IBinder;
    :cond_65
    :try_start_65
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 5142
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v7, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/backup/BackupAgent;

    move-object v6, v8

    .line 5145
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v8

    .line 5146
    .local v8, "context":Landroid/app/ContextImpl;
    invoke-virtual {v8, v6}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 5147
    invoke-virtual {v6, v8}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 5149
    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    iget v10, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupDestination:I

    iget v11, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 5150
    invoke-static {v11}, Landroid/app/ActivityThread;->getOperationTypeFromBackupMode(I)I

    move-result v11

    .line 5149
    invoke-virtual {v6, v9, v10, v11}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;II)V

    .line 5151
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v9

    move-object v4, v9

    .line 5152
    invoke-virtual {v5, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_97} :catch_99

    .line 5163
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    .end local v8    # "context":Landroid/app/ContextImpl;
    move-object v3, v4

    goto :goto_be

    .line 5153
    :catch_99
    move-exception v7

    .line 5156
    .local v7, "e":Ljava/lang/Exception;
    :try_start_9a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Agent threw during creation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    iget v3, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v8, 0x2

    if-eq v3, v8, :cond_bd

    iget v3, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_bb

    goto :goto_bd

    .line 5160
    :cond_bb
    nop

    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "classname":Ljava/lang/String;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    throw v7
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_bd} :catch_d0

    .line 5168
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "classname":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    :cond_bd
    :goto_bd
    move-object v3, v4

    .end local v4    # "binder":Landroid/os/IBinder;
    .restart local v3    # "binder":Landroid/os/IBinder;
    :goto_be
    :try_start_be
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-interface {v4, v1, v3, v7}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_c7} :catch_ca
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c7} :catch_d0

    .line 5171
    nop

    .line 5175
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v5    # "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    .end local v6    # "agent":Landroid/app/backup/BackupAgent;
    nop

    .line 5176
    return-void

    .line 5169
    .restart local v3    # "binder":Landroid/os/IBinder;
    .restart local v5    # "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    .restart local v6    # "agent":Landroid/app/backup/BackupAgent;
    :catch_ca
    move-exception v4

    .line 5170
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_cb
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "classname":Ljava/lang/String;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    throw v7
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d0} :catch_d0

    .line 5172
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    .end local v6    # "agent":Landroid/app/backup/BackupAgent;
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "classname":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    :catch_d0
    move-exception v3

    .line 5173
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create BackupAgent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5174
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 5110
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "classname":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_f8
    move-exception v0

    .line 5111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .registers 19
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    .line 5238
    move-object/from16 v3, p0

    move-object/from16 v8, p1

    invoke-virtual {v3}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5240
    iget-object v0, v8, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v9

    .line 5241
    .local v9, "packageInfo":Landroid/app/LoadedApk;
    const/4 v1, 0x0

    .line 5245
    .local v1, "service":Landroid/app/Service;
    :try_start_10
    iget-object v0, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v2, 0x0

    invoke-virtual {v9, v2, v0}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v6

    .line 5248
    .local v6, "app":Landroid/app/Application;
    iget-object v0, v8, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 5249
    iget-object v0, v8, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v10, v0

    .local v0, "cl":Ljava/lang/ClassLoader;
    goto :goto_2c

    .line 5251
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_27
    invoke-virtual {v9}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v10, v0

    .line 5253
    .local v10, "cl":Ljava/lang/ClassLoader;
    :goto_2c
    invoke-virtual {v9}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v0

    iget-object v4, v8, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v5, v8, Landroid/app/ActivityThread$CreateServiceData;->intent:Landroid/content/Intent;

    .line 5254
    invoke-virtual {v0, v10, v4, v5}, Landroid/app/AppComponentFactory;->instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object v0

    move-object v1, v0

    .line 5255
    nop

    .line 5256
    invoke-virtual {v1, v3, v9}, Landroid/app/Service;->createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;

    move-result-object v0

    .line 5255
    invoke-static {v0}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 5257
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v4, v8, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v4, :cond_55

    .line 5258
    iget-object v4, v8, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/ContextImpl;

    move-object v0, v4

    .line 5260
    :cond_55
    iget-object v4, v8, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v4, :cond_71

    iget-object v4, v8, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_71

    .line 5261
    iget-object v4, v8, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 5262
    .local v4, "attributionTag":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/ContextImpl;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/ContextImpl;

    move-object v0, v5

    move-object v4, v0

    goto :goto_72

    .line 5266
    .end local v4    # "attributionTag":Ljava/lang/String;
    :cond_71
    move-object v4, v0

    .end local v0    # "context":Landroid/app/ContextImpl;
    .local v4, "context":Landroid/app/ContextImpl;
    :goto_72
    invoke-virtual {v4}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5267
    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v5

    new-array v2, v2, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/res/loader/ResourcesLoader;

    .line 5266
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 5269
    invoke-virtual {v4, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 5270
    iget-object v0, v8, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v5, v8, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 5271
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    .line 5270
    move-object v2, v4

    move-object v4, v0

    .end local v4    # "context":Landroid/app/ContextImpl;
    .local v2, "context":Landroid/app/ContextImpl;
    invoke-virtual/range {v1 .. v7}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 5272
    invoke-virtual {v1}, Landroid/app/Service;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 5273
    iget v0, v3, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    if-nez v0, :cond_ab

    .line 5274
    iget v0, v3, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    invoke-virtual {v1, v0}, Landroid/app/Service;->updateDeviceId(I)V

    goto :goto_c2

    .line 5276
    :cond_ab
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v2, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 5277
    .local v0, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    if-eqz v0, :cond_c2

    iget v4, v3, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    invoke-virtual {v0, v4}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 5278
    iget v4, v3, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    invoke-virtual {v1, v4}, Landroid/app/Service;->updateDeviceId(I)V

    .line 5282
    .end local v0    # "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    :cond_c2
    :goto_c2
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 5283
    iget-object v0, v3, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v4, v8, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5284
    iget-object v0, v3, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v4, v8, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_d3} :catch_e9

    .line 5286
    :try_start_d3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v11

    iget-object v12, v8, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v11 .. v16}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;IIILandroid/content/Intent;)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_e1} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_e1} :catch_e9

    .line 5290
    nop

    .line 5297
    .end local v2    # "context":Landroid/app/ContextImpl;
    .end local v6    # "app":Landroid/app/Application;
    .end local v10    # "cl":Ljava/lang/ClassLoader;
    goto :goto_f2

    .line 5288
    .restart local v2    # "context":Landroid/app/ContextImpl;
    .restart local v6    # "app":Landroid/app/Application;
    .restart local v10    # "cl":Ljava/lang/ClassLoader;
    :catch_e3
    move-exception v0

    .line 5289
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_e4
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v1    # "service":Landroid/app/Service;
    .end local v9    # "packageInfo":Landroid/app/LoadedApk;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$CreateServiceData;
    throw v4
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e9} :catch_e9

    .line 5291
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "context":Landroid/app/ContextImpl;
    .end local v6    # "app":Landroid/app/Application;
    .end local v10    # "cl":Ljava/lang/ClassLoader;
    .restart local v1    # "service":Landroid/app/Service;
    .restart local v9    # "packageInfo":Landroid/app/LoadedApk;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$CreateServiceData;
    :catch_e9
    move-exception v0

    .line 5292
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 5298
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f2
    return-void

    .line 5293
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_f3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5295
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private greylist-max-o handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 10
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 5208
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5209
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-object v1, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 5210
    .local v1, "packageName":Ljava/lang/String;
    iget v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-direct {p0, v2}, Landroid/app/ActivityThread;->getBackupAgentsForUser(I)Landroid/util/ArrayMap;

    move-result-object v2

    .line 5211
    .local v2, "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/backup/BackupAgent;

    .line 5212
    .local v3, "agent":Landroid/app/backup/BackupAgent;
    const-string v4, "ActivityThread"

    if-eqz v3, :cond_3c

    .line 5214
    :try_start_18
    invoke-virtual {v3}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 5218
    goto :goto_38

    .line 5215
    :catch_1c
    move-exception v5

    .line 5216
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5217
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 5219
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_38
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 5221
    :cond_3c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to destroy unknown backup agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5223
    :goto_52
    return-void
.end method

.method private greylist-max-o handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 5410
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5412
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5413
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_36

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_36

    .line 5414
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 5415
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5416
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/app/Activity;->dumpInternal(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5417
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_40

    .line 5420
    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_36
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5421
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5422
    nop

    .line 5423
    return-void

    .line 5420
    :catchall_40
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5421
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5422
    throw v1
.end method

.method private blacklist handleDumpGfxInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 5364
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5366
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/view/ThreadedRenderer;->handleDumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_1b
    .catchall {:try_start_4 .. :try_end_f} :catchall_19

    .line 5370
    nop

    :goto_10
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5371
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5372
    goto :goto_25

    .line 5370
    :catchall_19
    move-exception v1

    goto :goto_26

    .line 5367
    :catch_1b
    move-exception v1

    .line 5368
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v2, "ActivityThread"

    const-string v3, "Caught exception from dumpGfxInfo()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 5370
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_10

    .line 5373
    :goto_25
    return-void

    .line 5370
    :goto_26
    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5371
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5372
    throw v1
.end method

.method static greylist-max-o handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V
    .registers 6
    .param p0, "dhd"    # Landroid/app/ActivityThread$DumpHeapData;

    .line 7240
    const-string v0, "ActivityThread"

    iget-boolean v1, p0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    if-eqz v1, :cond_f

    .line 7241
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 7242
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 7243
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 7245
    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_11} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_11} :catch_46

    .line 7246
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_11
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    if-eqz v2, :cond_21

    .line 7247
    iget-object v2, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread$DumpHeapData;->dumpBitmaps:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    goto :goto_34

    .line 7248
    :cond_21
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    if-eqz v2, :cond_2d

    .line 7249
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpNativeMallocInfo(Ljava/io/FileDescriptor;)V

    goto :goto_34

    .line 7251
    :cond_2d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_3a

    .line 7253
    :goto_34
    if-eqz v1, :cond_76

    :try_start_36
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_39} :catch_46

    goto :goto_76

    .line 7245
    :catchall_3a
    move-exception v2

    if-eqz v1, :cond_45

    :try_start_3d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v3

    :try_start_42
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "dhd":Landroid/app/ActivityThread$DumpHeapData;
    :cond_45
    :goto_45
    throw v2
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_46} :catch_46

    .line 7260
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "dhd":Landroid/app/ActivityThread$DumpHeapData;
    :catch_46
    move-exception v1

    .line 7262
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Heap dumper threw a runtime exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 7253
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_4d
    move-exception v1

    .line 7254
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    if-eqz v2, :cond_71

    .line 7255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Managed heap dump failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_76

    .line 7258
    :cond_71
    const-string v2, "Failed to dump heap"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7263
    .end local v1    # "e":Ljava/io/IOException;
    :cond_76
    :goto_76
    nop

    .line 7265
    :goto_77
    :try_start_77
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_80} :catch_8c

    .line 7268
    nop

    .line 7269
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_8b

    .line 7270
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 7272
    :cond_8b
    return-void

    .line 7266
    :catch_8c
    move-exception v0

    .line 7267
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 5426
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5428
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5429
    .local v1, "r":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v1, :cond_34

    iget-object v2, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v2, :cond_34

    .line 5430
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 5431
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5432
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5433
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3e

    .line 5436
    .end local v1    # "r":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_34
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5437
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5438
    nop

    .line 5439
    return-void

    .line 5436
    :catchall_3e
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5437
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5438
    throw v1
.end method

.method private blacklist handleDumpResources(Landroid/app/ActivityThread$DumpResourcesData;)V
    .registers 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpResourcesData;

    .line 5392
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5394
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 5395
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5397
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/res/Resources;->dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5398
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 5399
    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const-string v3, "-refresh"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/res/ResourceTimer;->dumpTimers(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 5400
    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    if-eqz v2, :cond_35

    .line 5401
    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3f

    .line 5404
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_35
    iget-object v1, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5405
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5406
    nop

    .line 5407
    return-void

    .line 5404
    :catchall_3f
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5405
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5406
    throw v1
.end method

.method private greylist-max-o handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 5376
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5378
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 5379
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_2e

    .line 5380
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 5381
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 5382
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5383
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_38

    .line 5386
    .end local v1    # "s":Landroid/app/Service;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_2e
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5387
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5388
    nop

    .line 5389
    return-void

    .line 5386
    :catchall_38
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5387
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5388
    throw v1
.end method

.method private greylist-max-o handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4708
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4709
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_f

    .line 4710
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    .line 4712
    :cond_f
    return-void
.end method

.method private blacklist handleFinishInstrumentationWithoutRestart()V
    .registers 4

    .line 8107
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    .line 8109
    .local v0, "loadedApk":Landroid/app/LoadedApk;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 8110
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 8111
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMDebug;->removeApplication(Ljava/lang/String;)V

    .line 8114
    :cond_1b
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1}, Landroid/app/Instrumentation;->onDestroy()V

    .line 8115
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 8116
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 8117
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 8118
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 8119
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 8120
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 8121
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 8122
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    .line 8123
    return-void
.end method

.method private blacklist handleInstrumentWithoutRestart(Landroid/app/ActivityThread$AppBindData;)V
    .registers 8
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7994
    :try_start_0
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 7995
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 7996
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    .line 7997
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    .line 7998
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 7999
    invoke-static {p0, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v1

    .line 8001
    .local v1, "appContext":Landroid/app/ContextImpl;
    invoke-direct {p0, v0, p1, v1}, Landroid/app/ActivityThread;->initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_4f

    .line 8004
    :try_start_1c
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_25

    .line 8009
    nop

    .line 8013
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v1    # "appContext":Landroid/app/ContextImpl;
    goto :goto_57

    .line 8005
    .restart local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v1    # "appContext":Landroid/app/ContextImpl;
    :catch_25
    move-exception v2

    .line 8006
    .local v2, "e":Ljava/lang/Exception;
    :try_start_26
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onCreate() of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8008
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    throw v3
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4f} :catch_4f

    .line 8011
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v1    # "appContext":Landroid/app/ContextImpl;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catch_4f
    move-exception v0

    .line 8012
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    const-string v2, "Error in handleInstrumentWithoutRestart"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8014
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_57
    return-void
.end method

.method private greylist-max-o handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 4897
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4898
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1e

    .line 4899
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 4900
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V

    .line 4901
    if-nez p2, :cond_19

    .line 4902
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    goto :goto_1e

    .line 4904
    :cond_19
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    .line 4907
    :cond_1e
    :goto_1e
    return-void
.end method

.method private blacklist handlePerformDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .registers 11
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "actionId"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p5, "resultCallback"    # Landroid/os/RemoteCallback;

    .line 4669
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4670
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 4671
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v2

    .line 4672
    .local v2, "lifecycleState":I
    const/4 v3, 0x2

    if-lt v2, v3, :cond_2a

    const/4 v3, 0x5

    if-lt v2, v3, :cond_16

    goto :goto_2a

    .line 4676
    :cond_16
    if-eqz p3, :cond_1a

    move-object v1, p3

    goto :goto_1c

    :cond_1a
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 4677
    .local v1, "nonNullArguments":Landroid/os/Bundle;
    :goto_1c
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4678
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/app/ActivityThread$$ExternalSyntheticLambda9;

    invoke-direct {v4, p5}, Landroid/app/ActivityThread$$ExternalSyntheticLambda9;-><init>(Landroid/os/RemoteCallback;)V

    .line 4677
    invoke-virtual {v3, p2, v1, p4, v4}, Landroid/app/Activity;->onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 4679
    .end local v1    # "nonNullArguments":Landroid/os/Bundle;
    .end local v2    # "lifecycleState":I
    goto :goto_31

    .line 4673
    .restart local v2    # "lifecycleState":I
    :cond_2a
    :goto_2a
    invoke-virtual {p5, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4674
    return-void

    .line 4680
    .end local v2    # "lifecycleState":I
    :cond_2e
    invoke-virtual {p5, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4682
    :goto_31
    return-void
.end method

.method private greylist-max-p handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .registers 14
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    .line 4979
    const-string v0, ": "

    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4981
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 4983
    .local v1, "component":Ljava/lang/String;
    iget-object v2, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    .line 4985
    .local v2, "packageInfo":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 4991
    .local v3, "mgr":Landroid/app/IActivityManager;
    :try_start_1b
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v4

    .line 4992
    .local v4, "app":Landroid/app/Application;
    invoke-virtual {v4}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/ContextImpl;

    .line 4993
    .local v6, "context":Landroid/app/ContextImpl;
    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v7, :cond_39

    .line 4994
    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/ContextImpl;

    move-object v6, v7

    .line 4996
    :cond_39
    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v7, :cond_53

    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_53

    .line 4997
    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    aget-object v7, v7, v5

    .line 4998
    .local v7, "attributionTag":Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/app/ContextImpl;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/ContextImpl;

    move-object v6, v8

    .line 5000
    .end local v7    # "attributionTag":Ljava/lang/String;
    :cond_53
    invoke-virtual {p0, v6, p1}, Landroid/app/ActivityThread;->createDisplayContextIfNeeded(Landroid/content/Context;Landroid/app/ActivityThread$ReceiverData;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/ContextImpl;

    .line 5001
    .end local v6    # "context":Landroid/app/ContextImpl;
    .local v7, "context":Landroid/app/ContextImpl;
    invoke-virtual {v7}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 5002
    .local v6, "cl":Ljava/lang/ClassLoader;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5003
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 5004
    invoke-static {v9}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v9

    if-nez v9, :cond_74

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-static {v9}, Landroid/app/ActivityThread;->isProtectedBroadcast(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_75

    :cond_74
    const/4 v5, 0x1

    .line 5005
    :cond_75
    invoke-virtual {v7}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    .line 5003
    invoke-virtual {v8, v5, v9}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 5006
    invoke-virtual {p1, v6}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5007
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v5

    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 5008
    invoke-virtual {v5, v6, v8, v9}, Landroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object v5
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_8d} :catch_ec

    .line 5016
    .end local v6    # "cl":Ljava/lang/ClassLoader;
    .local v5, "receiver":Landroid/content/BroadcastReceiver;
    nop

    .line 5027
    const/4 v6, 0x0

    :try_start_8f
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5028
    invoke-virtual {v5, p1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 5029
    invoke-virtual {v7}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a2} :catch_a5
    .catchall {:try_start_8f .. :try_end_a2} :catchall_a3

    goto :goto_b1

    .line 5041
    :catchall_a3
    move-exception v0

    goto :goto_e6

    .line 5031
    :catch_a5
    move-exception v8

    .line 5034
    .local v8, "e":Ljava/lang/Exception;
    :try_start_a6
    invoke-virtual {p1, v3}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 5035
    iget-object v9, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v9, v5, v8}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v9
    :try_end_af
    .catchall {:try_start_a6 .. :try_end_af} :catchall_a3

    if-eqz v9, :cond_c1

    .line 5041
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_b1
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5042
    nop

    .line 5044
    invoke-virtual {v5}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 5045
    invoke-virtual {p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    .line 5047
    :cond_c0
    return-void

    .line 5036
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_c1
    :try_start_c1
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to start receiver "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5038
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "packageInfo":Landroid/app/LoadedApk;
    .end local v3    # "mgr":Landroid/app/IActivityManager;
    .end local v4    # "app":Landroid/app/Application;
    .end local v5    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v7    # "context":Landroid/app/ContextImpl;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$ReceiverData;
    throw v9
    :try_end_e6
    .catchall {:try_start_c1 .. :try_end_e6} :catchall_a3

    .line 5041
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v1    # "component":Ljava/lang/String;
    .restart local v2    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v3    # "mgr":Landroid/app/IActivityManager;
    .restart local v4    # "app":Landroid/app/Application;
    .restart local v5    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v7    # "context":Landroid/app/ContextImpl;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$ReceiverData;
    :goto_e6
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5042
    throw v0

    .line 5009
    .end local v4    # "app":Landroid/app/Application;
    .end local v5    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v7    # "context":Landroid/app/ContextImpl;
    :catch_ec
    move-exception v4

    .line 5012
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v3}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 5013
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5015
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private blacklist handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;Ljava/lang/String;)V
    .registers 14
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p4, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p5, "startsNotResumed"    # Z
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;
    .param p8, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/servertransaction/PendingTransactionActions;",
            "Z",
            "Landroid/content/res/Configuration;",
            "Landroid/window/ActivityWindowInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6577
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 6579
    .local v0, "customIntent":Landroid/content/Intent;
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_d

    .line 6580
    invoke-direct {p0, p1, v3, p8, v2}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    .line 6582
    :cond_d
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    const/4 v4, 0x1

    if-nez v1, :cond_15

    .line 6583
    invoke-direct {p0, p1, v4, p8}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 6586
    :cond_15
    invoke-virtual {p0, p1, v3, v4, p8}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V

    .line 6588
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6589
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 6590
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 6592
    if-eqz p2, :cond_2c

    .line 6593
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v1, :cond_27

    .line 6594
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    goto :goto_2c

    .line 6596
    :cond_27
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6599
    :cond_2c
    :goto_2c
    if-eqz p3, :cond_3a

    .line 6600
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v1, :cond_35

    .line 6601
    iput-object p3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_3a

    .line 6603
    :cond_35
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6606
    :cond_3a
    :goto_3a
    iput-boolean p5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 6607
    iput-object p6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 6608
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v1

    invoke-virtual {v1, p7}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 6610
    iget v1, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    invoke-virtual {p0, p1, p4, v1, v0}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ILandroid/content/Intent;)Landroid/app/Activity;

    .line 6611
    return-void
.end method

.method private blacklist handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 16
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/os/RemoteCallback;
    .param p5, "retryCount"    # I

    .line 4611
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4612
    .local v7, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v0, 0x0

    const-string v3, "ActivityThread"

    if-nez v7, :cond_29

    .line 4613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestDirectActions(): no activity for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    invoke-virtual {p4, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4615
    return-void

    .line 4617
    :cond_29
    invoke-virtual {v7}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v8

    .line 4618
    .local v8, "lifecycleState":I
    const/4 v4, 0x2

    const-string v6, "): wrong lifecycle: "

    const-string/jumbo v9, "requestDirectActions("

    if-ge v8, v4, :cond_73

    .line 4620
    if-lez p5, :cond_53

    .line 4621
    iget-object v9, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda7;-><init>()V

    add-int/lit8 v3, p5, -0x1

    .line 4624
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4622
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4621
    const-wide/16 v1, 0xc8

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/ActivityThread$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4625
    return-void

    .line 4627
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4628
    invoke-virtual {p4, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4629
    return-void

    .line 4631
    :cond_73
    const/4 v1, 0x5

    if-lt v8, v1, :cond_96

    .line 4632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    invoke-virtual {p4, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4634
    return-void

    .line 4636
    :cond_96
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_ac

    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 4637
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4638
    invoke-interface {p2}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_ca

    .line 4639
    :cond_ac
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_b9

    .line 4640
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->destroy()V

    .line 4642
    :cond_b9
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/app/VoiceInteractor;

    iget-object v2, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4643
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p2, v2, v3, v4}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v1, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 4645
    :cond_ca
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda8;

    invoke-direct {v1, v7, p4}, Landroid/app/ActivityThread$$ExternalSyntheticLambda8;-><init>(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/Activity;->onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 4662
    return-void
.end method

.method private greylist-max-o handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;

    .line 8720
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "main"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8721
    .local v0, "main":Ljava/lang/reflect/Method;
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_1b} :catch_20

    .line 8724
    nop

    .line 8726
    .end local v0    # "main":Ljava/lang/reflect/Method;
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 8727
    return-void

    .line 8722
    :catch_20
    move-exception v0

    .line 8723
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "runIsolatedEntryPoint failed"

    invoke-direct {v1, v2, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .registers 11
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    .line 5442
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityThread$CreateServiceData;

    .line 5443
    .local v1, "createData":Landroid/app/ActivityThread$CreateServiceData;
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Service;

    .line 5444
    .local v2, "s":Landroid/app/Service;
    if-eqz v2, :cond_a1

    .line 5446
    :try_start_18
    iget-object v0, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v0, :cond_34

    .line 5447
    iget-object v0, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5448
    iget-object v0, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget-object v3, v1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    .line 5449
    invoke-virtual {v2}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 5448
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 5452
    :cond_34
    iget-boolean v0, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    if-nez v0, :cond_44

    .line 5453
    iget-object v0, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    move v7, v0

    .local v0, "res":I
    goto :goto_4c

    .line 5455
    .end local v0    # "res":I
    :cond_44
    iget-object v0, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 5456
    const/16 v0, 0x3e8

    move v7, v0

    .line 5459
    .local v7, "res":I
    :goto_4c
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4f} :catch_64

    .line 5462
    :try_start_4f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v3 .. v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;IIILandroid/content/Intent;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5c} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5c} :catch_64

    .line 5466
    nop

    .line 5473
    .end local v7    # "res":I
    goto :goto_a1

    .line 5464
    .restart local v7    # "res":I
    :catch_5e
    move-exception v0

    .line 5465
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v1    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .end local v2    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$ServiceArgsData;
    throw v3
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_64

    .line 5467
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "res":I
    .restart local v1    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .restart local v2    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$ServiceArgsData;
    :catch_64
    move-exception v0

    .line 5468
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_6e

    goto :goto_a1

    .line 5469
    :cond_6e
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5471
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 5475
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a1
    :goto_a1
    return-void
.end method

.method private blacklist handleSetContentCaptureOptionsCallback(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7963
    iget-object v0, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    if-eqz v0, :cond_5

    .line 7964
    return-void

    .line 7967
    :cond_5
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7968
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_e

    .line 7969
    return-void

    .line 7972
    :cond_e
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v1

    .line 7973
    .local v1, "service":Landroid/view/contentcapture/IContentCaptureManager;
    new-instance v2, Landroid/app/ActivityThread$5;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$5;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 7983
    :try_start_19
    iget-object v2, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    invoke-interface {v1, p1, v2}, Landroid/view/contentcapture/IContentCaptureManager;->registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 7989
    goto :goto_3c

    .line 7985
    :catch_1f
    move-exception v2

    .line 7986
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerContentCaptureOptionsCallback() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityThread"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7988
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 7990
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3c
    return-void
.end method

.method private greylist-max-o handleSetCoreSettings(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .line 6111
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6112
    :try_start_3
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 6113
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 6114
    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    .line 6115
    return-void

    .line 6113
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method private greylist-max-o handleStartBinderTracking()V
    .registers 1

    .line 4715
    invoke-static {}, Landroid/os/Binder;->enableStackTracking()V

    .line 4716
    return-void
.end method

.method private greylist-max-o handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 4720
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->disableStackTracking()V

    .line 4721
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/TransactionTracker;->writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_16

    .line 4723
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4724
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4725
    nop

    .line 4726
    return-void

    .line 4723
    :catchall_16
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4724
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4725
    throw v0
.end method

.method private greylist-max-o handleStopService(Landroid/os/IBinder;)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5478
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5479
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Service;

    .line 5480
    .local v1, "s":Landroid/app/Service;
    const-string v2, "ActivityThread"

    if-eqz v1, :cond_97

    .line 5483
    :try_start_12
    invoke-virtual {v1}, Landroid/app/Service;->onDestroy()V

    .line 5484
    invoke-virtual {v1}, Landroid/app/Service;->detachAndCleanUp()V

    .line 5485
    invoke-virtual {v1}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    move-object v3, v0

    .line 5486
    .local v3, "context":Landroid/content/Context;
    instance-of v0, v3, Landroid/app/ContextImpl;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_4e

    if-eqz v0, :cond_31

    .line 5487
    :try_start_21
    invoke-virtual {v1}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 5488
    .local v0, "who":Ljava/lang/String;
    move-object v4, v3

    check-cast v4, Landroid/app/ContextImpl;

    const-string v5, "Service"

    invoke-virtual {v4, v0, v5}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_2e

    goto :goto_31

    .line 5499
    .end local v0    # "who":Ljava/lang/String;
    .end local v3    # "context":Landroid/content/Context;
    :catch_2e
    move-exception v0

    move-object v5, p1

    goto :goto_50

    .line 5491
    .restart local v3    # "context":Landroid/content/Context;
    :cond_31
    :goto_31
    :try_start_31
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_4e

    .line 5494
    :try_start_34
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_38} :catch_46
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_4e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v5, p1

    .end local p1    # "token":Landroid/os/IBinder;
    .local v5, "token":Landroid/os/IBinder;
    :try_start_3d
    invoke-interface/range {v4 .. v9}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;IIILandroid/content/Intent;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_43
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    .line 5498
    goto :goto_6f

    .line 5499
    .end local v3    # "context":Landroid/content/Context;
    :catch_41
    move-exception v0

    goto :goto_50

    .line 5496
    .restart local v3    # "context":Landroid/content/Context;
    :catch_43
    move-exception v0

    move-object p1, v0

    goto :goto_49

    .end local v5    # "token":Landroid/os/IBinder;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catch_46
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    .line 5497
    .restart local v5    # "token":Landroid/os/IBinder;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_49
    :try_start_49
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    .end local v1    # "s":Landroid/app/Service;
    .end local v5    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Landroid/app/ActivityThread;
    throw v0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_41

    .line 5499
    .end local v3    # "context":Landroid/content/Context;
    .restart local v1    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .local p1, "token":Landroid/os/IBinder;
    :catch_4e
    move-exception v0

    move-object v5, p1

    .line 5500
    .end local p1    # "token":Landroid/os/IBinder;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "token":Landroid/os/IBinder;
    :goto_50
    iget-object p1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p1, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 5505
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleStopService: exception for "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5506
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6f
    goto :goto_b5

    .line 5501
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_70
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to stop service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5503
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 5508
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "token":Landroid/os/IBinder;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_97
    move-object v5, p1

    .end local p1    # "token":Landroid/os/IBinder;
    .restart local v5    # "token":Landroid/os/IBinder;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "handleStopService: token="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not found."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5511
    :goto_b5
    return-void
.end method

.method private blacklist handleTimeoutService(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startId"    # I

    .line 5514
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 5515
    .local v0, "s":Landroid/app/Service;
    const-string v1, "ActivityThread"

    if-eqz v0, :cond_58

    .line 5523
    :try_start_c
    invoke-virtual {v0, p2}, Landroid/app/Service;->callOnTimeout(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    .line 5531
    :goto_f
    goto :goto_75

    .line 5524
    :catch_10
    move-exception v2

    .line 5525
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v0, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 5530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTimeoutService: exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_f

    .line 5526
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_31
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call onTimeout on service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5528
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5533
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleTimeoutService: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5535
    :goto_75
    return-void
.end method

.method private blacklist handleTimeoutServiceForType(Landroid/os/IBinder;II)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startId"    # I
    .param p3, "fgsType"    # I

    .line 5539
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 5540
    .local v0, "s":Landroid/app/Service;
    const-string v1, "ActivityThread"

    if-eqz v0, :cond_54

    .line 5544
    :try_start_c
    invoke-virtual {v0, p2, p3}, Landroid/app/Service;->callOnTimeLimitExceeded(II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    .line 5551
    :goto_f
    goto :goto_71

    .line 5545
    :catch_10
    move-exception v2

    .line 5546
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v0, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 5550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTimeoutServiceForType: exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_f

    .line 5547
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_31
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call onTimeLimitExceeded on service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5553
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleTimeoutServiceForType: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5555
    :goto_71
    return-void
.end method

.method private greylist-max-o handleTrimMemory(I)V
    .registers 8
    .param p1, "level"    # I

    .line 7413
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 7414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trimMemory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7419
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/app/Flags;->skipBgMemTrimOnFgApp()Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, p0, Landroid/app/ActivityThread;->mLastProcessState:I
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_57

    const/4 v3, 0x6

    if-gt v2, v3, :cond_32

    const/16 v2, 0x28

    if-lt p1, v2, :cond_32

    .line 7433
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7422
    return-void

    .line 7425
    :cond_32
    nop

    .line 7426
    const/4 v2, 0x1

    :try_start_34
    invoke-virtual {p0, v2}, Landroid/app/ActivityThread;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 7428
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7429
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3d
    if-ge v4, v3, :cond_4b

    .line 7430
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentCallbacks2;

    invoke-interface {v5, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_57

    .line 7429
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 7433
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_4b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7434
    nop

    .line 7436
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 7437
    return-void

    .line 7433
    :catchall_57
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7434
    throw v2
.end method

.method private greylist-max-o handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .registers 12
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .line 5334
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityThread$CreateServiceData;

    .line 5335
    .local v1, "createData":Landroid/app/ActivityThread$CreateServiceData;
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Service;

    .line 5336
    .local v2, "s":Landroid/app/Service;
    if-eqz v2, :cond_98

    .line 5338
    :try_start_18
    iget-object v0, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5339
    iget-object v0, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v3, v1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    .line 5340
    invoke-virtual {v2}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 5339
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 5341
    iget-object v0, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_36} :catch_5b

    move v3, v0

    .line 5343
    .local v3, "doRebind":Z
    if-eqz v3, :cond_45

    .line 5344
    :try_start_39
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v0, v4, v5}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;)V

    goto :goto_53

    .line 5347
    :cond_45
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v9, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;IIILandroid/content/Intent;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_53} :catch_55
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_53} :catch_5b

    .line 5352
    :goto_53
    nop

    .line 5359
    .end local v3    # "doRebind":Z
    goto :goto_98

    .line 5350
    .restart local v3    # "doRebind":Z
    :catch_55
    move-exception v0

    .line 5351
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_56
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v1    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .end local v2    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    throw v4
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_5b

    .line 5353
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "doRebind":Z
    .restart local v1    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .restart local v2    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    :catch_5b
    move-exception v0

    .line 5354
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_65

    goto :goto_98

    .line 5355
    :cond_65
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to unbind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5357
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 5361
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_98
    :goto_98
    return-void
.end method

.method private greylist-max-o handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .registers 5
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    .line 6147
    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 6148
    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 6149
    .local v0, "apk":Landroid/app/LoadedApk;
    if-eqz v0, :cond_12

    .line 6150
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 6152
    :cond_12
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 6153
    if-eqz v0, :cond_20

    .line 6154
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 6156
    :cond_20
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/CompatibilityInfo;)V

    .line 6157
    return-void
.end method

.method private blacklist handleWindowingModeChangeIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "newConfiguration"    # Landroid/content/res/Configuration;

    .line 6924
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6925
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 6926
    .local v1, "newWindowingMode":I
    iget v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    .line 6927
    .local v2, "oldWindowingMode":I
    if-ne v2, v1, :cond_d

    return-void

    .line 6929
    :cond_d
    const/4 v3, 0x2

    if-ne v1, v3, :cond_15

    .line 6930
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p2}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    goto :goto_1b

    .line 6931
    :cond_15
    if-ne v2, v3, :cond_1b

    .line 6932
    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 6934
    :cond_1b
    :goto_1b
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v3

    .line 6936
    .local v3, "wasInMultiWindowMode":Z
    invoke-static {v1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    .line 6938
    .local v4, "nowInMultiWindowMode":Z
    if-eq v3, v4, :cond_28

    .line 6939
    invoke-virtual {v0, v4, p2}, Landroid/app/Activity;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 6941
    :cond_28
    iput v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    .line 6942
    return-void
.end method

.method private final greylist-max-o incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .registers 7
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;
    .param p2, "stable"    # Z

    .line 8247
    const/16 v0, 0x83

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2b

    .line 8248
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 8249
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-ne v3, v2, :cond_4d

    .line 8252
    iget-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v3, :cond_1c

    .line 8256
    const/4 v3, -0x1

    .line 8262
    .local v3, "unstableDelta":I
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 8265
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1d

    .line 8267
    .end local v3    # "unstableDelta":I
    :cond_1c
    const/4 v3, 0x0

    .line 8275
    .restart local v3    # "unstableDelta":I
    :goto_1d
    :try_start_1d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v1, v1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_29

    .line 8279
    goto :goto_2a

    .line 8277
    :catch_29
    move-exception v0

    .line 8280
    .end local v3    # "unstableDelta":I
    :goto_2a
    goto :goto_4d

    .line 8282
    :cond_2b
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 8283
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-ne v3, v2, :cond_4d

    .line 8285
    iget-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v3, :cond_40

    .line 8294
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 8295
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_4d

    .line 8304
    :cond_40
    :try_start_40
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v3, v1, v2}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4b} :catch_4c

    .line 8308
    goto :goto_4d

    .line 8306
    :catch_4c
    move-exception v0

    .line 8312
    :cond_4d
    :goto_4d
    return-void
.end method

.method private blacklist initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V
    .registers 15
    .param p1, "ii"    # Landroid/content/pm/InstrumentationInfo;
    .param p2, "data"    # Landroid/app/ActivityThread$AppBindData;
    .param p3, "appContext"    # Landroid/app/ContextImpl;

    .line 8054
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    .line 8055
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 8054
    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 8058
    .local v0, "instrApp":Landroid/content/pm/ApplicationInfo;
    goto :goto_14

    .line 8056
    .end local v0    # "instrApp":Landroid/content/pm/ApplicationInfo;
    :catch_11
    move-exception v0

    .line 8057
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 8059
    .local v0, "instrApp":Landroid/content/pm/ApplicationInfo;
    :goto_14
    if-nez v0, :cond_1e

    .line 8060
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    move-object v0, v1

    move-object v2, v0

    goto :goto_1f

    .line 8059
    :cond_1e
    move-object v2, v0

    .line 8062
    .end local v0    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .local v2, "instrApp":Landroid/content/pm/ApplicationInfo;
    :goto_1f
    invoke-virtual {p1, v2}, Landroid/content/pm/InstrumentationInfo;->copyTo(Landroid/content/pm/ApplicationInfo;)V

    .line 8063
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 8064
    iget-object v3, p2, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 8065
    invoke-virtual {p3}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 8064
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v3

    .line 8075
    .local v3, "pi":Landroid/app/LoadedApk;
    iget-boolean v0, p2, Landroid/app/ActivityThread$AppBindData;->isSdkInSandbox:Z

    if-eqz v0, :cond_3d

    .line 8076
    move-object v6, p3

    goto :goto_46

    .line 8077
    :cond_3d
    invoke-virtual {p3}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;

    move-result-object v0

    move-object v6, v0

    :goto_46
    nop

    .line 8080
    .local v6, "instrContext":Landroid/app/ContextImpl;
    :try_start_47
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 8081
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v4, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 8082
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Instrumentation;

    iput-object v4, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5d} :catch_aa

    .line 8087
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    nop

    .line 8089
    new-instance v8, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8090
    .local v8, "component":Landroid/content/ComponentName;
    iget-object v4, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v10, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    move-object v7, p3

    move-object v5, v1

    .end local p3    # "appContext":Landroid/app/ContextImpl;
    .local v7, "appContext":Landroid/app/ContextImpl;
    invoke-virtual/range {v4 .. v10}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    .line 8093
    iget-object p3, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object p3, p3, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz p3, :cond_a0

    iget-boolean p3, p1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez p3, :cond_a0

    iget-object p3, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object p3, p3, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez p3, :cond_a0

    .line 8095
    iget-object p3, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 v0, 0x1

    iput-boolean v0, p3, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 8096
    new-instance p3, Ljava/io/File;

    iget-object v0, v1, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8097
    .local p3, "file":Ljava/io/File;
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 8098
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v4, 0x800000

    invoke-static {v0, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 8101
    .end local p3    # "file":Ljava/io/File;
    :cond_a0
    iget-object p3, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    if-eqz p3, :cond_a9

    .line 8102
    iget-object p3, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ldalvik/system/VMDebug;->addApplication(Ljava/lang/String;)V

    .line 8104
    :cond_a9
    return-void

    .line 8083
    .end local v7    # "appContext":Landroid/app/ContextImpl;
    .end local v8    # "component":Landroid/content/ComponentName;
    .local p3, "appContext":Landroid/app/ContextImpl;
    :catch_aa
    move-exception v0

    move-object v7, p3

    move-object p3, v0

    .line 8084
    .restart local v7    # "appContext":Landroid/app/ContextImpl;
    .local p3, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate instrumentation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8086
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private blacklist initZipPathValidatorCallback()V
    .registers 3

    .line 7955
    const-wide/32 v0, 0xe778e5a

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7956
    new-instance v0, Lcom/android/internal/os/SafeZipPathValidatorCallback;

    invoke-direct {v0}, Lcom/android/internal/os/SafeZipPathValidatorCallback;-><init>()V

    invoke-static {v0}, Ldalvik/system/ZipPathValidator;->setCallback(Ldalvik/system/ZipPathValidator$Callback;)V

    goto :goto_15

    .line 7958
    :cond_12
    invoke-static {}, Ldalvik/system/ZipPathValidator;->clearCallback()V

    .line 7960
    :goto_15
    return-void
.end method

.method public static blacklist initializeMainlineModules()V
    .registers 1

    .line 9077
    new-instance v0, Landroid/os/TelephonyServiceManager;

    invoke-direct {v0}, Landroid/os/TelephonyServiceManager;-><init>()V

    invoke-static {v0}, Landroid/telephony/TelephonyFrameworkInitializer;->setTelephonyServiceManager(Landroid/os/TelephonyServiceManager;)V

    .line 9078
    new-instance v0, Landroid/os/StatsServiceManager;

    invoke-direct {v0}, Landroid/os/StatsServiceManager;-><init>()V

    invoke-static {v0}, Landroid/os/StatsFrameworkInitializer;->setStatsServiceManager(Landroid/os/StatsServiceManager;)V

    .line 9079
    new-instance v0, Landroid/media/MediaServiceManager;

    invoke-direct {v0}, Landroid/media/MediaServiceManager;-><init>()V

    invoke-static {v0}, Landroid/media/MediaFrameworkPlatformInitializer;->setMediaServiceManager(Landroid/media/MediaServiceManager;)V

    .line 9080
    new-instance v0, Landroid/media/MediaServiceManager;

    invoke-direct {v0}, Landroid/media/MediaServiceManager;-><init>()V

    invoke-static {v0}, Landroid/media/MediaFrameworkInitializer;->setMediaServiceManager(Landroid/media/MediaServiceManager;)V

    .line 9081
    new-instance v0, Landroid/os/BluetoothServiceManager;

    invoke-direct {v0}, Landroid/os/BluetoothServiceManager;-><init>()V

    invoke-static {v0}, Landroid/bluetooth/BluetoothFrameworkInitializer;->setBluetoothServiceManager(Landroid/os/BluetoothServiceManager;)V

    .line 9082
    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Landroid/bluetooth/BluetoothFrameworkInitializer;->setBinderCallsStatsInitializer(Ljava/util/function/Consumer;)V

    .line 9085
    new-instance v0, Landroid/nfc/NfcServiceManager;

    invoke-direct {v0}, Landroid/nfc/NfcServiceManager;-><init>()V

    invoke-static {v0}, Landroid/nfc/NfcFrameworkInitializer;->setNfcServiceManager(Landroid/nfc/NfcServiceManager;)V

    .line 9086
    new-instance v0, Landroid/provider/DeviceConfigServiceManager;

    invoke-direct {v0}, Landroid/provider/DeviceConfigServiceManager;-><init>()V

    invoke-static {v0}, Landroid/provider/DeviceConfigInitializer;->setDeviceConfigServiceManager(Landroid/provider/DeviceConfigServiceManager;)V

    .line 9087
    new-instance v0, Landroid/se/omapi/SeServiceManager;

    invoke-direct {v0}, Landroid/se/omapi/SeServiceManager;-><init>()V

    invoke-static {v0}, Landroid/se/omapi/SeFrameworkInitializer;->setSeServiceManager(Landroid/se/omapi/SeServiceManager;)V

    .line 9088
    invoke-static {}, Landroid/server/Flags;->telemetryApisService()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 9089
    new-instance v0, Landroid/os/ProfilingServiceManager;

    invoke-direct {v0}, Landroid/os/ProfilingServiceManager;-><init>()V

    invoke-static {v0}, Landroid/os/ProfilingFrameworkInitializer;->setProfilingServiceManager(Landroid/os/ProfilingServiceManager;)V

    .line 9091
    :cond_56
    return-void
.end method

.method private static blacklist initializeSystemThread(Landroid/app/ActivityThread;)V
    .registers 5
    .param p0, "thread"    # Landroid/app/ActivityThread;

    .line 8806
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-nez v0, :cond_5

    .line 8807
    return-void

    .line 8810
    :cond_5
    :try_start_5
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 8811
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    .line 8812
    nop

    .line 8813
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 8812
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 8814
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 8815
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->onCreate()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2d

    .line 8818
    .end local v0    # "context":Landroid/app/ContextImpl;
    nop

    .line 8819
    return-void

    .line 8816
    :catch_2d
    move-exception v0

    .line 8817
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate Application():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 8146
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 8148
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/ProviderInfo;

    .line 8157
    .local v6, "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v4, "context":Landroid/content/Context;
    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object p1

    .line 8159
    .local p1, "cph":Landroid/app/ContentProviderHolder;
    if-eqz p1, :cond_29

    .line 8160
    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 8161
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8163
    .end local v6    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local p1    # "cph":Landroid/app/ContentProviderHolder;
    :cond_29
    move-object p1, v4

    goto :goto_a

    .line 8166
    .end local v4    # "context":Landroid/content/Context;
    .local p1, "context":Landroid/content/Context;
    :cond_2b
    move-object v4, p1

    .end local p1    # "context":Landroid/content/Context;
    .restart local v4    # "context":Landroid/content/Context;
    :try_start_2c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    .line 8167
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v0

    .line 8166
    invoke-interface {p1, v0, v1}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_37} :catch_39

    .line 8170
    nop

    .line 8171
    return-void

    .line 8168
    :catch_39
    move-exception v0

    move-object p1, v0

    .line 8169
    .local p1, "ex":Landroid/os/RemoteException;
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private greylist installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Landroid/app/ContentProviderHolder;
    .param p3, "info"    # Landroid/content/pm/ProviderInfo;
    .param p4, "noisy"    # Z
    .param p5, "noReleaseNeeded"    # Z
    .param p6, "stable"    # Z

    .line 8581
    move-object/from16 v2, p3

    move/from16 v3, p6

    const/4 v4, 0x0

    .line 8583
    .local v4, "localProvider":Landroid/content/ContentProvider;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_14

    iget-object v0, p2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v0, :cond_e

    goto :goto_14

    .line 8652
    :cond_e
    iget-object v0, p2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move-object v11, v0

    move-object v10, v4

    .local v0, "provider":Landroid/content/IContentProvider;
    goto/16 :goto_10f

    .line 8584
    .end local v0    # "provider":Landroid/content/IContentProvider;
    :cond_14
    :goto_14
    if-eqz p4, :cond_3c

    .line 8585
    const-string v0, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8588
    :cond_3c
    const/4 v7, 0x0

    .line 8589
    .local v7, "c":Landroid/content/Context;
    iget-object v8, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8590
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 8591
    move-object v7, p1

    goto :goto_6f

    .line 8592
    :cond_4f
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 8593
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 8594
    iget-object v7, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_6f

    .line 8595
    :cond_64
    if-eqz p1, :cond_6f

    .line 8597
    :try_start_66
    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_66 .. :try_end_6c} :catch_6e

    move-object v7, v0

    .line 8601
    goto :goto_6f

    .line 8599
    :catch_6e
    move-exception v0

    .line 8603
    :cond_6f
    :goto_6f
    const/4 v9, 0x0

    if-nez v7, :cond_99

    .line 8604
    const-string v0, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get context for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while loading content provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8608
    return-object v9

    .line 8611
    :cond_99
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v0, :cond_ac

    .line 8613
    :try_start_9d
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Context;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0
    :try_end_a3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9d .. :try_end_a3} :catch_a5

    move-object v7, v0

    .line 8616
    goto :goto_ac

    .line 8614
    :catch_a5
    move-exception v0

    .line 8615
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 8618
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_ac
    :goto_ac
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v0, :cond_bd

    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_bd

    .line 8619
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    aget-object v0, v0, v5

    .line 8620
    .local v0, "attributionTag":Ljava/lang/String;
    invoke-virtual {v7, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v7

    .line 8624
    .end local v0    # "attributionTag":Ljava/lang/String;
    :cond_bd
    :try_start_bd
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 8625
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v10, v6}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v10

    .line 8626
    .local v10, "packageInfo":Landroid/app/LoadedApk;
    if-nez v10, :cond_d0

    .line 8628
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v11

    iget-object v11, v11, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    move-object v10, v11

    .line 8630
    :cond_d0
    invoke-virtual {v10}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v11

    iget-object v12, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 8631
    invoke-virtual {v11, v0, v12}, Landroid/app/AppComponentFactory;->instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v11

    move-object v4, v11

    .line 8632
    invoke-virtual {v4}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v11

    .line 8633
    .local v11, "provider":Landroid/content/IContentProvider;
    if-nez v11, :cond_10a

    .line 8634
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to instantiate class "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v12, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " from sourceDir "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v12, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8637
    return-object v9

    .line 8642
    :cond_10a
    invoke-virtual {v4, v7, v2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_10d} :catch_19a

    .line 8650
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v10    # "packageInfo":Landroid/app/LoadedApk;
    nop

    .line 8651
    .end local v7    # "c":Landroid/content/Context;
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    move-object v10, v4

    .line 8659
    .end local v4    # "localProvider":Landroid/content/ContentProvider;
    .local v10, "localProvider":Landroid/content/ContentProvider;
    :goto_10f
    iget-object v12, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 8662
    :try_start_112
    invoke-interface {v11}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v4, v0

    .line 8663
    .local v4, "jBinder":Landroid/os/IBinder;
    if-eqz v10, :cond_150

    .line 8664
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8665
    .local v0, "cname":Landroid/content/ComponentName;
    iget-object v5, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8666
    .local v5, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v5, :cond_131

    .line 8671
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    move-object v1, p2

    move-object v11, v6

    .end local v11    # "provider":Landroid/content/IContentProvider;
    .local v6, "provider":Landroid/content/IContentProvider;
    goto :goto_14a

    .line 8673
    .end local v6    # "provider":Landroid/content/IContentProvider;
    .restart local v11    # "provider":Landroid/content/IContentProvider;
    :cond_131
    new-instance v7, Landroid/app/ContentProviderHolder;

    invoke-direct {v7, v2}, Landroid/app/ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V
    :try_end_136
    .catchall {:try_start_112 .. :try_end_136} :catchall_194

    .line 8674
    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .local v7, "holder":Landroid/app/ContentProviderHolder;
    :try_start_136
    iput-object v11, v7, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 8675
    iput-boolean v6, v7, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 8676
    invoke-direct {p0, v11, v10, v7}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v1

    move-object v5, v1

    .line 8677
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8678
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_149
    .catchall {:try_start_136 .. :try_end_149} :catchall_14d

    move-object v1, v7

    .line 8680
    .end local v7    # "holder":Landroid/app/ContentProviderHolder;
    .local v1, "holder":Landroid/app/ContentProviderHolder;
    :goto_14a
    :try_start_14a
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;
    :try_end_14c
    .catchall {:try_start_14a .. :try_end_14c} :catchall_198

    .line 8681
    .end local v0    # "cname":Landroid/content/ComponentName;
    .end local v5    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .local v6, "retHolder":Landroid/app/ContentProviderHolder;
    goto :goto_192

    .line 8714
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .end local v4    # "jBinder":Landroid/os/IBinder;
    .end local v6    # "retHolder":Landroid/app/ContentProviderHolder;
    .restart local v7    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_14d
    move-exception v0

    move-object v1, v7

    goto :goto_196

    .line 8682
    .end local v7    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v4    # "jBinder":Landroid/os/IBinder;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :cond_150
    :try_start_150
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    move-object v7, v0

    .line 8683
    .local v7, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v7, :cond_16c

    .line 8691
    if-nez p5, :cond_18e

    .line 8692
    invoke-direct {p0, v7, v3}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_160
    .catchall {:try_start_150 .. :try_end_160} :catchall_194

    .line 8694
    :try_start_160
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v5, p2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v5, v3}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_169
    .catch Landroid/os/RemoteException; {:try_start_160 .. :try_end_169} :catch_16a
    .catchall {:try_start_160 .. :try_end_169} :catchall_194

    goto :goto_16b

    .line 8696
    :catch_16a
    move-exception v0

    .line 8698
    :goto_16b
    goto :goto_18e

    .line 8701
    :cond_16c
    :try_start_16c
    invoke-direct {p0, v11, v10, p2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v0

    .line 8703
    .local v0, "client":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz p5, :cond_17b

    .line 8704
    new-instance v5, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 v6, 0x3e8

    invoke-direct {v5, p2, v0, v6, v6}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    move-object v7, v5

    .end local v7    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .local v5, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    goto :goto_189

    .line 8706
    .end local v5    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .restart local v7    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :cond_17b
    if-eqz v3, :cond_183

    .line 8707
    new-instance v8, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {v8, p2, v0, v6, v5}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    goto :goto_188

    .line 8708
    :cond_183
    new-instance v8, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {v8, p2, v0, v5, v6}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    :goto_188
    move-object v7, v8

    .line 8710
    :goto_189
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8712
    .end local v0    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_18e
    :goto_18e
    iget-object v0, v7, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;
    :try_end_190
    .catchall {:try_start_16c .. :try_end_190} :catchall_194

    move-object v6, v0

    move-object v1, p2

    .line 8714
    .end local v4    # "jBinder":Landroid/os/IBinder;
    .end local v7    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v6    # "retHolder":Landroid/app/ContentProviderHolder;
    :goto_192
    :try_start_192
    monitor-exit v12

    .line 8715
    return-object v6

    .line 8714
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .end local v6    # "retHolder":Landroid/app/ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_194
    move-exception v0

    move-object v1, p2

    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    :goto_196
    monitor-exit v12
    :try_end_197
    .catchall {:try_start_192 .. :try_end_197} :catchall_198

    throw v0

    :catchall_198
    move-exception v0

    goto :goto_196

    .line 8643
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .end local v10    # "localProvider":Landroid/content/ContentProvider;
    .end local v11    # "provider":Landroid/content/IContentProvider;
    .local v4, "localProvider":Landroid/content/ContentProvider;
    .local v7, "c":Landroid/content/Context;
    .restart local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :catch_19a
    move-exception v0

    .line 8644
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v9, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_1a4

    .line 8649
    return-object v9

    .line 8645
    :cond_1a4
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get provider "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ": "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8647
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private greylist-max-o installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .registers 14
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "localProvider"    # Landroid/content/ContentProvider;
    .param p3, "holder"    # Landroid/app/ContentProviderHolder;

    .line 8528
    iget-object v0, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8529
    .local v0, "auths":[Ljava/lang/String;
    iget-object v1, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 8531
    .local v1, "userId":I
    const/4 v2, 0x0

    if-eqz p1, :cond_7b

    .line 8534
    array-length v3, v0

    move v4, v2

    :goto_19
    if-ge v4, v3, :cond_7b

    aget-object v5, v0, v4

    .line 8535
    .local v5, "auth":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_c6

    :cond_24
    goto :goto_6c

    :sswitch_25
    const-string v6, "com.android.blockednumber"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v6, 0x3

    goto :goto_6d

    :sswitch_2f
    const-string v6, "downloads"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v6, 0x5

    goto :goto_6d

    :sswitch_39
    const-string/jumbo v6, "telephony"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v6, 0x6

    goto :goto_6d

    :sswitch_44
    const-string v6, "call_log_shadow"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v6, 0x2

    goto :goto_6d

    :sswitch_4e
    const-string v6, "call_log"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v6, 0x1

    goto :goto_6d

    :sswitch_58
    const-string v6, "com.android.calendar"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v6, 0x4

    goto :goto_6d

    :sswitch_62
    const-string v6, "com.android.contacts"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    move v6, v2

    goto :goto_6d

    :goto_6c
    const/4 v6, -0x1

    :goto_6d
    packed-switch v6, :pswitch_data_e4

    goto :goto_78

    .line 8543
    :pswitch_71
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 8534
    .end local v5    # "auth":Ljava/lang/String;
    :goto_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 8548
    :cond_7b
    new-instance v3, Landroid/app/ActivityThread$ProviderClientRecord;

    invoke-direct {v3, v0, p1, p2, p3}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>([Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)V

    .line 8550
    .local v3, "pcr":Landroid/app/ActivityThread$ProviderClientRecord;
    array-length v4, v0

    :goto_81
    if-ge v2, v4, :cond_c5

    aget-object v5, v0, v2

    .line 8551
    .restart local v5    # "auth":Ljava/lang/String;
    new-instance v6, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v6, v5, v1}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 8552
    .local v6, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8553
    .local v7, "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v7, :cond_bd

    .line 8554
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    iget-object v9, v9, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " already published as "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ActivityThread"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 8557
    :cond_bd
    iget-object v8, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8550
    .end local v5    # "auth":Ljava/lang/String;
    .end local v6    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v7    # "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    :goto_c2
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 8560
    :cond_c5
    return-object v3

    :sswitch_data_c6
    .sparse-switch
        -0x3260a241 -> :sswitch_62
        -0x1b2f0756 -> :sswitch_58
        -0xa45121d -> :sswitch_4e
        0x3cfb2fc -> :sswitch_44
        0x2eaeb418 -> :sswitch_39
        0x4e3e48eb -> :sswitch_2f
        0x76f32249 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
    .end packed-switch
.end method

.method private static blacklist isInDeskUiMode(Landroid/content/res/Configuration;)Z
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 6800
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static blacklist isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z
    .registers 6
    .param p0, "loadedApk"    # Landroid/app/LoadedApk;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 3170
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 3171
    .local v0, "packageResources":Landroid/content/res/Resources;
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 3172
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3173
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3171
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 3174
    .local v1, "resourceDirsUpToDate":Z
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 3175
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3176
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3174
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    .line 3178
    .local v2, "overlayPathsUpToDate":Z
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_32
    if-eqz v1, :cond_38

    if-eqz v2, :cond_38

    const/4 v3, 0x1

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :goto_39
    return v3
.end method

.method public static blacklist isProtectedBroadcast(Landroid/content/Intent;)Z
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 9149
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 9153
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    return v0

    .line 9154
    :catch_15
    move-exception v0

    .line 9156
    return v1
.end method

.method public static blacklist isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 9105
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z
    .registers 7
    .param p0, "ci"    # Landroid/content/pm/ComponentInfo;
    .param p1, "permission"    # Ljava/lang/String;

    .line 9127
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 9130
    :cond_8
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    const/4 v2, 0x1

    if-nez v0, :cond_e

    .line 9131
    return v2

    .line 9133
    :cond_e
    if-eqz p1, :cond_28

    .line 9135
    :try_start_10
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    .line 9136
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9135
    invoke-interface {v0, p1, v3, v1}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 9137
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_22} :catch_27

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    move v1, v2

    :cond_26
    return v1

    .line 9138
    .end local v0    # "pi":Landroid/content/pm/PermissionInfo;
    :catch_27
    move-exception v0

    .line 9141
    :cond_28
    return v1
.end method

.method public static blacklist isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ServiceInfo;

    .line 9114
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isSystem()Z
    .registers 1

    .line 2917
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private synthetic blacklist lambda$attach$6(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .line 8778
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 8781
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 8783
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 8784
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 8783
    invoke-virtual {v1, v2}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 8787
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 8788
    invoke-virtual {v1, p1}, Landroid/app/ConfigurationController;->updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 8789
    .local v1, "updatedConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_26

    .line 8790
    const/16 v2, 0x76

    invoke-virtual {p0, v2, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 8791
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 8794
    .end local v1    # "updatedConfig":Landroid/content/res/Configuration;
    :cond_26
    monitor-exit v0

    .line 8795
    return-void

    .line 8794
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method static synthetic blacklist lambda$getGetProviderKey$5(Landroid/app/ActivityThread$ProviderKey;)Landroid/app/ActivityThread$ProviderKey;
    .registers 1
    .param p0, "k"    # Landroid/app/ActivityThread$ProviderKey;

    .line 8241
    return-object p0
.end method

.method static synthetic blacklist lambda$getSystemUiContext$0(Ljava/lang/ref/WeakReference;)Z
    .registers 2
    .param p0, "contextRef"    # Ljava/lang/ref/WeakReference;

    .line 3269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$handleRequestDirectActions$3(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/os/RemoteCallback;Ljava/util/List;)V
    .registers 8
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .param p2, "actions"    # Ljava/util/List;

    .line 4646
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4647
    const-string v0, "actions"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 4648
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 4649
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4650
    .local v0, "actionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_2d

    .line 4651
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DirectAction;

    .line 4652
    .local v2, "action":Landroid/app/DirectAction;
    iget-object v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    iget-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getAssistToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/DirectAction;->setSource(ILandroid/os/IBinder;)V

    .line 4650
    .end local v2    # "action":Landroid/app/DirectAction;
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 4654
    .end local v1    # "i":I
    :cond_2d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4655
    .local v1, "result":Landroid/os/Bundle;
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const-string v3, "actions_list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4657
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4658
    .end local v0    # "actionCount":I
    .end local v1    # "result":Landroid/os/Bundle;
    goto :goto_44

    .line 4659
    :cond_40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4661
    :goto_44
    return-void
.end method

.method static synthetic blacklist lambda$initializeMainlineModules$7(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 9083
    invoke-static {p0}, Lcom/android/internal/os/BinderCallsStats;->startForBluetooth(Landroid/content/Context;)V

    .line 9084
    return-void
.end method

.method static synthetic blacklist lambda$onSystemUiContextCleanup$1(Landroid/app/ContextImpl;Ljava/lang/ref/WeakReference;)Z
    .registers 3
    .param p0, "context"    # Landroid/app/ContextImpl;
    .param p1, "contextRef"    # Ljava/lang/ref/WeakReference;

    .line 3320
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1, p0}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method static synthetic blacklist lambda$registerOnActivityPausedListener$2(Landroid/app/Activity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "k"    # Landroid/app/Activity;

    .line 3890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private synthetic blacklist lambda$syncTransferSplashscreenViewTransaction$4(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/window/SplashScreenView;

    .line 4850
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->reportSplashscreenViewShown(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method public static greylist-max-o main([Ljava/lang/String;)V
    .registers 10
    .param p0, "args"    # [Ljava/lang/String;

    .line 9019
    const-string v0, "ActivityThreadMain"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9022
    invoke-static {}, Landroid/app/ActivityThread$AndroidOs;->install()V

    .line 9027
    const/4 v0, 0x0

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 9029
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 9032
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 9033
    .local v3, "configDir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 9036
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 9038
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 9040
    const-string v4, "<pre-initialized>"

    invoke-static {v4}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 9044
    const-wide/16 v4, 0x0

    .line 9045
    .local v4, "startSeq":J
    if-eqz p0, :cond_50

    .line 9046
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_2e
    if-ltz v6, :cond_50

    .line 9047
    aget-object v7, p0, v6

    if-eqz v7, :cond_4d

    aget-object v7, p0, v6

    const-string/jumbo v8, "seq="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 9048
    aget-object v7, p0, v6

    .line 9049
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 9048
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 9046
    :cond_4d
    add-int/lit8 v6, v6, -0x1

    goto :goto_2e

    .line 9053
    .end local v6    # "i":I
    :cond_50
    new-instance v6, Landroid/app/ActivityThread;

    invoke-direct {v6}, Landroid/app/ActivityThread;-><init>()V

    .line 9054
    .local v6, "thread":Landroid/app/ActivityThread;
    invoke-direct {v6, v0, v4, v5}, Landroid/app/ActivityThread;->attach(ZJ)V

    .line 9056
    sget-object v0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_62

    .line 9057
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 9066
    :cond_62
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 9067
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 9069
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native blacklist nInitZygoteChildHeapProfiling()V
.end method

.method private native blacklist nPurgePendingResources()V
.end method

.method private greylist-max-o onCoreSettingsChange()V
    .registers 3

    .line 6118
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDebugViewAttributeState()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6120
    const/4 v0, 0x1

    const-string/jumbo v1, "onCoreSettingsChange"

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->relaunchAllActivities(ZLjava/lang/String;)V

    .line 6122
    :cond_d
    return-void
.end method

.method private blacklist onlyDeskInUiModeChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 8
    .param p1, "oldConfig"    # Landroid/content/res/Configuration;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 6789
    invoke-static {p1}, Landroid/app/ActivityThread;->isInDeskUiMode(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-static {p2}, Landroid/app/ActivityThread;->isInDeskUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v3

    .line 6793
    .local v0, "deskModeChanged":Z
    :goto_f
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x10

    iget v4, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x10

    if-eq v1, v4, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    move v1, v3

    .line 6796
    .local v1, "uiModeOtherFieldsChanged":Z
    :goto_1c
    if-eqz v0, :cond_21

    if-nez v1, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    return v2
.end method

.method private blacklist performActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;
    .registers 26
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "amOverrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "displayId"    # I
    .param p5, "alwaysReportChange"    # Z

    .line 6704
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v7, p4

    move-object/from16 v8, p1

    iget-object v9, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6705
    .local v9, "activity":Landroid/app/Activity;
    invoke-virtual {v9}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 6710
    .local v1, "activityToken":Landroid/os/IBinder;
    invoke-direct/range {p0 .. p2}, Landroid/app/ActivityThread;->handleWindowingModeChangeIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    .line 6712
    invoke-virtual {v9}, Landroid/app/Activity;->getDisplayId()I

    move-result v2

    invoke-static {v2, v7}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v5

    .line 6714
    .local v5, "movedToDifferentDisplay":Z
    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 6715
    .local v2, "currentResConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v10

    .line 6716
    .local v10, "diff":I
    const/4 v11, 0x1

    if-eqz v10, :cond_2a

    move v4, v11

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    move v13, v4

    .line 6719
    .local v13, "hasPublicResConfigChange":Z
    if-nez v13, :cond_3d

    .line 6721
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6720
    move-object/from16 v4, p3

    invoke-static/range {v1 .. v6}, Landroid/window/ConfigurationHelper;->shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v11, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    nop

    .line 6724
    .local v11, "shouldUpdateResources":Z
    :goto_3e
    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1110246

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 6726
    .local v4, "skipActivityRelaunchWhenDocking":Z
    iget-object v6, v9, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v6

    .line 6727
    .local v6, "handledConfigChanges":I
    if-eqz v4, :cond_5b

    iget-object v14, v9, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-direct {v0, v14, v3}, Landroid/app/ActivityThread;->onlyDeskInUiModeChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v14

    if-eqz v14, :cond_5b

    .line 6732
    or-int/lit16 v6, v6, 0x200

    .line 6735
    :cond_5b
    iget-object v14, v9, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {v8}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;

    move-result-object v15

    move/from16 v12, p5

    invoke-static {v14, v3, v15, v6, v12}, Landroid/app/ActivityThread;->shouldReportChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;IZ)Z

    move-result v14

    .line 6738
    .local v14, "shouldReportChange":Z
    if-nez v11, :cond_6d

    if-nez v14, :cond_6d

    .line 6739
    const/4 v15, 0x0

    return-object v15

    .line 6746
    :cond_6d
    invoke-virtual {v9}, Landroid/app/Activity;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    .line 6754
    .local v15, "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    move-object/from16 v17, v2

    move/from16 v18, v4

    move-object/from16 v2, p3

    .end local v2    # "currentResConfig":Landroid/content/res/Configuration;
    .end local v4    # "skipActivityRelaunchWhenDocking":Z
    .local v17, "currentResConfig":Landroid/content/res/Configuration;
    .local v18, "skipActivityRelaunchWhenDocking":Z
    invoke-static {v2, v15}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v4

    .line 6756
    .local v4, "finalOverrideConfig":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v2, v1, v4, v7}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 6761
    invoke-static {v3, v15}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 6764
    .local v2, "configToReport":Landroid/content/res/Configuration;
    if-eqz v5, :cond_89

    .line 6765
    invoke-virtual {v9, v7, v2}, Landroid/app/Activity;->dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 6768
    :cond_89
    move-object/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "activityToken":Landroid/os/IBinder;
    .local v19, "activityToken":Landroid/os/IBinder;
    iput v1, v9, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 6769
    if-eqz v14, :cond_c8

    .line 6770
    iput-boolean v1, v9, Landroid/app/Activity;->mCalled:Z

    .line 6771
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v9, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 6772
    invoke-virtual {v9, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6773
    iget-boolean v1, v9, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_a3

    move-object/from16 v16, v2

    goto :goto_ca

    .line 6774
    :cond_a3
    new-instance v1, Landroid/util/SuperNotCalledException;

    move-object/from16 v16, v2

    .end local v2    # "configToReport":Landroid/content/res/Configuration;
    .local v16, "configToReport":Landroid/content/res/Configuration;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6769
    .end local v16    # "configToReport":Landroid/content/res/Configuration;
    .restart local v2    # "configToReport":Landroid/content/res/Configuration;
    :cond_c8
    move-object/from16 v16, v2

    .line 6778
    .end local v2    # "configToReport":Landroid/content/res/Configuration;
    .restart local v16    # "configToReport":Landroid/content/res/Configuration;
    :goto_ca
    iget-object v1, v0, Landroid/app/ActivityThread;->mConfigurationChangedListenerController:Landroid/app/ConfigurationChangedListenerController;

    .line 6779
    invoke-virtual {v9}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ConfigurationChangedListenerController;->dispatchOnConfigurationChanged(Landroid/os/IBinder;)V

    .line 6781
    return-object v16
.end method

.method private greylist-max-o performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;
    .registers 13
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "newBaseConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I
    .param p4, "alwaysReportChange"    # Z

    .line 6681
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6682
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_14

    .line 6683
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 6685
    :cond_14
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    move v7, p4

    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p3    # "displayId":I
    .end local p4    # "alwaysReportChange":Z
    .local v3, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v6, "displayId":I
    .local v7, "alwaysReportChange":Z
    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread;->performActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    move-result-object p1

    .line 6687
    .local p1, "reportedConfig":Landroid/content/res/Configuration;
    iget-object p3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object p3, p3, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {v3}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p3

    invoke-static {p3}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 6688
    return-object p1
.end method

.method private greylist-max-o performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 33
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    .line 4117
    move-object/from16 v3, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4119
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_45

    .line 4120
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 4121
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 4122
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->isSdkSandboxAllowedToStartActivities()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 4125
    nop

    .line 4127
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v5, v3, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 4126
    invoke-virtual {v3, v0, v5, v4}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    goto :goto_53

    .line 4130
    :cond_45
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    if-nez v0, :cond_53

    .line 4131
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v3, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v3, v0, v5, v4}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 4135
    :cond_53
    :goto_53
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4136
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_6c

    .line 4137
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v6, v3, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 4138
    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 4137
    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4139
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4142
    :cond_6c
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v5, :cond_81

    .line 4143
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_82

    .line 4142
    :cond_81
    move-object v5, v0

    .line 4147
    .end local v0    # "component":Landroid/content/ComponentName;
    .local v5, "component":Landroid/content/ComponentName;
    :goto_82
    iget-object v0, v3, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v0, v6}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;->isSdkSandboxActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v22

    .line 4149
    .local v22, "isSandboxActivityContext":Z
    const/4 v0, 0x0

    .line 4151
    .local v0, "isSandboxedSdkContextUsed":Z
    if-eqz v22, :cond_9e

    .line 4152
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->createBaseContextForSandboxActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;

    move-result-object v6

    .line 4153
    .local v6, "activityBaseContext":Landroid/app/ContextImpl;
    if-nez v6, :cond_9a

    .line 4156
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;

    move-result-object v6

    move/from16 v23, v0

    goto :goto_a4

    .line 4158
    :cond_9a
    const/4 v0, 0x1

    move/from16 v23, v0

    goto :goto_a4

    .line 4161
    .end local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    :cond_9e
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;

    move-result-object v6

    move/from16 v23, v0

    .line 4163
    .end local v0    # "isSandboxedSdkContextUsed":Z
    .restart local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .local v23, "isSandboxedSdkContextUsed":Z
    :goto_a4
    const/4 v7, 0x0

    .line 4166
    .local v7, "activity":Landroid/app/Activity;
    if-eqz v23, :cond_b0

    .line 4169
    :try_start_a7
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .local v0, "cl":Ljava/lang/ClassLoader;
    goto :goto_b4

    .line 4171
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_b0
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 4173
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :goto_b4
    iget-object v8, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4174
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4173
    invoke-virtual {v8, v0, v9, v10}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v8

    move-object v7, v8

    .line 4175
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 4176
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4177
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v9}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v9

    .line 4178
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v10

    .line 4177
    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4179
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v8, :cond_e5

    .line 4180
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_e5} :catch_e6

    .line 4188
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_e5
    goto :goto_ef

    .line 4182
    :catch_e6
    move-exception v0

    .line 4183
    .local v0, "e":Ljava/lang/Exception;
    iget-object v8, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v8, v7, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-eqz v8, :cond_33c

    .line 4191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ef
    :try_start_ef
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;
    :try_end_f1
    .catch Landroid/util/SuperNotCalledException; {:try_start_ef .. :try_end_f1} :catch_332
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f1} :catch_2f6

    :try_start_f1
    iget-object v8, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    move-object v8, v0

    .line 4204
    .local v8, "app":Landroid/app/Application;
    iget-object v10, v3, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v10
    :try_end_fc
    .catch Landroid/util/SuperNotCalledException; {:try_start_f1 .. :try_end_fc} :catch_2e9
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_fc} :catch_2f6

    .line 4205
    :try_start_fc
    iget-object v0, v3, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4206
    monitor-exit v10
    :try_end_104
    .catchall {:try_start_fc .. :try_end_104} :catchall_2d4

    .line 4208
    if-eqz v7, :cond_2c5

    .line 4209
    :try_start_106
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4210
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 4211
    .local v10, "title":Ljava/lang/CharSequence;
    new-instance v14, Landroid/content/res/Configuration;

    iget-object v0, v3, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 4212
    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4213
    .local v14, "config":Landroid/content/res/Configuration;
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;
    :try_end_11d
    .catch Landroid/util/SuperNotCalledException; {:try_start_106 .. :try_end_11d} :catch_2e9
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_11d} :catch_2f6

    if-eqz v0, :cond_13c

    .line 4214
    :try_start_11f
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_124
    .catch Landroid/util/SuperNotCalledException; {:try_start_11f .. :try_end_124} :catch_131
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_124} :catch_125

    goto :goto_13c

    .line 4276
    .end local v8    # "app":Landroid/app/Application;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v14    # "config":Landroid/content/res/Configuration;
    :catch_125
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v24, v2

    move-object/from16 v29, v5

    move-object v2, v6

    move-object v5, v1

    move-object v1, v7

    goto/16 :goto_300

    .line 4273
    :catch_131
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v24, v2

    move-object v13, v5

    move-object v2, v6

    move-object v5, v1

    move-object v1, v7

    goto/16 :goto_33b

    .line 4218
    .restart local v8    # "app":Landroid/app/Application;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    .restart local v14    # "config":Landroid/content/res/Configuration;
    :cond_13c
    :goto_13c
    const/4 v0, 0x0

    .line 4219
    .local v0, "window":Landroid/view/Window;
    :try_start_13d
    iget-object v11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;
    :try_end_13f
    .catch Landroid/util/SuperNotCalledException; {:try_start_13d .. :try_end_13f} :catch_2e9
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_13f} :catch_2f6

    const/4 v12, 0x0

    if-eqz v11, :cond_150

    :try_start_142
    iget-boolean v11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v11, :cond_150

    .line 4220
    iget-object v11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    move-object v0, v11

    .line 4221
    iput-object v12, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 4222
    iput-object v12, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;
    :try_end_14d
    .catch Landroid/util/SuperNotCalledException; {:try_start_142 .. :try_end_14d} :catch_131
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_14d} :catch_125

    move-object/from16 v17, v0

    goto :goto_152

    .line 4227
    :cond_150
    move-object/from16 v17, v0

    .end local v0    # "window":Landroid/view/Window;
    .local v17, "window":Landroid/view/Window;
    :goto_152
    :try_start_152
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4228
    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v11

    new-array v13, v9, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v11, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/res/loader/ResourcesLoader;

    .line 4227
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 4230
    invoke-virtual {v6, v7}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 4231
    move v11, v4

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4
    :try_end_171
    .catch Landroid/util/SuperNotCalledException; {:try_start_152 .. :try_end_171} :catch_2e9
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_171} :catch_2f6

    move-object v13, v5

    .end local v5    # "component":Landroid/content/ComponentName;
    .local v13, "component":Landroid/content/ComponentName;
    :try_start_172
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_174
    .catch Landroid/util/SuperNotCalledException; {:try_start_172 .. :try_end_174} :catch_2b9
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_174} :catch_2ad

    move-object v15, v2

    move-object v2, v6

    .end local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .local v2, "activityBaseContext":Landroid/app/ContextImpl;
    .local v15, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_176
    iget v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I
    :try_end_178
    .catch Landroid/util/SuperNotCalledException; {:try_start_176 .. :try_end_178} :catch_2a2
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_178} :catch_297

    move-object/from16 v16, v7

    move-object v7, v8

    .end local v8    # "app":Landroid/app/Application;
    .local v7, "app":Landroid/app/Application;
    .local v16, "activity":Landroid/app/Activity;
    :try_start_17b
    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move v0, v9

    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move/from16 v18, v11

    iget-object v11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    move-object/from16 v19, v12

    iget-object v12, v1, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;
    :try_end_188
    .catch Landroid/util/SuperNotCalledException; {:try_start_17b .. :try_end_188} :catch_28b
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_188} :catch_27f

    move-object/from16 v20, v13

    .end local v13    # "component":Landroid/content/ComponentName;
    .local v20, "component":Landroid/content/ComponentName;
    :try_start_18a
    iget-object v13, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_18c
    .catch Landroid/util/SuperNotCalledException; {:try_start_18a .. :try_end_18c} :catch_271
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_18c} :catch_265

    move-object/from16 v21, v15

    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v21, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_18e
    iget-object v15, v1, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v25, v0

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    move-object/from16 v26, v0

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    move-object/from16 v27, v0

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;

    move-object/from16 v28, v0

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;
    :try_end_1a2
    .catch Landroid/util/SuperNotCalledException; {:try_start_18e .. :try_end_1a2} :catch_257
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1a2} :catch_24b

    move-object/from16 v1, v16

    move-object/from16 v29, v20

    move-object/from16 v24, v21

    move-object/from16 v16, v25

    move-object/from16 v18, v26

    move-object/from16 v20, v28

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v27

    .end local v16    # "activity":Landroid/app/Activity;
    .end local v20    # "component":Landroid/content/ComponentName;
    .end local v21    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v1, "activity":Landroid/app/Activity;
    .local v24, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v29, "component":Landroid/content/ComponentName;
    :try_start_1b4
    invoke-virtual/range {v1 .. v21}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_1b7
    .catch Landroid/util/SuperNotCalledException; {:try_start_1b4 .. :try_end_1b7} :catch_244
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1b7} :catch_23d

    .line 4237
    move-object/from16 v4, p2

    if-eqz v4, :cond_1c8

    .line 4238
    :try_start_1bb
    iput-object v4, v1, Landroid/app/Activity;->mIntent:Landroid/content/Intent;
    :try_end_1bd
    .catch Landroid/util/SuperNotCalledException; {:try_start_1bb .. :try_end_1bd} :catch_1c3
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1bd} :catch_1be

    goto :goto_1c8

    .line 4276
    .end local v7    # "app":Landroid/app/Application;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v14    # "config":Landroid/content/res/Configuration;
    .end local v17    # "window":Landroid/view/Window;
    :catch_1be
    move-exception v0

    move-object/from16 v5, p1

    goto/16 :goto_300

    .line 4273
    :catch_1c3
    move-exception v0

    move-object/from16 v5, p1

    goto/16 :goto_2e4

    .line 4240
    .restart local v7    # "app":Landroid/app/Application;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    .restart local v14    # "config":Landroid/content/res/Configuration;
    .restart local v17    # "window":Landroid/view/Window;
    :cond_1c8
    :goto_1c8
    move-object/from16 v5, p1

    :try_start_1ca
    iput-object v0, v5, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 4241
    invoke-direct {v3}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 4242
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/app/Activity;->mStartedActivity:Z

    .line 4243
    iget-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v8

    .line 4244
    .local v8, "theme":I
    if-eqz v8, :cond_1dd

    .line 4245
    invoke-virtual {v1, v8}, Landroid/app/Activity;->setTheme(I)V

    .line 4248
    :cond_1dd
    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-eqz v9, :cond_1e7

    .line 4249
    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    iput-object v9, v1, Landroid/app/Activity;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 4250
    iput-object v0, v5, Landroid/app/ActivityThread$ActivityClientRecord;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 4252
    :cond_1e7
    iget-boolean v0, v5, Landroid/app/ActivityThread$ActivityClientRecord;->mLaunchedFromBubble:Z

    iput-boolean v0, v1, Landroid/app/Activity;->mLaunchedFromBubble:Z

    .line 4253
    iput-boolean v6, v1, Landroid/app/Activity;->mCalled:Z

    .line 4258
    iput-object v1, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4259
    invoke-virtual {v5}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_1ff

    .line 4260
    iget-object v0, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v6, v9}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_206

    .line 4262
    :cond_1ff
    iget-object v0, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v6}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4264
    :goto_206
    iget-boolean v0, v1, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_214

    .line 4269
    iget-object v0, v14, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    iput v0, v5, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    goto/16 :goto_2cf

    .line 4265
    :cond_214
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4266
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " did not call through to super.onCreate()"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "activityBaseContext":Landroid/app/ContextImpl;
    .end local v22    # "isSandboxActivityContext":Z
    .end local v23    # "isSandboxedSdkContextUsed":Z
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "customIntent":Landroid/content/Intent;
    throw v0

    .line 4276
    .end local v7    # "app":Landroid/app/Application;
    .end local v8    # "theme":I
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v14    # "config":Landroid/content/res/Configuration;
    .end local v17    # "window":Landroid/view/Window;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v2    # "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v22    # "isSandboxActivityContext":Z
    .restart local v23    # "isSandboxedSdkContextUsed":Z
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "customIntent":Landroid/content/Intent;
    :catch_23d
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v4, p2

    goto/16 :goto_300

    .line 4273
    :catch_244
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v4, p2

    goto/16 :goto_2e4

    .line 4276
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v16    # "activity":Landroid/app/Activity;
    .restart local v20    # "component":Landroid/content/ComponentName;
    .restart local v21    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_24b
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v1

    move-object/from16 v1, v16

    move-object/from16 v29, v20

    move-object/from16 v24, v21

    .end local v16    # "activity":Landroid/app/Activity;
    .end local v20    # "component":Landroid/content/ComponentName;
    .end local v21    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto/16 :goto_300

    .line 4273
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v16    # "activity":Landroid/app/Activity;
    .restart local v20    # "component":Landroid/content/ComponentName;
    .restart local v21    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_257
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v1

    move-object/from16 v1, v16

    move-object/from16 v29, v20

    move-object/from16 v24, v21

    move-object/from16 v13, v29

    .end local v16    # "activity":Landroid/app/Activity;
    .end local v20    # "component":Landroid/content/ComponentName;
    .end local v21    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto/16 :goto_33b

    .line 4276
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "activity":Landroid/app/Activity;
    .restart local v20    # "component":Landroid/content/ComponentName;
    :catch_265
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v1

    move-object/from16 v24, v15

    move-object/from16 v1, v16

    move-object/from16 v29, v20

    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "activity":Landroid/app/Activity;
    .end local v20    # "component":Landroid/content/ComponentName;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto/16 :goto_300

    .line 4273
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "activity":Landroid/app/Activity;
    .restart local v20    # "component":Landroid/content/ComponentName;
    :catch_271
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v1

    move-object/from16 v24, v15

    move-object/from16 v1, v16

    move-object/from16 v29, v20

    move-object/from16 v13, v29

    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "activity":Landroid/app/Activity;
    .end local v20    # "component":Landroid/content/ComponentName;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto/16 :goto_33b

    .line 4276
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v13    # "component":Landroid/content/ComponentName;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "activity":Landroid/app/Activity;
    :catch_27f
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v1

    move-object/from16 v29, v13

    move-object/from16 v24, v15

    move-object/from16 v1, v16

    .end local v13    # "component":Landroid/content/ComponentName;
    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "activity":Landroid/app/Activity;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto/16 :goto_300

    .line 4273
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v13    # "component":Landroid/content/ComponentName;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "activity":Landroid/app/Activity;
    :catch_28b
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v1

    move-object/from16 v29, v13

    move-object/from16 v24, v15

    move-object/from16 v1, v16

    .end local v13    # "component":Landroid/content/ComponentName;
    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "activity":Landroid/app/Activity;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto/16 :goto_33b

    .line 4276
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .local v7, "activity":Landroid/app/Activity;
    .restart local v13    # "component":Landroid/content/ComponentName;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_297
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v1

    move-object v1, v7

    move-object/from16 v29, v13

    move-object/from16 v24, v15

    .end local v7    # "activity":Landroid/app/Activity;
    .end local v13    # "component":Landroid/content/ComponentName;
    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto/16 :goto_300

    .line 4273
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v7    # "activity":Landroid/app/Activity;
    .restart local v13    # "component":Landroid/content/ComponentName;
    .restart local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_2a2
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v1

    move-object v1, v7

    move-object/from16 v29, v13

    move-object/from16 v24, v15

    .end local v7    # "activity":Landroid/app/Activity;
    .end local v13    # "component":Landroid/content/ComponentName;
    .end local v15    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto/16 :goto_33b

    .line 4276
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v7    # "activity":Landroid/app/Activity;
    .restart local v13    # "component":Landroid/content/ComponentName;
    :catch_2ad
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v1

    move-object/from16 v24, v2

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v29, v13

    .end local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .end local v7    # "activity":Landroid/app/Activity;
    .end local v13    # "component":Landroid/content/ComponentName;
    .restart local v1    # "activity":Landroid/app/Activity;
    .local v2, "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto/16 :goto_300

    .line 4273
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v7    # "activity":Landroid/app/Activity;
    .restart local v13    # "component":Landroid/content/ComponentName;
    :catch_2b9
    move-exception v0

    move-object/from16 v4, p2

    move-object v5, v1

    move-object/from16 v24, v2

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v29, v13

    .end local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .end local v7    # "activity":Landroid/app/Activity;
    .end local v13    # "component":Landroid/content/ComponentName;
    .restart local v1    # "activity":Landroid/app/Activity;
    .local v2, "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto/16 :goto_33b

    .line 4208
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v7    # "activity":Landroid/app/Activity;
    .local v8, "app":Landroid/app/Application;
    :cond_2c5
    move-object/from16 v4, p2

    move-object/from16 v24, v2

    move-object/from16 v29, v5

    move-object v2, v6

    move-object v5, v1

    move-object v1, v7

    move-object v7, v8

    .line 4271
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .end local v8    # "app":Landroid/app/Application;
    .restart local v1    # "activity":Landroid/app/Activity;
    .local v2, "activityBaseContext":Landroid/app/ContextImpl;
    .local v7, "app":Landroid/app/Application;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    :goto_2cf
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V
    :try_end_2d3
    .catch Landroid/util/SuperNotCalledException; {:try_start_1ca .. :try_end_2d3} :catch_2e3
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_2d3} :catch_2e1

    .line 4282
    .end local v7    # "app":Landroid/app/Application;
    goto :goto_308

    .line 4206
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .local v7, "activity":Landroid/app/Activity;
    .restart local v8    # "app":Landroid/app/Application;
    :catchall_2d4
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v24, v2

    move-object/from16 v29, v5

    move-object v2, v6

    move-object v5, v1

    move-object v1, v7

    move-object v7, v8

    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .end local v8    # "app":Landroid/app/Application;
    .restart local v1    # "activity":Landroid/app/Activity;
    .local v2, "activityBaseContext":Landroid/app/ContextImpl;
    .local v7, "app":Landroid/app/Application;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    :goto_2df
    :try_start_2df
    monitor-exit v10
    :try_end_2e0
    .catchall {:try_start_2df .. :try_end_2e0} :catchall_2e7

    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "activityBaseContext":Landroid/app/ContextImpl;
    .end local v22    # "isSandboxActivityContext":Z
    .end local v23    # "isSandboxedSdkContextUsed":Z
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "customIntent":Landroid/content/Intent;
    :try_start_2e0
    throw v0
    :try_end_2e1
    .catch Landroid/util/SuperNotCalledException; {:try_start_2e0 .. :try_end_2e1} :catch_2e3
    .catch Ljava/lang/Exception; {:try_start_2e0 .. :try_end_2e1} :catch_2e1

    .line 4276
    .end local v7    # "app":Landroid/app/Application;
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v2    # "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v22    # "isSandboxActivityContext":Z
    .restart local v23    # "isSandboxedSdkContextUsed":Z
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "customIntent":Landroid/content/Intent;
    :catch_2e1
    move-exception v0

    goto :goto_300

    .line 4273
    :catch_2e3
    move-exception v0

    :goto_2e4
    move-object/from16 v13, v29

    goto :goto_33b

    .line 4206
    .restart local v7    # "app":Landroid/app/Application;
    :catchall_2e7
    move-exception v0

    goto :goto_2df

    .line 4273
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .local v7, "activity":Landroid/app/Activity;
    :catch_2e9
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v24, v2

    move-object/from16 v29, v5

    move-object v2, v6

    move-object v5, v1

    move-object v1, v7

    move-object/from16 v13, v29

    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .end local v7    # "activity":Landroid/app/Activity;
    .restart local v1    # "activity":Landroid/app/Activity;
    .local v2, "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto :goto_33b

    .line 4276
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v29    # "component":Landroid/content/ComponentName;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v7    # "activity":Landroid/app/Activity;
    :catch_2f6
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v24, v2

    move-object/from16 v29, v5

    move-object v2, v6

    move-object v5, v1

    move-object v1, v7

    .line 4277
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .end local v7    # "activity":Landroid/app/Activity;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "activity":Landroid/app/Activity;
    .local v2, "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "component":Landroid/content/ComponentName;
    :goto_300
    iget-object v6, v3, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v6, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_309

    .line 4284
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_308
    return-object v1

    .line 4278
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_309
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to start activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v13, v29

    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v13    # "component":Landroid/content/ComponentName;
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4280
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 4273
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v13    # "component":Landroid/content/ComponentName;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v7    # "activity":Landroid/app/Activity;
    :catch_332
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v24, v2

    move-object v13, v5

    move-object v2, v6

    move-object v5, v1

    move-object v1, v7

    .line 4274
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .end local v7    # "activity":Landroid/app/Activity;
    .local v0, "e":Landroid/util/SuperNotCalledException;
    .restart local v1    # "activity":Landroid/app/Activity;
    .local v2, "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v13    # "component":Landroid/content/ComponentName;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_33b
    throw v0

    .line 4184
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v13    # "component":Landroid/content/ComponentName;
    .end local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "e":Ljava/lang/Exception;
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v7    # "activity":Landroid/app/Activity;
    :cond_33c
    move-object/from16 v24, v2

    move-object v13, v5

    move-object v2, v6

    move-object v5, v1

    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v6    # "activityBaseContext":Landroid/app/ContextImpl;
    .local v2, "activityBaseContext":Landroid/app/ContextImpl;
    .restart local v13    # "component":Landroid/content/ComponentName;
    .restart local v24    # "aInfo":Landroid/content/pm/ActivityInfo;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate activity "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4186
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .registers 12
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5843
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 5844
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_c

    .line 5848
    return-object v1

    .line 5850
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing pause of activity that is not resumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5852
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5853
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5855
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_37
    const/4 v0, 0x1

    if-eqz p2, :cond_3e

    .line 5856
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v2, Landroid/app/Activity;->mFinished:Z

    .line 5860
    :cond_3e
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4c

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v3

    .line 5861
    .local v0, "shouldSaveState":Z
    :goto_4d
    if-eqz v0, :cond_52

    .line 5862
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5865
    :cond_52
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 5869
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 5870
    :try_start_58
    iget-object v4, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 5871
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_91

    .line 5872
    if-eqz v4, :cond_69

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5873
    .local v3, "size":I
    :cond_69
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6a
    if-ge v2, v3, :cond_7a

    .line 5874
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/OnActivityPausedListener;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v5, v6}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 5873
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 5877
    .end local v2    # "i":I
    :cond_7a
    if-eqz p4, :cond_81

    invoke-virtual {p4}, Landroid/app/servertransaction/PendingTransactionActions;->getOldState()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_82

    :cond_81
    move-object v2, v1

    .line 5878
    .local v2, "oldState":Landroid/os/Bundle;
    :goto_82
    if-eqz v2, :cond_8c

    .line 5884
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 5885
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 5889
    :cond_8c
    if-eqz v0, :cond_90

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    :cond_90
    return-object v1

    .line 5871
    .end local v2    # "oldState":Landroid/os/Bundle;
    .end local v3    # "size":I
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_91
    move-exception v1

    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v1
.end method

.method private greylist-max-o performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 5893
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v0, :cond_5

    .line 5895
    return-void

    .line 5900
    :cond_5
    const-string/jumbo v0, "pausing"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5903
    :try_start_c
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    .line 5904
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 5905
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_1e

    .line 5916
    goto :goto_4e

    .line 5906
    :cond_1e
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v2}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "reason":Ljava/lang/String;
    throw v0
    :try_end_43
    .catch Landroid/util/SuperNotCalledException; {:try_start_c .. :try_end_43} :catch_80
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_43} :catch_43

    .line 5911
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "reason":Ljava/lang/String;
    :catch_43
    move-exception v0

    .line 5912
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 5917
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4e
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5918
    return-void

    .line 5913
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_53
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to pause activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5914
    invoke-static {v3}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5909
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_80
    move-exception v0

    .line 5910
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0
.end method

.method private blacklist performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "info"    # Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    .param p3, "saveState"    # Z
    .param p4, "finalStateRequest"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5965
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_3f

    .line 5966
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_b

    .line 5970
    return-void

    .line 5972
    :cond_b
    if-nez p4, :cond_3f

    .line 5973
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing stop of activity that is already stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5975
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5976
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5977
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5982
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3f
    invoke-direct {p0, p1, p5}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 5984
    if-eqz p2, :cond_8b

    .line 5989
    :try_start_44
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setDescription(Ljava/lang/CharSequence;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4d} :catch_4e

    .line 5997
    goto :goto_8b

    .line 5990
    :catch_4e
    move-exception v0

    .line 5991
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_5a

    goto :goto_8b

    .line 5992
    :cond_5a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save state of activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5994
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5995
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 6000
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8b
    :goto_8b
    invoke-direct {p0, p1, p3, p5}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 6001
    return-void
.end method

.method private blacklist prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;
    .registers 7
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 8019
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 8020
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 8019
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_ca

    .line 8023
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    nop

    .line 8024
    if-eqz v0, :cond_af

    .line 8030
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 8031
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 8032
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package uses different ABI(s) than its instrumentation: package["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " instrumentation["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8039
    :cond_82
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 8040
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 8041
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 8042
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 8043
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 8044
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 8045
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 8047
    return-object v0

    .line 8025
    :cond_af
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find instrumentation info for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8021
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_ca
    move-exception v0

    .line 8022
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static varargs blacklist printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 3397
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3398
    return-void
.end method

.method private blacklist purgePendingResources()V
    .registers 4

    .line 9094
    const-string/jumbo v0, "purgePendingResources"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9095
    invoke-direct {p0}, Landroid/app/ActivityThread;->nPurgePendingResources()V

    .line 9096
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 9097
    return-void
.end method

.method private blacklist relaunchAllActivities(ZLjava/lang/String;)V
    .registers 5
    .param p1, "preserveWindows"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 6140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relaunch all activities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6141
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_30

    .line 6142
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {p0, v1, p1}, Landroid/app/ActivityThread;->scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6141
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 6144
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method private blacklist removeSafeCancellationTransport(Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;
    .registers 4
    .param p1, "transport"    # Landroid/app/ActivityThread$SafeCancellationTransport;

    .line 2325
    monitor-enter p0

    .line 2326
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CancellationSignal;

    .line 2327
    .local v0, "cancellation":Landroid/os/CancellationSignal;
    iget-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2328
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    .line 2330
    :cond_14
    monitor-exit p0

    return-object v0

    .line 2331
    .end local v0    # "cancellation":Landroid/os/CancellationSignal;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private greylist-max-o reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4490
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4492
    return-void

    .line 4494
    :cond_b
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    .line 4495
    .local v0, "configurations":[Landroid/content/res/Configuration;
    if-nez v0, :cond_18

    .line 4496
    return-void

    .line 4498
    :cond_18
    new-instance v1, Landroid/window/SizeConfigurationBuckets;

    invoke-direct {v1, v0}, Landroid/window/SizeConfigurationBuckets;-><init>([Landroid/content/res/Configuration;)V

    invoke-static {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fputmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SizeConfigurationBuckets;)V

    .line 4499
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityClient;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V

    .line 4500
    return-void
.end method

.method private blacklist reportSplashscreenViewShown(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/window/SplashScreenView;

    .line 4807
    const-wide/16 v0, 0x8

    const-string/jumbo v2, "reportSplashscreenViewShown"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 4808
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityClient;->reportSplashScreenAttached(Landroid/os/IBinder;)V

    .line 4809
    monitor-enter p0

    .line 4810
    :try_start_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v0, :cond_19

    .line 4811
    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->handOverSplashScreenView(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    .line 4813
    :cond_19
    monitor-exit p0

    .line 4814
    return-void

    .line 4813
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private blacklist reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .registers 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "onTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5798
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastReportedTopResumedState:Z

    if-eq v0, p2, :cond_b

    .line 5799
    iput-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastReportedTopResumedState:Z

    .line 5800
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->performTopResumedActivityChanged(ZLjava/lang/String;)V

    .line 5802
    :cond_b
    return-void
.end method

.method private static greylist-max-o safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 6289
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 6290
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_9

    const-string v1, "[Unknown]"

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    :goto_d
    return-object v1
.end method

.method private blacklist schedulePauseWithUserLeaveHintAndReturnToCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4860
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 4861
    .local v0, "prevState":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    .line 4862
    return-void

    .line 4865
    :cond_b
    packed-switch v0, :pswitch_data_1e

    goto :goto_1d

    .line 4873
    :pswitch_f
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4874
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V

    goto :goto_1d

    .line 4868
    :pswitch_16
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4869
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4870
    nop

    .line 4877
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_16
        :pswitch_f
    .end packed-switch
.end method

.method private blacklist schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4880
    new-instance v0, Landroid/app/servertransaction/ClientTransaction;

    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, v1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    .line 4881
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    new-instance v1, Landroid/app/servertransaction/PauseActivityItem;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4882
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/IBinder;ZZZZ)V

    .line 4884
    .local v1, "pauseActivityItem":Landroid/app/servertransaction/PauseActivityItem;
    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 4885
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 4886
    return-void
.end method

.method private blacklist scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "preserveWindow"    # Z

    .line 6522
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v0, :cond_10

    :cond_a
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_11

    .line 6525
    :cond_10
    return-void

    .line 6527
    :cond_11
    if-eqz p2, :cond_1a

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v0, :cond_1a

    .line 6528
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 6530
    :cond_1a
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/16 v2, 0xa0

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 6531
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 6532
    return-void
.end method

.method private blacklist scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4889
    new-instance v0, Landroid/app/servertransaction/ClientTransaction;

    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, v1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    .line 4890
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    new-instance v1, Landroid/app/servertransaction/ResumeActivityItem;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/IBinder;ZZ)V

    .line 4892
    .local v1, "resumeActivityItem":Landroid/app/servertransaction/ResumeActivityItem;
    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 4893
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 4894
    return-void
.end method

.method private greylist-max-o sendMessage(ILjava/lang/Object;I)V
    .registers 10
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .line 4083
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "what":I
    .end local p2    # "obj":Ljava/lang/Object;
    .end local p3    # "arg1":I
    .local v1, "what":I
    .local v2, "obj":Ljava/lang/Object;
    .local v3, "arg1":I
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 4084
    return-void
.end method

.method private greylist-max-o sendMessage(ILjava/lang/Object;II)V
    .registers 11
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 4087
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "what":I
    .end local p2    # "obj":Ljava/lang/Object;
    .end local p3    # "arg1":I
    .end local p4    # "arg2":I
    .local v1, "what":I
    .local v2, "obj":Ljava/lang/Object;
    .local v3, "arg1":I
    .local v4, "arg2":I
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 4088
    return-void
.end method

.method private greylist-max-o sendMessage(ILjava/lang/Object;IIZ)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .line 4095
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4096
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4097
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4098
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 4099
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 4100
    if-eqz p5, :cond_12

    .line 4101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4103
    :cond_12
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 4104
    return-void
.end method

.method private greylist-max-o setupGraphicsSupport(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 7440
    const-string/jumbo v0, "setupGraphicsSupport"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7443
    const-string v0, "android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 7447
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 7448
    .local v0, "cacheDir":Ljava/io/File;
    const-string v3, "ActivityThread"

    if-eqz v0, :cond_34

    .line 7450
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 7451
    .local v4, "tmpdir":Ljava/lang/String;
    const-string/jumbo v5, "java.io.tmpdir"

    invoke-static {v5, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7453
    :try_start_26
    const-string v5, "TMPDIR"

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2c
    .catch Landroid/system/ErrnoException; {:try_start_26 .. :try_end_2c} :catch_2d

    .line 7456
    goto :goto_33

    .line 7454
    :catch_2d
    move-exception v5

    .line 7455
    .local v5, "ex":Landroid/system/ErrnoException;
    const-string v6, "Unable to initialize $TMPDIR"

    invoke-static {v3, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7457
    .end local v4    # "tmpdir":Ljava/lang/String;
    .end local v5    # "ex":Landroid/system/ErrnoException;
    :goto_33
    goto :goto_39

    .line 7458
    :cond_34
    const-string v4, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7463
    :goto_39
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    .line 7464
    .local v4, "deviceContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v5

    .line 7465
    .local v5, "codeCacheDir":Ljava/io/File;
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    .line 7466
    .local v6, "deviceCacheDir":Ljava/io/File;
    if-eqz v5, :cond_67

    if-eqz v6, :cond_67

    .line 7468
    :try_start_49
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 7469
    .local v3, "uid":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 7470
    .local v7, "packages":[Ljava/lang/String;
    if-eqz v7, :cond_5d

    .line 7471
    invoke-static {v6}, Landroid/graphics/HardwareRenderer;->setupDiskCache(Ljava/io/File;)V

    .line 7472
    invoke-static {v5}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_5d} :catch_5e

    .line 7477
    .end local v3    # "uid":I
    .end local v7    # "packages":[Ljava/lang/String;
    :cond_5d
    goto :goto_6c

    .line 7474
    :catch_5e
    move-exception v3

    .line 7475
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 7476
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7479
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_67
    const-string v7, "Unable to use shader/script cache: missing code-cache directory"

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7485
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v4    # "deviceContext":Landroid/content/Context;
    .end local v5    # "codeCacheDir":Ljava/io/File;
    .end local v6    # "deviceCacheDir":Ljava/io/File;
    :cond_6c
    :goto_6c
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    iget-object v3, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v3}, Landroid/os/GraphicsEnvironment;->setup(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 7486
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 7487
    return-void
.end method

.method public static blacklist shouldReportChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;IZ)Z
    .registers 11
    .param p0, "currentConfig"    # Landroid/content/res/Configuration;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "sizeBuckets"    # Landroid/window/SizeConfigurationBuckets;
    .param p3, "handledConfigChanges"    # I
    .param p4, "alwaysReportChange"    # Z

    .line 6818
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v0

    .line 6820
    .local v0, "publicDiff":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 6821
    return v1

    .line 6825
    :cond_8
    const/4 v2, 0x1

    if-eqz p4, :cond_c

    .line 6826
    return v2

    .line 6829
    :cond_c
    invoke-static {}, Landroid/content/res/Flags;->handleAllConfigChanges()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6830
    const/high16 v3, 0x8000000

    and-int/2addr v3, p3

    if-eqz v3, :cond_18

    .line 6832
    return v2

    .line 6836
    :cond_18
    invoke-static {v0, p0, p1, p2}, Landroid/window/SizeConfigurationBuckets;->filterDiff(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;)I

    move-result v3

    .line 6842
    .local v3, "diffWithBucket":I
    if-eqz v3, :cond_20

    move v4, v3

    goto :goto_21

    :cond_20
    move v4, v0

    .line 6846
    .local v4, "diff":I
    :goto_21
    not-int v5, p3

    and-int/2addr v5, v4

    if-nez v5, :cond_26

    move v1, v2

    :cond_26
    return v1
.end method

.method private greylist suspendAllAndSendVmStart(Landroid/app/ActivityThread$AppBindData;)V
    .registers 5
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7930
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 7931
    .local v0, "mgr":Landroid/app/IActivityManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is suspending. Debugger needs to resume to continue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7935
    :try_start_28
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_40

    .line 7938
    nop

    .line 7940
    invoke-static {}, Landroid/os/Debug;->suspendAllAndSendVmStart()V

    .line 7943
    :try_start_32
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_38} :catch_3a

    .line 7946
    nop

    .line 7947
    return-void

    .line 7944
    :catch_3a
    move-exception v1

    .line 7945
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 7936
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_40
    move-exception v1

    .line 7937
    .restart local v1    # "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist syncTransferSplashscreenViewTransaction(Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V
    .registers 12
    .param p1, "view"    # Landroid/window/SplashScreenView;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "decorView"    # Landroid/view/View;
    .param p4, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 4822
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v3, v0

    .line 4823
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v3, p4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4824
    invoke-virtual {p4}, Landroid/view/SurfaceControl;->release()V

    .line 4826
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->syncTransferSurfaceOnDraw()V

    .line 4828
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->useRtFrameCallbackForSplashScreenTransfer()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4829
    invoke-virtual {p3}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4830
    invoke-virtual {p3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    new-instance v1, Landroid/app/ActivityThread$2;

    move-object v2, p0

    move-object v6, p1

    move-object v5, p2

    move-object v4, p3

    .end local p1    # "view":Landroid/window/SplashScreenView;
    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "decorView":Landroid/view/View;
    .local v4, "decorView":Landroid/view/View;
    .local v5, "token":Landroid/os/IBinder;
    .local v6, "view":Landroid/window/SplashScreenView;
    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;Landroid/view/SurfaceControl$Transaction;Landroid/view/View;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    goto :goto_4c

    .line 4829
    .end local v4    # "decorView":Landroid/view/View;
    .end local v5    # "token":Landroid/os/IBinder;
    .end local v6    # "view":Landroid/window/SplashScreenView;
    .restart local p1    # "view":Landroid/window/SplashScreenView;
    .restart local p2    # "token":Landroid/os/IBinder;
    .restart local p3    # "decorView":Landroid/view/View;
    :cond_2c
    move-object v2, p0

    move-object v6, p1

    move-object v5, p2

    move-object v4, p3

    .end local p1    # "view":Landroid/window/SplashScreenView;
    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "decorView":Landroid/view/View;
    .restart local v4    # "decorView":Landroid/view/View;
    .restart local v5    # "token":Landroid/os/IBinder;
    .restart local v6    # "view":Landroid/window/SplashScreenView;
    goto :goto_35

    .line 4828
    .end local v4    # "decorView":Landroid/view/View;
    .end local v5    # "token":Landroid/os/IBinder;
    .end local v6    # "view":Landroid/window/SplashScreenView;
    .restart local p1    # "view":Landroid/window/SplashScreenView;
    .restart local p2    # "token":Landroid/os/IBinder;
    .restart local p3    # "decorView":Landroid/view/View;
    :cond_31
    move-object v2, p0

    move-object v6, p1

    move-object v5, p2

    move-object v4, p3

    .line 4847
    .end local p1    # "view":Landroid/window/SplashScreenView;
    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "decorView":Landroid/view/View;
    .restart local v4    # "decorView":Landroid/view/View;
    .restart local v5    # "token":Landroid/os/IBinder;
    .restart local v6    # "view":Landroid/window/SplashScreenView;
    :goto_35
    const-wide/16 p1, 0x8

    const-string/jumbo p3, "transferSplashscreenView_software"

    invoke-static {p1, p2, p3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 4848
    invoke-virtual {v4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 4850
    new-instance p1, Landroid/app/ActivityThread$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v5, v6}, Landroid/app/ActivityThread$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    invoke-virtual {v4, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4852
    :goto_4c
    return-void
.end method

.method public static greylist systemMain()Landroid/app/ActivityThread;
    .registers 4

    .line 8823
    invoke-static {}, Landroid/view/ThreadedRenderer;->initForSystemProcess()V

    .line 8824
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 8825
    .local v0, "thread":Landroid/app/ActivityThread;
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread;->attach(ZJ)V

    .line 8826
    return-object v0
.end method

.method private blacklist throwRemoteServiceException(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "typeId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2357
    packed-switch p2, :pswitch_data_4e

    .line 2380
    new-instance v0, Landroid/app/RemoteServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (with unwknown typeId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2362
    :pswitch_26
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->generateForegroundServiceDidNotStopInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;

    move-result-object v0

    throw v0

    .line 2371
    :pswitch_2b
    new-instance v0, Landroid/app/RemoteServiceException$BadUserInitiatedJobNotificationException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$BadUserInitiatedJobNotificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2377
    :pswitch_31
    new-instance v0, Landroid/app/RemoteServiceException$CrashedByAdbException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$CrashedByAdbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2374
    :pswitch_37
    new-instance v0, Landroid/app/RemoteServiceException$MissingRequestPasswordComplexityPermissionException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$MissingRequestPasswordComplexityPermissionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2368
    :pswitch_3d
    new-instance v0, Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2365
    :pswitch_43
    new-instance v0, Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2359
    :pswitch_49
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->generateForegroundServiceDidNotStartInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;

    move-result-object v0

    throw v0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_49
        :pswitch_43
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_26
    .end packed-switch
.end method

.method private static blacklist toVmProcessState(I)I
    .registers 3
    .param p0, "processState"    # I

    .line 4025
    invoke-static {p0}, Landroid/app/ActivityManager;->isProcStateJankPerceptible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4026
    return v1

    .line 4029
    :cond_8
    invoke-static {}, Landroid/app/Flags;->jankPerceptibleNarrow()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Landroid/app/Flags;->jankPerceptibleNarrowHoldback()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 4033
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4034
    return v1

    .line 4038
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist updateDebugViewAttributeState()Z
    .registers 6

    .line 6125
    sget-boolean v0, Landroid/view/View;->sDebugViewAttributes:Z

    .line 6129
    .local v0, "previousState":Z
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string v2, "debug_view_attributes_application_package"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/View;->sDebugViewAttributesApplicationPackage:Ljava/lang/String;

    .line 6131
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1f

    .line 6132
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    const-string v1, "<unknown-app>"

    .line 6133
    .local v1, "currentPackage":Ljava/lang/String;
    :goto_21
    iget-object v2, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 6134
    const-string v3, "debug_view_attributes"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_38

    sget-object v2, Landroid/view/View;->sDebugViewAttributesApplicationPackage:Ljava/lang/String;

    .line 6135
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_38

    :cond_36
    move v2, v4

    goto :goto_39

    :cond_38
    :goto_38
    move v2, v3

    :goto_39
    sput-boolean v2, Landroid/view/View;->sDebugViewAttributes:Z

    .line 6136
    sget-boolean v2, Landroid/view/View;->sDebugViewAttributes:Z

    if-eq v0, v2, :cond_40

    move v4, v3

    :cond_40
    return v4
.end method

.method private blacklist updateDeviceIdForNonUIContexts(I)V
    .registers 9
    .param p1, "deviceId"    # I

    .line 6857
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 6858
    return-void

    .line 6860
    :cond_4
    iget v0, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    if-ne p1, v0, :cond_9

    .line 6861
    return-void

    .line 6863
    :cond_9
    iput p1, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    .line 6864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6867
    .local v0, "nonUIContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Context;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 6868
    :try_start_13
    iget-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6869
    .local v2, "numApps":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v2, :cond_2a

    .line 6870
    iget-object v4, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6869
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 6872
    .end local v3    # "i":I
    :cond_2a
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 6873
    .local v3, "numServices":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    if-ge v4, v3, :cond_47

    .line 6874
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Service;

    .line 6876
    .local v5, "service":Landroid/app/Service;
    invoke-virtual {v5}, Landroid/app/Service;->isUiContext()Z

    move-result v6

    if-nez v6, :cond_44

    .line 6877
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6873
    .end local v5    # "service":Landroid/app/Service;
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 6880
    .end local v2    # "numApps":I
    .end local v3    # "numServices":I
    .end local v4    # "i":I
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_5f

    .line 6881
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 6883
    .local v2, "context":Landroid/content/Context;
    :try_start_58
    invoke-virtual {v2, p1}, Landroid/content/Context;->updateDeviceId(I)V
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 6889
    goto :goto_5d

    .line 6884
    :catch_5c
    move-exception v3

    .line 6890
    .end local v2    # "context":Landroid/content/Context;
    :goto_5d
    goto :goto_4c

    .line 6891
    :cond_5e
    return-void

    .line 6880
    :catchall_5f
    move-exception v2

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v2
.end method

.method public static blacklist updateHttpProxy(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 8830
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8831
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V

    .line 8832
    return-void
.end method

.method private blacklist updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 16
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p6, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 4955
    .local p5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4956
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_24

    .line 4957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUiTranslationState(): no activity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4958
    return-void

    .line 4960
    :cond_24
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p2    # "state":I
    .end local p3    # "sourceSpec":Landroid/view/translation/TranslationSpec;
    .end local p4    # "targetSpec":Landroid/view/translation/TranslationSpec;
    .end local p5    # "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local p6    # "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    .local v4, "state":I
    .local v5, "sourceSpec":Landroid/view/translation/TranslationSpec;
    .local v6, "targetSpec":Landroid/view/translation/TranslationSpec;
    .local v7, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local v8, "uiTranslationSpec":Landroid/view/translation/UiTranslationSpec;
    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 4962
    return-void
.end method

.method private greylist-max-o updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "show"    # Z

    .line 6039
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 6040
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_38

    .line 6041
    const/4 v1, 0x1

    if-eqz p2, :cond_24

    .line 6042
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v2, :cond_38

    .line 6043
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 6044
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 6045
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_38

    .line 6046
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    goto :goto_38

    .line 6050
    :cond_24
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v2, :cond_38

    .line 6051
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 6052
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 6053
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6057
    :cond_38
    :goto_38
    return-void
.end method

.method private blacklist updateVmProcessState(II)V
    .registers 5
    .param p1, "lastProcessState"    # I
    .param p2, "newProcessState"    # I

    .line 4043
    invoke-static {p2}, Landroid/app/ActivityThread;->toVmProcessState(I)I

    move-result v0

    .line 4044
    .local v0, "state":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_d

    .line 4045
    invoke-static {p1}, Landroid/app/ActivityThread;->toVmProcessState(I)I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 4046
    :cond_d
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldalvik/system/VMRuntime;->updateProcessState(I)V

    .line 4048
    :cond_14
    return-void
.end method

.method private greylist waitForDebugger(Landroid/app/ActivityThread$AppBindData;)V
    .registers 5
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7909
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 7910
    .local v0, "mgr":Landroid/app/IActivityManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is waiting for the debugger ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7914
    :try_start_28
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_40

    .line 7917
    nop

    .line 7919
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 7922
    :try_start_32
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_38} :catch_3a

    .line 7925
    nop

    .line 7926
    return-void

    .line 7923
    :catch_3a
    move-exception v1

    .line 7924
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 7915
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_40
    move-exception v1

    .line 7916
    .restart local v1    # "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public final greylist acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .registers 14
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .line 8317
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8318
    :try_start_3
    new-instance v1, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v1, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 8319
    .local v1, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8320
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    const/4 v3, 0x0

    if-nez v2, :cond_15

    .line 8321
    monitor-exit v0

    return-object v3

    .line 8324
    :cond_15
    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 8325
    .local v4, "provider":Landroid/content/IContentProvider;
    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 8326
    .local v5, "jBinder":Landroid/os/IBinder;
    invoke-interface {v5}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 8329
    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Acquiring provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": existing object\'s process dead"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8331
    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 8332
    monitor-exit v0

    return-object v3

    .line 8337
    :cond_4f
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8338
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_5c

    .line 8339
    invoke-direct {p0, v3, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V

    .line 8341
    :cond_5c
    monitor-exit v0

    return-object v4

    .line 8342
    .end local v1    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "provider":Landroid/content/IContentProvider;
    .end local v5    # "jBinder":Landroid/os/IBinder;
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public final greylist acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .registers 20
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .line 8176
    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {p0 .. p4}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v6

    .line 8177
    .local v6, "provider":Landroid/content/IContentProvider;
    if-eqz v6, :cond_b

    .line 8178
    return-object v6

    .line 8188
    :cond_b
    invoke-direct {p0, v3, v4}, Landroid/app/ActivityThread;->getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object v14

    .line 8190
    .local v14, "key":Landroid/app/ActivityThread$ProviderKey;
    const/4 v8, 0x0

    :try_start_10
    monitor-enter v14
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_11} :catch_be
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_11} :catch_5d
    .catchall {:try_start_10 .. :try_end_11} :catchall_5b

    .line 8191
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 8192
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 8191
    move/from16 v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v0

    move-object v1, v0

    .line 8195
    .local v1, "holder":Landroid/app/ContentProviderHolder;
    if-eqz v1, :cond_4d

    iget-object v0, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v0, :cond_4d

    iget-boolean v0, v1, Landroid/app/ContentProviderHolder;->mLocal:Z

    if-nez v0, :cond_4d

    .line 8196
    iget-object v2, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_58

    .line 8197
    :try_start_31
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    if-eqz v0, :cond_36

    goto :goto_3e

    .line 8202
    :cond_36
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    sget v5, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v9, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/Object;->wait(J)V

    .line 8204
    :goto_3e
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    move-object v1, v0

    .line 8205
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_4a

    .line 8206
    if-eqz v1, :cond_4d

    :try_start_44
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_58

    if-nez v0, :cond_4d

    .line 8208
    const/4 v1, 0x0

    goto :goto_4d

    .line 8205
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    .end local v6    # "provider":Landroid/content/IContentProvider;
    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "c":Landroid/content/Context;
    .end local p2    # "auth":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "stable":Z
    :try_start_4c
    throw v0

    .line 8211
    .restart local v6    # "provider":Landroid/content/IContentProvider;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "c":Landroid/content/Context;
    .restart local p2    # "auth":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "stable":Z
    :cond_4d
    :goto_4d
    monitor-exit v14
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_58

    .line 8218
    iget-object v2, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8219
    :try_start_51
    iput-object v8, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 8220
    monitor-exit v2

    goto :goto_65

    :catchall_55
    move-exception v0

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_55

    throw v0

    .line 8211
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v14
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    .end local v6    # "provider":Landroid/content/IContentProvider;
    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "c":Landroid/content/Context;
    .end local p2    # "auth":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "stable":Z
    :try_start_5a
    throw v0
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5b} :catch_be
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_5b} :catch_5d
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5b

    .line 8218
    .restart local v6    # "provider":Landroid/content/IContentProvider;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "c":Landroid/content/Context;
    .restart local p2    # "auth":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "stable":Z
    :catchall_5b
    move-exception v0

    goto :goto_c4

    .line 8214
    :catch_5d
    move-exception v0

    .line 8215
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    .line 8218
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    iget-object v2, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8219
    :try_start_62
    iput-object v8, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 8220
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_bb

    .line 8221
    :goto_65
    move-object v9, v1

    .line 8222
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .local v9, "holder":Landroid/app/ContentProviderHolder;
    if-nez v9, :cond_aa

    .line 8223
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 8224
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find provider info for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 8226
    :cond_8b
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find provider info for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (user not unlocked)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8228
    :goto_a9
    return-object v8

    .line 8233
    :cond_aa
    iget-object v10, v9, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v11, 0x1

    iget-boolean v12, v9, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v13, p4

    invoke-direct/range {v7 .. v13}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object v0

    .line 8235
    .end local v9    # "holder":Landroid/app/ContentProviderHolder;
    .local v0, "holder":Landroid/app/ContentProviderHolder;
    iget-object v1, v0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    return-object v1

    .line 8220
    .end local v0    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_bb
    move-exception v0

    :try_start_bc
    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v0

    .line 8212
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    :catch_be
    move-exception v0

    .line 8213
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_bf
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v6    # "provider":Landroid/content/IContentProvider;
    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "c":Landroid/content/Context;
    .end local p2    # "auth":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "stable":Z
    throw v1
    :try_end_c4
    .catchall {:try_start_bf .. :try_end_c4} :catchall_5b

    .line 8218
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "provider":Landroid/content/IContentProvider;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "c":Landroid/content/Context;
    .restart local p2    # "auth":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "stable":Z
    :goto_c4
    iget-object v1, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8219
    :try_start_c7
    iput-object v8, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 8220
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_cb

    .line 8221
    throw v0

    .line 8220
    :catchall_cb
    move-exception v0

    :try_start_cc
    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v0
.end method

.method blacklist addApplication(Landroid/app/Application;)V
    .registers 3
    .param p1, "app"    # Landroid/app/Application;

    .line 9160
    iget-object v0, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9161
    iget-object v0, p1, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    iget-object v0, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMDebug;->addApplication(Ljava/lang/String;)V

    .line 9162
    return-void
.end method

.method public blacklist addConfigurationChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 3984
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/IBinder;>;"
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationChangedListenerController:Landroid/app/ConfigurationChangedListenerController;

    invoke-virtual {v0, p1, p2}, Landroid/app/ConfigurationChangedListenerController;->addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3985
    return-void
.end method

.method final greylist-max-o appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "provider"    # Landroid/os/IBinder;

    .line 8513
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8514
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    .line 8515
    .local v1, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v1, :cond_1f

    .line 8517
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 8518
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19
    .catchall {:try_start_d .. :try_end_18} :catchall_21

    .line 8521
    goto :goto_1f

    .line 8519
    :catch_19
    move-exception v2

    .line 8520
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1a
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "provider":Landroid/os/IBinder;
    throw v3

    .line 8523
    .end local v1    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "provider":Landroid/os/IBinder;
    :cond_1f
    :goto_1f
    monitor-exit v0

    .line 8524
    return-void

    .line 8523
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw v1
.end method

.method public final greylist-max-o applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 6850
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 6851
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 6852
    monitor-exit v0

    .line 6853
    return-void

    .line 6852
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist collectComponentCallbacks(Z)Ljava/util/ArrayList;
    .registers 9
    .param p1, "includeUiContexts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .line 6632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6635
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 6636
    :try_start_8
    iget-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6637
    .local v2, "NAPP":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_1f

    .line 6638
    iget-object v4, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6637
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 6640
    .end local v3    # "i":I
    :cond_1f
    if-eqz p1, :cond_41

    .line 6641
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_29
    if-ltz v3, :cond_41

    .line 6642
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6643
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_3e

    iget-boolean v5, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v5, :cond_3e

    .line 6644
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6641
    .end local v4    # "a":Landroid/app/Activity;
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 6648
    .end local v3    # "i":I
    :cond_41
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 6649
    .local v3, "NSVC":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_48
    if-ge v4, v3, :cond_5e

    .line 6650
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Service;

    .line 6653
    .local v5, "service":Landroid/app/Service;
    if-nez p1, :cond_58

    instance-of v6, v5, Landroid/window/WindowProviderService;

    if-nez v6, :cond_5b

    .line 6654
    :cond_58
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6649
    .end local v5    # "service":Landroid/app/Service;
    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 6657
    .end local v2    # "NAPP":I
    .end local v3    # "NSVC":I
    .end local v4    # "i":I
    :cond_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_80

    .line 6658
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 6659
    :try_start_62
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 6660
    .local v1, "NPRV":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_69
    if-ge v3, v1, :cond_7b

    .line 6661
    iget-object v4, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6660
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 6663
    .end local v1    # "NPRV":I
    .end local v3    # "i":I
    :cond_7b
    monitor-exit v2

    .line 6665
    return-object v0

    .line 6663
    :catchall_7d
    move-exception v1

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_62 .. :try_end_7f} :catchall_7d

    throw v1

    .line 6657
    :catchall_80
    move-exception v2

    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v2
.end method

.method final greylist-max-o completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .registers 10
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;

    .line 8433
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8434
    :try_start_3
    iget-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v1, :cond_9

    .line 8440
    monitor-exit v0

    return-void

    .line 8446
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 8448
    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 8449
    .local v2, "jBinder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8450
    .local v3, "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    if-ne v3, p1, :cond_23

    .line 8451
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8454
    :cond_23
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_2b
    if-ltz v4, :cond_45

    .line 8455
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8456
    .local v5, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 8457
    .local v6, "myBinder":Landroid/os/IBinder;
    if-ne v6, v2, :cond_42

    .line 8458
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 8454
    .end local v5    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v6    # "myBinder":Landroid/os/IBinder;
    :cond_42
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .line 8461
    .end local v2    # "jBinder":Landroid/os/IBinder;
    .end local v3    # "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "i":I
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_54

    .line 8468
    :try_start_46
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_51} :catch_52

    .line 8472
    goto :goto_53

    .line 8470
    :catch_52
    move-exception v0

    .line 8473
    :goto_53
    return-void

    .line 8461
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public blacklist countLaunchingActivities(I)V
    .registers 3
    .param p1, "num"    # I

    .line 4052
    iget-object v0, p0, Landroid/app/ActivityThread;->mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 4053
    return-void
.end method

.method public blacklist createDisplayContextIfNeeded(Landroid/content/Context;Landroid/app/ActivityThread$ReceiverData;)Landroid/content/Context;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/app/ActivityThread$ReceiverData;

    .line 5068
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->supportWidgetIntentsOnConnectedDisplay()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5069
    return-object p1

    .line 5072
    :cond_7
    iget-object v0, p2, Landroid/app/ActivityThread$ReceiverData;->mOptions:Landroid/app/ActivityOptions;

    .line 5073
    .local v0, "options":Landroid/app/ActivityOptions;
    if-nez v0, :cond_c

    .line 5074
    return-object p1

    .line 5077
    :cond_c
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v1

    .line 5078
    .local v1, "launchDisplayId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 5079
    return-object p1

    .line 5082
    :cond_14
    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 5083
    .local v2, "dm":Landroid/hardware/display/DisplayManager;
    if-nez v2, :cond_1f

    .line 5084
    return-object p1

    .line 5087
    :cond_1f
    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 5088
    .local v3, "display":Landroid/view/Display;
    if-nez v3, :cond_3e

    .line 5089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create a display context for nonexistent display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityThread"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5091
    return-object p1

    .line 5094
    :cond_3e
    invoke-virtual {p1, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    return-object v4
.end method

.method public blacklist createSystemUiContextForTesting(I)Landroid/content/Context;
    .registers 3
    .param p1, "displayId"    # I

    .line 3290
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/ContextImpl;->createSystemUiContext(Landroid/app/ContextImpl;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o doGcIfNeeded()V
    .registers 2

    .line 3369
    const-string v0, "bg"

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->doGcIfNeeded(Ljava/lang/String;)V

    .line 3370
    return-void
.end method

.method blacklist doGcIfNeeded(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 3373
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 3374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3377
    .local v0, "now":J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_15

    .line 3379
    invoke-static {p1}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 3381
    :cond_15
    return-void
.end method

.method final greylist-max-o finishInstrumentation(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .line 8126
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 8127
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v1, v1, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_19

    .line 8129
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 8134
    :cond_19
    :try_start_19
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_2a

    .line 8137
    nop

    .line 8138
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    if-eqz v1, :cond_29

    .line 8139
    const/16 v1, 0xab

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 8141
    :cond_29
    return-void

    .line 8135
    :catch_2a
    move-exception v1

    .line 8136
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getActivitiesToBeDestroyed()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/DestroyActivityItem;",
            ">;"
        }
    .end annotation

    .line 6295
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    return-object v0
.end method

.method public final greylist getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3953
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3954
    .local v0, "activityRecord":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public greylist-max-o getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3971
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    return-object v0
.end method

.method public greylist getApplication()Landroid/app/Application;
    .registers 2

    .line 3233
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public greylist getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .registers 2

    .line 3203
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 3976
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method blacklist getCoreSettings()Landroid/os/Bundle;
    .registers 3

    .line 8845
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8846
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    monitor-exit v0

    return-object v1

    .line 8847
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist-max-o getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 3227
    iget-object v0, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method blacklist getFloatCoreSetting(Ljava/lang/String;F)F
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 8872
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8873
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_f

    .line 8874
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    monitor-exit v0

    return v1

    .line 8876
    :cond_f
    monitor-exit v0

    return p2

    .line 8877
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public greylist getHandler()Landroid/os/Handler;
    .registers 2

    .line 2986
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public greylist getInstrumentation()Landroid/app/Instrumentation;
    .registers 2

    .line 3209
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public greylist-max-o getIntCoreSetting(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 8851
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8852
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_f

    .line 8853
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 8855
    :cond_f
    monitor-exit v0

    return p2

    .line 8856
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist getLastCreatedActivity()Landroid/app/Activity;
    .registers 3

    .line 3962
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3963
    const/4 v0, 0x0

    return-object v0

    .line 3966
    :cond_a
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public greylist getLooper()Landroid/os/Looper;
    .registers 2

    .line 3223
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final greylist getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .registers 14
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .line 3044
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    move v8, v0

    .line 3045
    .local v8, "includeCode":Z
    if-eqz v8, :cond_2a

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v0, :cond_2a

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2a

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_28

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v3, v3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3047
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_28
    move v7, v2

    goto :goto_2b

    :cond_2a
    move v7, v1

    .line 3049
    .local v7, "securityViolation":Z
    :goto_2b
    if-eqz v8, :cond_34

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p3

    if-eqz v0, :cond_34

    move v9, v2

    goto :goto_35

    :cond_34
    move v9, v1

    .line 3050
    .local v9, "registerPackage":Z
    :goto_35
    and-int/lit8 v0, p3, 0x3

    if-ne v0, v2, :cond_99

    .line 3053
    if-eqz v7, :cond_99

    .line 3054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting code from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (with uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3056
    .local v0, "msg":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_93

    .line 3057
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to be run in process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v3, v3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3061
    :cond_93
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3064
    .end local v0    # "msg":Ljava/lang/String;
    :cond_99
    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    .local v5, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method public final greylist-max-p getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .line 2992
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 2997
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq v0, p4, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2998
    .local v0, "differentUser":Z
    :goto_9
    nop

    .line 3002
    if-gez p4, :cond_11

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, p4

    .line 2998
    :goto_12
    const-wide/32 v2, 0x10000400

    invoke-static {p1, v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3003
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 3005
    if-eqz v0, :cond_20

    .line 3007
    const/4 v3, 0x0

    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_35

    .line 3008
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_20
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_2d

    .line 3009
    :try_start_24
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_35

    .line 3011
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2d
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 3014
    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_35
    const/4 v4, 0x0

    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoadedApk;

    goto :goto_40

    :cond_3f
    move-object v5, v4

    .line 3015
    .local v5, "packageInfo":Landroid/app/LoadedApk;
    :goto_40
    if-eqz v1, :cond_99

    if-eqz v5, :cond_99

    .line 3016
    invoke-static {v5, v1}, Landroid/app/ActivityThread;->isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 3017
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3018
    .local v4, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, v1, v4}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 3019
    invoke-virtual {v5, v1, v4}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 3022
    .end local v4    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_55
    invoke-virtual {v5}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v4

    if-eqz v4, :cond_97

    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_60

    goto :goto_97

    .line 3024
    :cond_60
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting code from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to be run in process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "differentUser":Z
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    throw v4

    .line 3030
    .restart local v0    # "differentUser":Z
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p3    # "flags":I
    .restart local p4    # "userId":I
    :cond_97
    :goto_97
    monitor-exit v2

    return-object v5

    .line 3032
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v5    # "packageInfo":Landroid/app/LoadedApk;
    :cond_99
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_24 .. :try_end_9a} :catchall_a2

    .line 3034
    if-eqz v1, :cond_a1

    .line 3035
    invoke-virtual {p0, v1, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v2

    return-object v2

    .line 3038
    :cond_a1
    return-object v4

    .line 3032
    :catchall_a2
    move-exception v3

    :try_start_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v3
.end method

.method public blacklist getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;
    .registers 9
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 3076
    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method public final greylist getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .registers 10
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 3071
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    .local v2, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object p1

    return-object p1
.end method

.method public greylist getProcessName()Ljava/lang/String;
    .registers 2

    .line 3238
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getProfileFilePath()Ljava/lang/String;
    .registers 2

    .line 3218
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStringCoreSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 8863
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8864
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_f

    .line 8865
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 8867
    :cond_f
    monitor-exit v0

    return-object p2

    .line 8868
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public greylist getSystemContext()Landroid/app/ContextImpl;
    .registers 2

    .line 3244
    monitor-enter p0

    .line 3245
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_b

    .line 3246
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 3248
    :cond_b
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    .line 3249
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public blacklist getSystemUiContext()Landroid/content/Context;
    .registers 2

    .line 3254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemUiContext(I)Landroid/content/Context;
    .registers 5
    .param p1, "displayId"    # I

    .line 3264
    monitor-enter p0

    .line 3265
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 3266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    .line 3269
    :cond_c
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/ActivityThread$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3271
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->getSystemUiContextNoCreateLocked(I)Landroid/content/Context;

    move-result-object v0

    .line 3272
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1e

    .line 3273
    monitor-exit p0

    return-object v0

    .line 3276
    :cond_1e
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/app/ContextImpl;->createSystemUiContext(Landroid/app/ContextImpl;I)Landroid/content/Context;

    move-result-object v1

    .line 3277
    .end local v0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3278
    monitor-exit p0

    return-object v1

    .line 3279
    .end local v1    # "context":Landroid/content/Context;
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public blacklist getSystemUiContextNoCreate()Landroid/content/Context;
    .registers 2

    .line 3296
    monitor-enter p0

    .line 3297
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 3298
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 3300
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->getSystemUiContextNoCreateLocked(I)Landroid/content/Context;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 3301
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method blacklist getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/LoadedApk;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .registers 20
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p4, "overlayPaths"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 2979
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2980
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    .line 2981
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 2979
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v11}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;
    .registers 2

    .line 4075
    iget-object v0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object v0
.end method

.method public blacklist handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;)V
    .registers 11
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I
    .param p4, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;

    .line 7072
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p3    # "displayId":I
    .end local p4    # "activityWindowInfo":Landroid/window/ActivityWindowInfo;
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v2, "overrideConfig":Landroid/content/res/Configuration;
    .local v3, "displayId":I
    .local v4, "activityWindowInfo":Landroid/window/ActivityWindowInfo;
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;Z)V

    .line 7079
    return-void
.end method

.method blacklist handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;Z)V
    .registers 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I
    .param p4, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;
    .param p5, "alwaysReportChange"    # Z

    .line 7096
    invoke-static {}, Landroid/app/servertransaction/ClientTransactionListenerController;->getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;

    move-result-object v1

    .line 7097
    .local v1, "controller":Landroid/app/servertransaction/ClientTransactionListenerController;
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 7098
    .local v2, "contextToUpdate":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPreChanged(Landroid/content/Context;)V

    .line 7100
    :try_start_9
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handleActivityConfigurationChangedInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;Z)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    .line 7103
    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPostChanged(Landroid/content/Context;)V

    .line 7104
    nop

    .line 7105
    return-void

    .line 7103
    :catchall_11
    move-exception v0

    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransactionListenerController;->onContextConfigurationPostChanged(Landroid/content/Context;)V

    .line 7104
    throw v0
.end method

.method public greylist-max-o handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 14
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 6975
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 6976
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 6977
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk;

    goto :goto_18

    :cond_17
    move-object v3, v2

    .line 6978
    .local v3, "apk":Landroid/app/LoadedApk;
    :goto_18
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 6979
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/LoadedApk;

    .line 6980
    .local v2, "resApk":Landroid/app/LoadedApk;
    :cond_2b
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6981
    .local v5, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 6982
    iget-object v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object p1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6983
    if-nez v3, :cond_5c

    if-eqz v2, :cond_58

    goto :goto_5c

    .line 6986
    :cond_58
    iget-object v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object v3, v6

    .end local v3    # "apk":Landroid/app/LoadedApk;
    .local v6, "apk":Landroid/app/LoadedApk;
    goto :goto_63

    .line 6984
    .end local v6    # "apk":Landroid/app/LoadedApk;
    .restart local v3    # "apk":Landroid/app/LoadedApk;
    :cond_5c
    :goto_5c
    if-eqz v3, :cond_60

    move-object v6, v3

    goto :goto_61

    :cond_60
    move-object v6, v2

    :goto_61
    iput-object v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 6989
    .end local v5    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_63
    :goto_63
    goto :goto_35

    .line 6990
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_151

    .line 6992
    if-eqz v3, :cond_76

    .line 6993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6994
    .local v0, "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6995
    invoke-virtual {v3, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6997
    .end local v0    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_76
    if-eqz v2, :cond_87

    .line 6998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6999
    .restart local v0    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7000
    invoke-virtual {v2, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7002
    .end local v0    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_87
    invoke-static {}, Landroid/content/res/Flags;->systemContextHandleAppInfoChanged()Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v0, :cond_b2

    .line 7003
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 7004
    .local v0, "systemContext":Landroid/app/ContextImpl;
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 7007
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7008
    .local v1, "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {p0, v4, v1}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7009
    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v4, p1, v1}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7013
    .end local v0    # "systemContext":Landroid/app/ContextImpl;
    .end local v1    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 7015
    .local v1, "beforeImpl":Landroid/content/res/ResourcesImpl;
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v4

    .line 7017
    :try_start_c1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 7018
    monitor-exit v4
    :try_end_c7
    .catchall {:try_start_c1 .. :try_end_c7} :catchall_14e

    .line 7020
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 7022
    .local v0, "afterImpl":Landroid/content/res/ResourcesImpl;
    if-eq v1, v0, :cond_14d

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v4

    .line 7023
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v5

    .line 7022
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14d

    .line 7024
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->getApkPaths()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 7025
    .local v4, "beforeAssets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getApkPaths()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 7027
    .local v5, "afterAssets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7028
    .local v6, "onlyBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 7029
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7030
    .local v7, "onlyAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 7032
    const-string v8, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ApplicationInfo updating for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nassets removed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nassets added: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7042
    .end local v4    # "beforeAssets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "afterAssets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "onlyBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "onlyAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14d
    return-void

    .line 7018
    .end local v0    # "afterImpl":Landroid/content/res/ResourcesImpl;
    :catchall_14e
    move-exception v0

    :try_start_14f
    monitor-exit v4
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    throw v0

    .line 6990
    .end local v1    # "beforeImpl":Landroid/content/res/ResourcesImpl;
    .end local v2    # "resApk":Landroid/app/LoadedApk;
    .end local v3    # "apk":Landroid/app/LoadedApk;
    :catchall_151
    move-exception v1

    :try_start_152
    monitor-exit v0
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_151

    throw v1
.end method

.method public blacklist handleAttachSplashScreenView(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    .param p3, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 4768
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v0, :cond_d

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 4769
    .local v0, "decorView":Lcom/android/internal/policy/DecorView;
    :goto_e
    if-eqz p2, :cond_16

    if-eqz v0, :cond_16

    .line 4770
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/app/ActivityThread;->createSplashScreen(Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V

    goto :goto_1e

    .line 4773
    :cond_16
    const-string v1, "ActivityThread"

    const-string/jumbo v2, "handleAttachSplashScreenView failed, unable to attach"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    :goto_1e
    return-void
.end method

.method public blacklist handleConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "deviceId"    # I

    .line 6895
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0, p1}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6896
    invoke-direct {p0, p2}, Landroid/app/ActivityThread;->updateDeviceIdForNonUIContexts(I)V

    .line 6899
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getCurDefaultDisplayDpi()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 6900
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 6901
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ConfigurationController;->getPendingConfiguration(Z)Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 6903
    return-void
.end method

.method public blacklist handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V
    .registers 14
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finishing"    # Z
    .param p3, "getNonConfigInstance"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 6301
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V

    .line 6302
    invoke-static {p1, p2}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6303
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 6304
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 6305
    .local v1, "v":Landroid/view/View;
    const/4 v2, 0x1

    const-string v3, "Activity"

    if-eqz v1, :cond_7a

    .line 6306
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v4, :cond_20

    .line 6307
    iget v4, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v4, v2

    iput v4, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 6309
    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 6310
    .local v4, "wtoken":Landroid/os/IBinder;
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mWindowAdded:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_47

    .line 6311
    iget-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v5, :cond_3b

    .line 6313
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    iput-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 6314
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 6318
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->clearContentView()V

    goto :goto_47

    .line 6320
    :cond_3b
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    .line 6321
    .local v5, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v5, :cond_44

    .line 6324
    invoke-virtual {v5, v6}, Landroid/view/ViewRootImpl;->setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 6326
    :cond_44
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 6329
    .end local v5    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_47
    :goto_47
    if-eqz v4, :cond_5f

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v5, :cond_5f

    .line 6330
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6331
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 6330
    invoke-virtual {v5, v4, v7, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    .line 6332
    :cond_5f
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v5, :cond_76

    .line 6337
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6338
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 6337
    invoke-virtual {v5, v7, v1, v8, v3}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 6340
    :cond_76
    :goto_76
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-object v6, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 6342
    .end local v4    # "wtoken":Landroid/os/IBinder;
    :cond_7a
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v4, :cond_91

    .line 6349
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6350
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 6349
    invoke-virtual {v4, v5, v6, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 6357
    :cond_91
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 6358
    .local v4, "c":Landroid/content/Context;
    instance-of v5, v4, Landroid/app/ContextImpl;

    if-eqz v5, :cond_ab

    .line 6359
    move-object v5, v4

    check-cast v5, Landroid/app/ContextImpl;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 6361
    :cond_ab
    if-eqz p2, :cond_bb

    .line 6362
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v3

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Landroid/app/ActivityClient;->activityDestroyed(Landroid/os/IBinder;)V

    .line 6363
    iget-object v3, p0, Landroid/app/ActivityThread;->mNewActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6365
    :cond_bb
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6366
    return-void
.end method

.method final greylist-max-o handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .registers 15
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 7275
    const/4 v0, 0x0

    .line 7276
    .local v0, "hasPkgInfo":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_14a

    :pswitch_6
    goto/16 :goto_145

    .line 7308
    :pswitch_8
    if-nez p2, :cond_c

    .line 7309
    goto/16 :goto_145

    .line 7312
    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7314
    .local v3, "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v4

    .line 7315
    :try_start_14
    array-length v5, p2

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_16
    if-ltz v5, :cond_e1

    .line 7316
    aget-object v2, p2, v5

    .line 7317
    .local v2, "packageName":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 7318
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    const/4 v7, 0x0

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/LoadedApk;

    goto :goto_2d

    :cond_2c
    move-object v8, v7

    .line 7319
    .local v8, "pkgInfo":Landroid/app/LoadedApk;
    :goto_2d
    if-eqz v8, :cond_31

    .line 7320
    const/4 v0, 0x1

    goto :goto_46

    .line 7322
    :cond_31
    iget-object v9, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    move-object v6, v9

    .line 7323
    if-eqz v6, :cond_42

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/LoadedApk;

    :cond_42
    move-object v8, v7

    .line 7324
    if-eqz v8, :cond_46

    .line 7325
    const/4 v0, 0x1

    .line 7332
    :cond_46
    :goto_46
    if-eqz v8, :cond_af

    .line 7333
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_14 .. :try_end_4b} :catchall_f4

    .line 7335
    :try_start_4b
    sget-object v7, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 7339
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 7336
    const-wide/16 v10, 0x400

    invoke-interface {v7, v2, v10, v11, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 7341
    .local v7, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_ae

    .line 7342
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-lez v9, :cond_8a

    .line 7343
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7344
    .local v10, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v11, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7345
    invoke-virtual {v11, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_89

    .line 7346
    iget-object v11, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v7, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7347
    iput-object v8, v10, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 7349
    .end local v10    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_89
    goto :goto_6b

    .line 7352
    :cond_8a
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 7354
    .local v9, "oldResDirs":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 7355
    .local v10, "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 7356
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 7355
    invoke-static {p0, v11, v10}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7357
    invoke-virtual {v8, v7, v10}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 7360
    iget-object v11, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v11, v9, v7}, Landroid/app/ResourcesManager;->appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 7362
    iget-object v11, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v11}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_ac} :catch_ad
    .catchall {:try_start_4b .. :try_end_ac} :catchall_f4

    goto :goto_ae

    .line 7364
    .end local v7    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "oldResDirs":[Ljava/lang/String;
    .end local v10    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_ad
    move-exception v7

    .line 7365
    :cond_ae
    :goto_ae
    goto :goto_dd

    .line 7368
    :cond_af
    :try_start_af
    const-string v7, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p2, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] reported as REPLACED, but missing application info. Assuming REMOVED."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7370
    iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v9, p2, v5

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7371
    iget-object v7, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v9, p2, v5

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7315
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v8    # "pkgInfo":Landroid/app/LoadedApk;
    :goto_dd
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_16

    .line 7374
    .end local v5    # "i":I
    :cond_e1
    monitor-exit v4
    :try_end_e2
    .catchall {:try_start_af .. :try_end_e2} :catchall_f4

    .line 7377
    :try_start_e2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    .line 7378
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 7377
    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_f1
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_f1} :catch_f2

    .line 7380
    goto :goto_145

    .line 7379
    :catch_f2
    move-exception v1

    .line 7382
    goto :goto_145

    .line 7374
    :catchall_f4
    move-exception v1

    :try_start_f5
    monitor-exit v4
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v1

    .line 7280
    .end local v3    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f7
    if-nez p1, :cond_fa

    move v1, v2

    .line 7281
    .local v1, "killApp":Z
    :cond_fa
    if-nez p2, :cond_fd

    .line 7282
    goto :goto_145

    .line 7284
    :cond_fd
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v3

    .line 7285
    :try_start_100
    array-length v4, p2

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_102
    if-ltz v4, :cond_140

    .line 7286
    if-nez v0, :cond_12d

    .line 7287
    iget-object v2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 7288
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_11a

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_11a

    .line 7289
    const/4 v0, 0x1

    goto :goto_12d

    .line 7291
    :cond_11a
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 7292
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v5, :cond_12d

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12d

    .line 7293
    const/4 v0, 0x1

    .line 7297
    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_12d
    :goto_12d
    if-eqz v1, :cond_13d

    .line 7299
    iget-object v2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7300
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7285
    :cond_13d
    add-int/lit8 v4, v4, -0x1

    goto :goto_102

    .line 7303
    .end local v4    # "i":I
    :cond_140
    monitor-exit v3

    .line 7304
    goto :goto_145

    .line 7303
    :catchall_142
    move-exception v2

    monitor-exit v3
    :try_end_144
    .catchall {:try_start_100 .. :try_end_144} :catchall_142

    throw v2

    .line 7385
    .end local v1    # "killApp":Z
    :goto_145
    invoke-static {p1, p2, v0}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 7386
    return-void

    nop

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_6
        :pswitch_f7
        :pswitch_8
    .end packed-switch
.end method

.method public greylist-max-o handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    .line 4699
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4701
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 4703
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4704
    nop

    .line 4705
    return-void

    .line 4703
    :catchall_18
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4704
    throw v1
.end method

.method public blacklist handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ILandroid/content/Intent;)Landroid/app/Activity;
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p3, "deviceId"    # I
    .param p4, "customIntent"    # Landroid/content/Intent;

    .line 4441
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4442
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4444
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v1, :cond_16

    .line 4445
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 4446
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 4450
    :cond_16
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/app/ActivityThread;->applyPendingApplicationInfoChanges(Ljava/lang/String;)V

    .line 4451
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 4452
    invoke-direct {p0, p3}, Landroid/app/ActivityThread;->updateDeviceIdForNonUIContexts(I)V

    .line 4458
    sget-boolean v1, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    if-eqz v1, :cond_35

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_35

    .line 4460
    invoke-static {}, Landroid/graphics/HardwareRenderer;->preload()V

    .line 4462
    :cond_35
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    .line 4465
    invoke-static {}, Landroid/os/GraphicsEnvironment;->hintActivityLaunch()V

    .line 4467
    invoke-direct {p0, p1, p4}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    .line 4469
    .local v1, "a":Landroid/app/Activity;
    if-eqz v1, :cond_68

    .line 4470
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 4471
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4472
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_64

    if-eqz p2, :cond_64

    .line 4473
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Landroid/app/servertransaction/PendingTransactionActions;->setOldState(Landroid/os/Bundle;)V

    .line 4474
    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setRestoreInstanceState(Z)V

    .line 4475
    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setCallOnPostCreate(Z)V

    .line 4479
    :cond_64
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleActivityWindowInfoChanged(Landroid/app/ActivityThread$ActivityClientRecord;)V

    goto :goto_72

    .line 4482
    :cond_68
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v4}, Landroid/app/ActivityClient;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    .line 4486
    :goto_72
    return-object v1
.end method

.method final greylist-max-o handleLowMemory()V
    .registers 5

    .line 7389
    nop

    .line 7390
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 7392
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7393
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_19

    .line 7394
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks2;

    invoke-interface {v3}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 7393
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7398
    .end local v2    # "i":I
    :cond_19
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2b

    .line 7399
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v2

    .line 7400
    .local v2, "sqliteReleased":I
    const v3, 0x124fb

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7404
    .end local v2    # "sqliteReleased":I
    :cond_2b
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 7407
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 7409
    const-string/jumbo v2, "mem"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 7410
    return-void
.end method

.method public blacklist handleNewIntent(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .registers 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .line 4521
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 4522
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 4523
    return-void
.end method

.method public blacklist handlePauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V
    .registers 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "autoEnteringPip"    # Z
    .param p5, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p6, "reason"    # Ljava/lang/String;

    .line 5808
    if-eqz p3, :cond_5

    .line 5809
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5812
    :cond_5
    const/4 v0, 0x1

    if-eqz p4, :cond_c

    .line 5815
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v1, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 5817
    :cond_c
    invoke-direct {p0, p1, p2, p6, p5}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    .line 5820
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5821
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 5823
    :cond_18
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5824
    return-void
.end method

.method public blacklist handlePictureInPictureRequested(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4730
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    move-result v0

    .line 4731
    .local v0, "receivedByApp":Z
    if-nez v0, :cond_b

    .line 4737
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeaveHintAndReturnToCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4739
    :cond_b
    return-void
.end method

.method public blacklist handlePictureInPictureStateChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/PictureInPictureUiState;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pipState"    # Landroid/app/PictureInPictureUiState;

    .line 4744
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V

    .line 4745
    return-void
.end method

.method final greylist-max-o handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V
    .registers 8
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 7181
    const-string v0, "Low overhead tracing feature is not enabled"

    const-string v1, "ActivityThread"

    if-eqz p1, :cond_50

    .line 7182
    packed-switch p3, :pswitch_data_7e

    .line 7192
    :try_start_9
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_b} :catch_28
    .catchall {:try_start_9 .. :try_end_b} :catchall_26

    goto :goto_1a

    .line 7184
    :pswitch_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->alwaysEnableProfileCode()Z

    move-result v2

    if-nez v2, :cond_16

    .line 7185
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7186
    goto :goto_7c

    .line 7188
    :cond_16
    invoke-static {}, Ldalvik/system/VMDebug;->startLowOverheadTraceForAllMethods()V

    .line 7189
    goto :goto_7c

    .line 7192
    :goto_1a
    :try_start_1a
    invoke-virtual {v0, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 7193
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_22} :catch_28
    .catchall {:try_start_1a .. :try_end_22} :catchall_26

    .line 7199
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 7194
    goto :goto_7c

    .line 7199
    :catchall_26
    move-exception v0

    goto :goto_4c

    .line 7195
    :catch_28
    move-exception v0

    .line 7196
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_26

    .line 7199
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 7200
    goto :goto_7c

    .line 7199
    :goto_4c
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 7200
    throw v0

    .line 7203
    :cond_50
    packed-switch p3, :pswitch_data_84

    .line 7221
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    goto :goto_7c

    .line 7205
    :pswitch_59
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->alwaysEnableProfileCode()Z

    move-result v2

    if-nez v2, :cond_68

    .line 7206
    if-eqz p2, :cond_64

    .line 7207
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 7209
    :cond_64
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7210
    goto :goto_7c

    .line 7212
    :cond_68
    if-eqz p2, :cond_78

    .line 7213
    iget-object v0, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 7214
    .local v0, "fd":Ljava/io/FileDescriptor;
    nop

    .line 7215
    invoke-static {v0}, Ldalvik/system/VMDebug$TraceDestination;->fromFileDescriptor(Ljava/io/FileDescriptor;)Ldalvik/system/VMDebug$TraceDestination;

    move-result-object v1

    .line 7216
    .local v1, "dst":Ldalvik/system/VMDebug$TraceDestination;
    invoke-static {v1}, Ldalvik/system/VMDebug;->dumpLowOverheadTrace(Ldalvik/system/VMDebug$TraceDestination;)V

    .line 7218
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "dst":Ldalvik/system/VMDebug$TraceDestination;
    :cond_78
    invoke-static {}, Ldalvik/system/VMDebug;->stopLowOverheadTrace()V

    .line 7219
    nop

    .line 7225
    :goto_7c
    return-void

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_59
    .end packed-switch
.end method

.method public greylist-max-o handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 16
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 6425
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 6426
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6428
    const/4 v1, 0x0

    .line 6433
    .local v1, "configChanges":I
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 6434
    :try_start_a
    iget-object v3, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6435
    .local v3, "N":I
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_c6

    .line 6436
    .local v4, "token":Landroid/os/IBinder;
    const/4 p1, 0x0

    .line 6437
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    if-ge v5, v3, :cond_35

    .line 6438
    :try_start_16
    iget-object v6, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6439
    .local v6, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v7, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v7, v4, :cond_2f

    .line 6440
    move-object p1, v6

    .line 6441
    iget v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v1, v7

    .line 6442
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6443
    add-int/lit8 v5, v5, -0x1

    .line 6444
    add-int/lit8 v3, v3, -0x1

    .line 6437
    .end local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_2f
    add-int/2addr v5, v0

    goto :goto_14

    .line 6456
    .end local v3    # "N":I
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v5    # "i":I
    :catchall_31
    move-exception v0

    move-object v8, p2

    goto/16 :goto_c8

    .line 6448
    .restart local v3    # "N":I
    .restart local v4    # "token":Landroid/os/IBinder;
    :cond_35
    if-nez p1, :cond_39

    .line 6450
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_31

    return-void

    .line 6456
    .end local v3    # "N":I
    .end local v4    # "token":Landroid/os/IBinder;
    :cond_39
    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_c6

    .line 6458
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v2, v0}, Landroid/app/ConfigurationController;->getPendingConfiguration(Z)Landroid/content/res/Configuration;

    move-result-object v2

    .line 6460
    .local v2, "changedConfig":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 6462
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v4, :cond_6b

    .line 6466
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v4}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 6467
    .local v4, "config":Landroid/content/res/Configuration;
    if-eqz v4, :cond_5f

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6468
    invoke-virtual {v5, v4}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_6b

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6469
    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_6b

    .line 6470
    :cond_5f
    if-eqz v2, :cond_69

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6471
    invoke-virtual {v5, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 6472
    :cond_69
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6481
    .end local v4    # "config":Landroid/content/res/Configuration;
    :cond_6b
    if-eqz v2, :cond_89

    .line 6482
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget v5, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v4, v5}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 6483
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v4, v2, v3}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 6486
    iget-object v3, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getCurDefaultDisplayDpi()I

    move-result v3

    iput v3, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 6487
    iget-object v3, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 6490
    :cond_89
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6492
    .local v5, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v5, :cond_97

    .line 6493
    return-void

    .line 6496
    :cond_97
    iget-object v3, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v4, v3, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v4, v1

    iput v4, v3, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 6497
    iget-object v3, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v3, :cond_aa

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v3, :cond_aa

    move v3, v0

    goto :goto_ab

    :cond_aa
    const/4 v3, 0x0

    :goto_ab
    iput-boolean v3, v5, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 6499
    iget-object v3, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v3, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 6501
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-boolean v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v11

    const-string/jumbo v12, "handleRelaunchActivity"

    move-object v4, p0

    move-object v8, p2

    .end local p2    # "pendingActions":Landroid/app/servertransaction/PendingTransactionActions;
    .local v8, "pendingActions":Landroid/app/servertransaction/PendingTransactionActions;
    invoke-direct/range {v4 .. v12}, Landroid/app/ActivityThread;->handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;Ljava/lang/String;)V

    .line 6504
    return-void

    .line 6456
    .end local v2    # "changedConfig":Landroid/content/res/Configuration;
    .end local v5    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v8    # "pendingActions":Landroid/app/servertransaction/PendingTransactionActions;
    .restart local p2    # "pendingActions":Landroid/app/servertransaction/PendingTransactionActions;
    :catchall_c6
    move-exception v0

    move-object v8, p2

    .end local p2    # "pendingActions":Landroid/app/servertransaction/PendingTransactionActions;
    .restart local v8    # "pendingActions":Landroid/app/servertransaction/PendingTransactionActions;
    :goto_c8
    :try_start_c8
    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_ca

    throw v0

    :catchall_ca
    move-exception v0

    goto :goto_c8
.end method

.method public greylist-max-o handleRelaunchActivityLocally(Landroid/os/IBinder;)V
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6536
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6537
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const-string v1, "ActivityThread"

    if-nez v0, :cond_12

    .line 6538
    const-string v2, "Activity to relaunch no longer exists"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6539
    return-void

    .line 6542
    :cond_12
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v2

    .line 6544
    .local v2, "prevState":I
    const/4 v3, 0x2

    if-lt v2, v3, :cond_61

    const/4 v3, 0x5

    if-le v2, v3, :cond_1d

    goto :goto_61

    .line 6550
    :cond_1d
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Landroid/app/ActivityClient;->activityLocalRelaunch(Landroid/os/IBinder;)V

    .line 6552
    new-instance v1, Landroid/util/MergedConfiguration;

    .line 6553
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_2f

    .line 6554
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    goto :goto_35

    :cond_2f
    iget-object v3, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    :goto_35
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, v3, v4}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    move-object v10, v1

    .line 6556
    .local v10, "mergedConfiguration":Landroid/util/MergedConfiguration;
    new-instance v5, Landroid/app/servertransaction/ActivityRelaunchItem;

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-boolean v11, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 6559
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    move-result-object v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v12}, Landroid/app/servertransaction/ActivityRelaunchItem;-><init>(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;)V

    .line 6561
    .local v5, "activityRelaunchItem":Landroid/app/servertransaction/ActivityRelaunchItem;
    nop

    .line 6562
    invoke-static {v0}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v1

    .line 6564
    .local v1, "lifecycleRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    new-instance v3, Landroid/app/servertransaction/ClientTransaction;

    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v3, v4}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    .line 6565
    .local v3, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v3, v5}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 6566
    invoke-virtual {v3, v1}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 6567
    invoke-virtual {p0, v3}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 6568
    return-void

    .line 6545
    .end local v1    # "lifecycleRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v3    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v5    # "activityRelaunchItem":Landroid/app/servertransaction/ActivityRelaunchItem;
    .end local v10    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :cond_61
    :goto_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity state must be in [ON_START..ON_STOP] in order to be relaunched,current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6547
    return-void
.end method

.method public greylist-max-o handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .registers 16
    .param p1, "cmd"    # Landroid/app/ActivityThread$RequestAssistContextExtras;

    .line 4530
    iget v0, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_9

    move v0, v3

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    move v1, v0

    .line 4532
    .local v1, "forAutofill":Z
    iget v0, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_12

    move v0, v3

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    move v4, v0

    .line 4535
    .local v4, "requestedOnlyContent":Z
    iget v0, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    iget v5, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    if-eq v0, v5, :cond_42

    .line 4537
    iget v0, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    iput v0, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    .line 4538
    iget-object v0, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_25
    if-ltz v0, :cond_42

    .line 4539
    iget-object v5, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/assist/AssistStructure;

    .line 4540
    .local v5, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v5, :cond_3a

    .line 4541
    invoke-virtual {v5}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    .line 4543
    :cond_3a
    iget-object v6, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4538
    .end local v5    # "structure":Landroid/app/assist/AssistStructure;
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 4547
    .end local v0    # "i":I
    :cond_42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 4548
    .local v7, "data":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 4549
    .local v0, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v1, :cond_4d

    const/4 v5, 0x0

    goto :goto_52

    :cond_4d
    new-instance v5, Landroid/app/assist/AssistContent;

    invoke-direct {v5}, Landroid/app/assist/AssistContent;-><init>()V

    :goto_52
    move-object v9, v5

    .line 4550
    .local v9, "content":Landroid/app/assist/AssistContent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 4551
    .local v11, "startTime":J
    iget-object v5, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4552
    .local v13, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v5, 0x0

    .line 4553
    .local v5, "referrer":Landroid/net/Uri;
    if-eqz v13, :cond_d6

    .line 4554
    if-nez v1, :cond_7d

    .line 4555
    iget-object v6, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    iget-object v8, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v8, v7}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4556
    iget-object v6, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    .line 4557
    iget-object v6, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v5

    .line 4559
    :cond_7d
    iget v6, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    if-eq v6, v3, :cond_88

    if-nez v1, :cond_88

    if-eqz v4, :cond_86

    goto :goto_88

    :cond_86
    move-object v10, v5

    goto :goto_d7

    .line 4561
    :cond_88
    :goto_88
    if-nez v4, :cond_94

    .line 4562
    new-instance v6, Landroid/app/assist/AssistStructure;

    iget-object v8, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v10, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    invoke-direct {v6, v8, v1, v10}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;ZI)V

    move-object v0, v6

    .line 4564
    :cond_94
    iget-object v6, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 4565
    .local v6, "activityIntent":Landroid/content/Intent;
    iget-object v8, v13, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v8, :cond_aa

    iget-object v8, v13, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 4566
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-nez v8, :cond_ab

    :cond_aa
    move v2, v3

    .line 4568
    .local v2, "notSecure":Z
    :cond_ab
    if-eqz v6, :cond_c3

    if-eqz v2, :cond_c3

    .line 4569
    if-nez v1, :cond_cd

    .line 4570
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4571
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, -0x43

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4573
    invoke-virtual {v9, v3}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 4574
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_cd

    .line 4576
    :cond_c3
    if-nez v1, :cond_cd

    .line 4577
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, v3}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 4580
    :cond_cd
    :goto_cd
    if-nez v1, :cond_d4

    .line 4581
    iget-object v3, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v9}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    .line 4586
    .end local v2    # "notSecure":Z
    .end local v6    # "activityIntent":Landroid/content/Intent;
    :cond_d4
    move-object v10, v5

    goto :goto_d7

    .line 4553
    :cond_d6
    move-object v10, v5

    .line 4586
    .end local v5    # "referrer":Landroid/net/Uri;
    .local v10, "referrer":Landroid/net/Uri;
    :goto_d7
    if-nez v4, :cond_f7

    .line 4587
    if-nez v0, :cond_e1

    .line 4588
    new-instance v2, Landroid/app/assist/AssistStructure;

    invoke-direct {v2}, Landroid/app/assist/AssistStructure;-><init>()V

    move-object v0, v2

    .line 4593
    :cond_e1
    invoke-virtual {v0, v11, v12}, Landroid/app/assist/AssistStructure;->setAcquisitionStartTime(J)V

    .line 4594
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/assist/AssistStructure;->setAcquisitionEndTime(J)V

    .line 4596
    iget-object v2, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v0

    goto :goto_f8

    .line 4586
    :cond_f7
    move-object v8, v0

    .line 4599
    .end local v0    # "structure":Landroid/app/assist/AssistStructure;
    .local v8, "structure":Landroid/app/assist/AssistStructure;
    :goto_f8
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    .line 4601
    .local v5, "mgr":Landroid/app/IActivityTaskManager;
    :try_start_fc
    iget-object v6, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    invoke-interface/range {v5 .. v10}, Landroid/app/IActivityTaskManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_101
    .catch Landroid/os/RemoteException; {:try_start_fc .. :try_end_101} :catch_103

    .line 4604
    nop

    .line 4605
    return-void

    .line 4602
    :catch_103
    move-exception v0

    .line 4603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist handleResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLjava/lang/String;)V
    .registers 16
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finalStateRequest"    # Z
    .param p3, "isForward"    # Z
    .param p4, "shouldSendCompatFakeFocus"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5643
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5644
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5648
    invoke-virtual {p0, p1, p2, p5}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 5649
    return-void

    .line 5651
    :cond_d
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5656
    return-void

    .line 5659
    :cond_18
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5666
    .local v1, "a":Landroid/app/Activity;
    const/16 v2, 0x100

    const/4 v3, 0x0

    if-eqz p3, :cond_21

    .line 5667
    move v4, v2

    goto :goto_22

    :cond_21
    move v4, v3

    .line 5672
    .local v4, "forwardBit":I
    :goto_22
    iget-boolean v5, v1, Landroid/app/Activity;->mStartedActivity:Z

    xor-int/2addr v5, v0

    .line 5673
    .local v5, "willBeVisible":Z
    if-nez v5, :cond_33

    .line 5674
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v6

    .line 5675
    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    .line 5674
    invoke-virtual {v6, v7}, Landroid/app/ActivityClient;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v5

    .line 5677
    :cond_33
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v6, :cond_85

    iget-boolean v6, v1, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_85

    if-eqz v5, :cond_85

    .line 5678
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    iput-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 5679
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 5680
    .local v6, "decor":Landroid/view/View;
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5681
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    .line 5682
    .local v7, "wm":Landroid/view/ViewManager;
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 5683
    .local v8, "l":Landroid/view/WindowManager$LayoutParams;
    iput-object v6, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5684
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5685
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v9, v4

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5686
    iget-boolean v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v9, :cond_73

    .line 5687
    iput-boolean v0, v1, Landroid/app/Activity;->mWindowAdded:Z

    .line 5688
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 5693
    invoke-virtual {v6}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v9

    .line 5694
    .local v9, "impl":Landroid/view/ViewRootImpl;
    if-eqz v9, :cond_73

    .line 5695
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->notifyChildRebuilt()V

    .line 5698
    .end local v9    # "impl":Landroid/view/ViewRootImpl;
    :cond_73
    iget-boolean v9, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v9, :cond_8a

    .line 5699
    iget-boolean v9, v1, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v9, :cond_81

    .line 5700
    iput-boolean v0, v1, Landroid/app/Activity;->mWindowAdded:Z

    .line 5701
    invoke-interface {v7, v6, v8}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8a

    .line 5707
    :cond_81
    invoke-virtual {v1, v8}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_8a

    .line 5714
    .end local v6    # "decor":Landroid/view/View;
    .end local v7    # "wm":Landroid/view/ViewManager;
    .end local v8    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_85
    if-nez v5, :cond_8a

    .line 5716
    iput-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    goto :goto_8b

    .line 5714
    :cond_8a
    :goto_8a
    nop

    .line 5720
    :goto_8b
    invoke-static {p1, v3}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5724
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_f9

    if-eqz v5, :cond_f9

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_f9

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v3, :cond_f9

    .line 5726
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 5727
    .local v3, "impl":Landroid/view/ViewRootImpl;
    if-eqz v3, :cond_af

    .line 5728
    iget-object v6, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    goto :goto_b5

    :cond_af
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 5729
    .local v6, "l":Landroid/view/WindowManager$LayoutParams;
    :goto_b5
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/2addr v2, v7

    if-eq v2, v4, :cond_d4

    .line 5732
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    or-int/2addr v2, v4

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5735
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v2, :cond_d4

    .line 5736
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 5737
    .local v2, "wm":Landroid/view/ViewManager;
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 5738
    .local v7, "decor":Landroid/view/View;
    invoke-interface {v2, v7, v6}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5742
    .end local v2    # "wm":Landroid/view/ViewManager;
    .end local v7    # "decor":Landroid/view/View;
    :cond_d4
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 5743
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5744
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v0, :cond_e8

    .line 5745
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->makeVisible()V

    .line 5748
    :cond_e8
    if-eqz p4, :cond_f9

    .line 5751
    if-eqz v3, :cond_f0

    .line 5752
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->dispatchCompatFakeFocus()V

    goto :goto_f9

    .line 5754
    :cond_f0
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->fakeFocusAfterAttachingToWindow()V

    .line 5759
    .end local v3    # "impl":Landroid/view/ViewRootImpl;
    .end local v6    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_f9
    :goto_f9
    iget-object v0, p0, Landroid/app/ActivityThread;->mNewActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5761
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v2, Landroid/app/ActivityThread$Idler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread-IA;)V

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5762
    return-void
.end method

.method public blacklist handleSendResult(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6193
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 6194
    .local v0, "resumed":Z
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_19

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v2, :cond_19

    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v2, :cond_19

    if-eqz v0, :cond_19

    .line 6199
    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6201
    :cond_19
    const/4 v1, 0x0

    if-eqz v0, :cond_96

    .line 6204
    :try_start_1c
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v2, Landroid/app/Activity;->mCalled:Z

    .line 6205
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 6206
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_2e

    .line 6220
    goto :goto_96

    .line 6207
    :cond_2e
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6208
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onPause()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resumed":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local p3    # "reason":Ljava/lang/String;
    throw v2
    :try_end_57
    .catch Landroid/util/SuperNotCalledException; {:try_start_1c .. :try_end_57} :catch_94
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_57} :catch_57

    .line 6213
    .restart local v0    # "resumed":Z
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local p3    # "reason":Ljava/lang/String;
    :catch_57
    move-exception v2

    .line 6214
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_63

    goto :goto_96

    .line 6215
    :cond_63
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to pause activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6217
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6218
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 6211
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_94
    move-exception v1

    .line 6212
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 6222
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :cond_96
    :goto_96
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 6223
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 6224
    if-eqz v0, :cond_a3

    .line 6225
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 6227
    :cond_a3
    return-void
.end method

.method public blacklist handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p3, "sceneTransitionInfo"    # Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 4290
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4291
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_aa

    .line 4294
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-eqz v1, :cond_d

    .line 4296
    return-void

    .line 4299
    :cond_d
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4300
    if-eqz p3, :cond_14

    .line 4301
    iput-object p3, v0, Landroid/app/Activity;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 4305
    :cond_14
    const-string/jumbo v1, "handleStartActivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->performStart(Ljava/lang/String;)V

    .line 4306
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 4308
    if-nez p2, :cond_21

    .line 4310
    return-void

    .line 4314
    :cond_21
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldRestoreInstanceState()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 4315
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 4316
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v1, :cond_35

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_4a

    .line 4317
    :cond_35
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_4a

    .line 4320
    :cond_3f
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v1, :cond_4a

    .line 4321
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4326
    :cond_4a
    :goto_4a
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldCallOnPostCreate()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 4327
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    .line 4328
    const-string/jumbo v1, "onPostCreate"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4329
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 4330
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0, v4, v5}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_72

    .line 4333
    :cond_6b
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v4}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4335
    :goto_72
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 4336
    iget-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_7a

    goto :goto_a3

    .line 4337
    :cond_7a
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4338
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onPostCreate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4343
    :cond_a3
    :goto_a3
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4344
    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4345
    return-void

    .line 4292
    :cond_aa
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t start activity that is not stopped."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist handleStopActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V
    .registers 12
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p3, "finalStateRequest"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 6063
    new-instance v0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    invoke-direct {v0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;-><init>()V

    move-object v3, v0

    .line 6064
    .local v3, "stopInfo":Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p3    # "finalStateRequest":Z
    .end local p4    # "reason":Ljava/lang/String;
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v5, "finalStateRequest":Z
    .local v6, "reason":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V

    .line 6070
    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6073
    invoke-static {v2}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 6074
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 6077
    :cond_1b
    invoke-virtual {v3, v2}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 6078
    iget-object p1, v2, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setState(Landroid/os/Bundle;)V

    .line 6079
    iget-object p1, v2, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setPersistentState(Landroid/os/PersistableBundle;)V

    .line 6080
    invoke-virtual {p2, v3}, Landroid/app/servertransaction/PendingTransactionActions;->setStopInfo(Landroid/app/servertransaction/PendingTransactionActions$StopInfo;)V

    .line 6081
    const/4 p1, 0x1

    iput-boolean p1, v1, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6082
    return-void
.end method

.method public blacklist handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 6961
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    const-string v1, "Must only be called in the system process"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 6962
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 6963
    return-void
.end method

.method public blacklist handleTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "onTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5772
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    if-ne v0, p2, :cond_35

    .line 5773
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "Activity top position already set to onTop="

    const-string v2, "ActivityThread"

    if-nez v0, :cond_21

    .line 5774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5775
    return-void

    .line 5778
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5781
    :cond_35
    iput-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    .line 5783
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_44

    .line 5784
    const-string/jumbo v0, "topStateChangedWhenResumed"

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5790
    :cond_44
    return-void
.end method

.method public greylist-max-o handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .line 4685
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4686
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_f

    .line 4687
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    .line 4689
    :cond_f
    return-void
.end method

.method final greylist handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .line 8477
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8478
    :try_start_3
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 8479
    monitor-exit v0

    .line 8480
    return-void

    .line 8479
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method final greylist-max-o handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .line 8483
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8484
    .local v0, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v0, :cond_60

    .line 8487
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8488
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_51

    .line 8489
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 8490
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_4e

    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_4e

    .line 8491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing dead content provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v4}, Landroid/content/IContentProvider;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityThread"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8492
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 8488
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 8496
    .end local v1    # "i":I
    :cond_51
    if-eqz p2, :cond_60

    .line 8503
    :try_start_53
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5e} :catch_5f

    .line 8507
    goto :goto_60

    .line 8505
    :catch_5f
    move-exception v1

    .line 8510
    :cond_60
    :goto_60
    return-void
.end method

.method public blacklist handleWindowContextInfoChanged(Landroid/os/IBinder;Landroid/window/WindowContextInfo;)V
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/window/WindowContextInfo;

    .line 6908
    invoke-static {}, Landroid/window/WindowTokenClientController;->getInstance()Landroid/window/WindowTokenClientController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowTokenClientController;->onWindowContextInfoChanged(Landroid/os/IBinder;Landroid/window/WindowContextInfo;)V

    .line 6909
    return-void
.end method

.method public blacklist handleWindowContextWindowRemoval(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 6913
    invoke-static {}, Landroid/window/WindowTokenClientController;->getInstance()Landroid/window/WindowTokenClientController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/window/WindowTokenClientController;->onWindowContextWindowRemoved(Landroid/os/IBinder;)V

    .line 6914
    return-void
.end method

.method public greylist-max-o installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 3325
    monitor-enter p0

    .line 3326
    :try_start_1
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3327
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 3328
    .local v0, "sysUiContextImpl":Landroid/app/ContextImpl;
    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3331
    new-instance v1, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v1}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 3332
    .end local v0    # "sysUiContextImpl":Landroid/app/ContextImpl;
    monitor-exit p0

    .line 3333
    return-void

    .line 3332
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public final greylist installSystemProviders(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 8836
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_7

    .line 8837
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 8839
    :cond_7
    return-void
.end method

.method public blacklist isHandleSplashScreenExit(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4759
    monitor-enter p0

    .line 4760
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->containsExitListener(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return v0

    .line 4761
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public blacklist isInDensityCompatMode()Z
    .registers 2

    .line 9166
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    return v0
.end method

.method public greylist-max-o isProfiling()Z
    .registers 2

    .line 3213
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist onNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 4692
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4693
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_f

    .line 4694
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onNewSceneTransitionInfo(Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 4696
    :cond_f
    return-void
.end method

.method blacklist onSystemUiContextCleanup(Landroid/app/ContextImpl;)V
    .registers 4
    .param p1, "context"    # Landroid/app/ContextImpl;

    .line 3317
    monitor-enter p0

    .line 3318
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 3319
    :cond_7
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Landroid/app/ActivityThread$$ExternalSyntheticLambda4;-><init>(Landroid/app/ContextImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 3321
    monitor-exit p0

    .line 3322
    return-void

    .line 3321
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final greylist-max-p peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeCode"    # Z

    .line 3082
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 3084
    if-eqz p2, :cond_e

    .line 3085
    :try_start_5
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_16

    .line 3087
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_e
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3089
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_16
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk;

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    monitor-exit v0

    return-object v2

    .line 3090
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v1
.end method

.method blacklist performDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finishing"    # Z
    .param p3, "getNonConfigInstance"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 6234
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 6235
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p2, :cond_d

    .line 6236
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/Activity;->mFinished:Z

    .line 6239
    :cond_d
    const-string v1, "destroy"

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 6241
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 6242
    const-string v1, "destroy"

    invoke-direct {p0, p1, v2, v1}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 6244
    :cond_1c
    if-eqz p3, :cond_64

    .line 6246
    :try_start_1e
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object v1

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_26} :catch_27

    .line 6252
    goto :goto_64

    .line 6247
    :catch_27
    move-exception v1

    .line 6248
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_64

    .line 6249
    :cond_33
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retain activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6250
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 6255
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_64
    :goto_64
    :try_start_64
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v1, Landroid/app/Activity;->mCalled:Z

    .line 6256
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 6257
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_7f

    .line 6261
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v1, :cond_7e

    .line 6262
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 6271
    :cond_7e
    goto :goto_af

    .line 6258
    :cond_7f
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onDestroy()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "finishing":Z
    .end local p3    # "getNonConfigInstance":Z
    .end local p4    # "reason":Ljava/lang/String;
    throw v1
    :try_end_a4
    .catch Landroid/util/SuperNotCalledException; {:try_start_64 .. :try_end_a4} :catch_105
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_a4} :catch_a4

    .line 6266
    .restart local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "finishing":Z
    .restart local p3    # "getNonConfigInstance":Z
    .restart local p4    # "reason":Ljava/lang/String;
    :catch_a4
    move-exception v1

    .line 6267
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 6272
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_af
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 6273
    invoke-virtual {p0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 6274
    monitor-enter p0

    .line 6275
    :try_start_b7
    iget-object v1, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v1, :cond_c2

    .line 6276
    iget-object v1, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->tokenDestroyed(Landroid/os/IBinder;)V

    .line 6278
    :cond_c2
    monitor-exit p0
    :try_end_c3
    .catchall {:try_start_b7 .. :try_end_c3} :catchall_d5

    .line 6282
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 6283
    :try_start_c6
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6284
    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_c6 .. :try_end_ce} :catchall_d2

    .line 6285
    invoke-static {v0}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 6286
    return-void

    .line 6284
    :catchall_d2
    move-exception v2

    :try_start_d3
    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v2

    .line 6278
    :catchall_d5
    move-exception v1

    :try_start_d6
    monitor-exit p0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v1

    .line 6268
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_d8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to destroy activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 6269
    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 6264
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_105
    move-exception v1

    .line 6265
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1
.end method

.method final greylist-max-o performPauseActivity(Landroid/os/IBinder;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5833
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5834
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_f

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public blacklist performRestartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "start"    # Z

    .line 6097
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_f

    .line 6098
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->performRestart(Z)V

    .line 6099
    if-eqz p2, :cond_f

    .line 6100
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 6103
    :cond_f
    return-void
.end method

.method public blacklist performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z
    .registers 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finalStateRequest"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5572
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 5573
    return v1

    .line 5575
    :cond_8
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_29

    .line 5576
    if-nez p2, :cond_28

    .line 5577
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to resume activity which is already resumed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 5579
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityThread"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5580
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5587
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_28
    return v1

    .line 5589
    :cond_29
    if-eqz p2, :cond_31

    .line 5590
    iput-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 5591
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v0, Landroid/app/Activity;->mStartedActivity:Z

    .line 5594
    :cond_31
    :try_start_31
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onStateNotSaved()V

    .line 5595
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 5596
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 5597
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 5598
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 5599
    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 5601
    :cond_4c
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v0, :cond_57

    .line 5602
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, p1, v0, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 5603
    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 5605
    :cond_57
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    invoke-virtual {v0, v3, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 5607
    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 5608
    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 5609
    invoke-virtual {p1, v2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5611
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    const-string/jumbo v1, "topWhenResuming"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_6d} :catch_6e

    .line 5617
    goto :goto_79

    .line 5612
    :catch_6e
    move-exception v0

    .line 5613
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 5618
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_79
    const/4 v0, 0x1

    return v0

    .line 5614
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_7b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resume activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5615
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method final greylist-max-r performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "saveState"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5926
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5927
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p2

    move-object v6, p3

    .end local p2    # "saveState":Z
    .end local p3    # "reason":Ljava/lang/String;
    .local v4, "saveState":Z
    .local v6, "reason":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V

    .line 5929
    return-void
.end method

.method final greylist-max-o performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5827
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPictureInPictureRequested(Landroid/app/Activity;)V

    .line 5828
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 5829
    return-void
.end method

.method public blacklist prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;)Landroid/app/ActivityThread$ActivityClientRecord;
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "config"    # Landroid/util/MergedConfiguration;
    .param p6, "preserveWindow"    # Z
    .param p7, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z",
            "Landroid/window/ActivityWindowInfo;",
            ")",
            "Landroid/app/ActivityThread$ActivityClientRecord;"
        }
    .end annotation

    .line 6374
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v0, 0x0

    .line 6375
    .local v0, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    .line 6377
    .local v1, "scheduleRelaunch":Z
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 6378
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    :try_start_6
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3b

    .line 6379
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6381
    .local v4, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v5, p1, :cond_38

    .line 6382
    move-object v0, v4

    .line 6383
    if-eqz p2, :cond_29

    .line 6384
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v5, :cond_27

    .line 6385
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_29

    .line 6387
    :cond_27
    iput-object p2, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 6390
    :cond_29
    :goto_29
    if-eqz p3, :cond_3b

    .line 6391
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v5, :cond_35

    .line 6392
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3b

    .line 6394
    :cond_35
    iput-object p3, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_3b

    .line 6378
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 6401
    .end local v3    # "i":I
    :cond_3b
    :goto_3b
    if-nez v0, :cond_51

    .line 6403
    new-instance v3, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v3}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    move-object v0, v3

    .line 6404
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 6405
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 6406
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 6407
    iput-boolean p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 6408
    iget-object v3, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6409
    const/4 v1, 0x1

    .line 6411
    :cond_51
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 6412
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 6413
    iget v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v3, p4

    iput v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 6414
    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object v3

    invoke-virtual {v3, p7}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 6415
    monitor-exit v2

    .line 6417
    if-eqz v1, :cond_6e

    move-object v2, v0

    goto :goto_6f

    :cond_6e
    const/4 v2, 0x0

    :goto_6f
    return-object v2

    .line 6415
    :catchall_70
    move-exception v3

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_6 .. :try_end_72} :catchall_70

    throw v3
.end method

.method public greylist-max-r registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .line 3888
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3889
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/app/ActivityThread$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/app/ActivityThread$$ExternalSyntheticLambda6;-><init>()V

    .line 3890
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3891
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3892
    nop

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v0

    .line 3893
    return-void

    .line 3892
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist registerSplashScreenManager(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)V
    .registers 3
    .param p1, "manager"    # Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    .line 4752
    monitor-enter p0

    .line 4753
    :try_start_1
    iput-object p1, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    .line 4754
    monitor-exit p0

    .line 4755
    return-void

    .line 4754
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final greylist releaseProvider(Landroid/content/IContentProvider;Z)Z
    .registers 12
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "stable"    # Z

    .line 8347
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 8348
    return v0

    .line 8351
    :cond_4
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 8352
    .local v1, "jBinder":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 8353
    :try_start_b
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 8354
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v3, :cond_17

    .line 8356
    monitor-exit v2

    return v0

    .line 8359
    :cond_17
    const/4 v4, 0x0

    .line 8360
    .local v4, "lastRef":Z
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz p2, :cond_44

    .line 8361
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_22

    .line 8364
    monitor-exit v2

    return v0

    .line 8366
    :cond_22
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 8367
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_6a

    .line 8374
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_a3

    if-nez v7, :cond_31

    move v7, v6

    goto :goto_32

    :cond_31
    move v7, v0

    :goto_32
    move v4, v7

    .line 8380
    :try_start_33
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 8381
    if-eqz v4, :cond_3e

    move v0, v6

    .line 8380
    :cond_3e
    invoke-interface {v7, v8, v5, v0}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_41} :catch_42
    .catchall {:try_start_33 .. :try_end_41} :catchall_a3

    goto :goto_43

    .line 8382
    :catch_42
    move-exception v0

    .line 8384
    :goto_43
    goto :goto_6a

    .line 8387
    :cond_44
    :try_start_44
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_4a

    .line 8390
    monitor-exit v2

    return v0

    .line 8392
    :cond_4a
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 8393
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_6a

    .line 8397
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_a3

    if-nez v7, :cond_59

    move v7, v6

    goto :goto_5a

    :cond_59
    move v7, v0

    :goto_5a
    move v4, v7

    .line 8398
    if-nez v4, :cond_6a

    .line 8404
    :try_start_5d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v7, v8, v0, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_68} :catch_69
    .catchall {:try_start_5d .. :try_end_68} :catchall_a3

    .line 8408
    goto :goto_6a

    .line 8406
    :catch_69
    move-exception v0

    .line 8413
    :cond_6a
    :goto_6a
    if-eqz v4, :cond_a1

    .line 8414
    :try_start_6c
    iget-boolean v0, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v0, :cond_83

    .line 8421
    iput-boolean v6, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 8422
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v5, 0x83

    invoke-virtual {v0, v5, v3}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8423
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v0, v7, v8}, Landroid/app/ActivityThread$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8424
    nop

    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_a1

    .line 8425
    :cond_83
    const-string v0, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate remove pending of provider "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v7, v7, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8428
    :cond_a1
    :goto_a1
    monitor-exit v2

    return v6

    .line 8429
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "lastRef":Z
    :catchall_a3
    move-exception v0

    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_6c .. :try_end_a5} :catchall_a3

    throw v0
.end method

.method public blacklist removeConfigurationChangedListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 3991
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/IBinder;>;"
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationChangedListenerController:Landroid/app/ConfigurationChangedListenerController;

    invoke-virtual {v0, p1}, Landroid/app/ConfigurationChangedListenerController;->removeListener(Ljava/util/function/Consumer;)V

    .line 3992
    return-void
.end method

.method public blacklist reportRefresh(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6107
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->activityRefreshed(Landroid/os/IBinder;)V

    .line 6108
    return-void
.end method

.method public blacklist reportRelaunch(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6615
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->activityRelaunched(Landroid/os/IBinder;)V

    .line 6616
    return-void
.end method

.method public greylist-max-o reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 6092
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {p1}, Landroid/app/servertransaction/PendingTransactionActions;->getStopInfo()Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 6093
    return-void
.end method

.method public final greylist-max-o resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3907
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 3908
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3907
    const/16 v1, 0x400

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3909
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_13

    .line 3911
    const/16 v1, -0x5c

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 3914
    :cond_13
    return-object v0
.end method

.method final greylist-max-o scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .line 4108
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    .line 4109
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 4110
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 4111
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 4112
    const/16 v1, 0x77

    invoke-virtual {p0, v1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 4113
    return-void
.end method

.method greylist scheduleGcIdler()V
    .registers 3

    .line 3337
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_10

    .line 3338
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 3339
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3341
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 3342
    return-void
.end method

.method blacklist schedulePurgeIdler()V
    .registers 3

    .line 3353
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    if-nez v0, :cond_10

    .line 3354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 3355
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3357
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 3358
    return-void
.end method

.method greylist-max-o scheduleRelaunchActivity(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6507
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6508
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_2d

    .line 6509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule relaunch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6510
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 6512
    :cond_2d
    return-void
.end method

.method public greylist sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 14
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .line 4061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 4062
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v2, Landroid/app/ResultInfo;

    move-object v7, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "id":Ljava/lang/String;
    .end local p3    # "requestCode":I
    .end local p4    # "resultCode":I
    .end local p5    # "data":Landroid/content/Intent;
    .local v3, "id":Ljava/lang/String;
    .local v4, "requestCode":I
    .local v5, "resultCode":I
    .local v6, "data":Landroid/content/Intent;
    .local v7, "activityToken":Landroid/os/IBinder;
    invoke-direct/range {v2 .. v7}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4063
    new-instance p1, Landroid/app/servertransaction/ClientTransaction;

    iget-object p2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {p1, p2}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    .line 4064
    .local p1, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    new-instance p2, Landroid/app/servertransaction/ActivityResultItem;

    invoke-direct {p2, v7, v1}, Landroid/app/servertransaction/ActivityResultItem;-><init>(Landroid/os/IBinder;Ljava/util/List;)V

    .line 4065
    .local p2, "activityResultItem":Landroid/app/servertransaction/ActivityResultItem;
    invoke-virtual {p1, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 4067
    :try_start_22
    iget-object p3, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {p3, p1}, Landroid/app/ActivityThread$ApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_28

    .line 4070
    goto :goto_29

    .line 4068
    :catch_28
    move-exception v0

    .line 4071
    :goto_29
    return-void
.end method

.method greylist-max-o sendMessage(ILjava/lang/Object;)V
    .registers 9
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 4079
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .end local p1    # "what":I
    .end local p2    # "obj":Ljava/lang/Object;
    .local v1, "what":I
    .local v2, "obj":Ljava/lang/Object;
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 4080
    return-void
.end method

.method public final greylist-max-p startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/app/Activity;
    .registers 12
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "state"    # Landroid/os/Bundle;
    .param p7, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p8, "assistToken"    # Landroid/os/IBinder;
    .param p9, "shareableActivityToken"    # Landroid/os/IBinder;

    .line 3922
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 3923
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 3924
    iput-object p8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    .line 3925
    iput-object p9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;

    .line 3926
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 3927
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3928
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 3929
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 3930
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 3931
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3932
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 3948
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o stopProfiling()V
    .registers 2

    .line 7234
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_9

    .line 7235
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 7237
    :cond_9
    return-void
.end method

.method public greylist-max-r unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .line 3898
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3899
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3900
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v1, :cond_10

    .line 3901
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3903
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :cond_10
    monitor-exit v0

    .line 3904
    return-void

    .line 3903
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method greylist-max-o unscheduleGcIdler()V
    .registers 3

    .line 3345
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_10

    .line 3346
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 3347
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3349
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 3350
    return-void
.end method

.method blacklist unschedulePurgeIdler()V
    .registers 3

    .line 3361
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    if-eqz v0, :cond_10

    .line 3362
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 3363
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3365
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 3366
    return-void
.end method

.method public blacklist updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 7053
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7054
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 7055
    .local v1, "pendingOverrideConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_15

    .line 7056
    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 7062
    monitor-exit v0

    return-void

    .line 7064
    :cond_15
    iget-object v2, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7065
    nop

    .end local v1    # "pendingOverrideConfig":Landroid/content/res/Configuration;
    monitor-exit v0

    .line 7066
    return-void

    .line 7065
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public greylist-max-o updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3996
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 3997
    invoke-virtual {v0, p1}, Landroid/app/ConfigurationController;->updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3999
    .local v0, "updatedConfig":Landroid/content/res/Configuration;
    if-eqz v0, :cond_a

    .line 4000
    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 4002
    :cond_a
    return-void
.end method

.method public greylist-max-o updateProcessState(IZ)V
    .registers 7
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    .line 4006
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    monitor-enter v0

    .line 4007
    :try_start_3
    iget v1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    if-ne v1, p1, :cond_9

    .line 4008
    monitor-exit v0

    return-void

    .line 4010
    :cond_9
    iget v1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    invoke-direct {p0, v1, p1}, Landroid/app/ActivityThread;->updateVmProcessState(II)V

    .line 4011
    iput p1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    .line 4016
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_31

    .line 4017
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateProcessState: processState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 4021
    :cond_30
    return-void

    .line 4016
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method
