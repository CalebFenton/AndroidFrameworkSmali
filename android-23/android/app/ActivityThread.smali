.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$ProviderKey;,
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$NewIntentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$ResultData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$ActivityConfigChangeData;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$StopInfo;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$EventLoggingReporter;,
        Landroid/app/ActivityThread$DropBoxReporter;
    }
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x3

.field private static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_BROADCAST:Z = false

.field public static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_MEMORY_TRIM:Z = false

.field static final DEBUG_MESSAGES:Z = false

.field private static final DEBUG_PROVIDER:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final DEBUG_SERVICE:Z = false

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s"

.field private static final HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field private static final LOG_AM_ON_PAUSE_CALLED:I = 0x7545

.field private static final LOG_AM_ON_RESUME_CALLED:I = 0x7546

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final ONE_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s"

.field public static final SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field static final localLOGV:Z

.field private static sCurrentActivityThread:Landroid/app/ActivityThread;

.field private static final sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field static sMainThreadHandler:Landroid/os/Handler;

.field static sPackageManager:Landroid/content/pm/IPackageManager;


# instance fields
.field final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field private mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

.field final mBackupAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field mCompatConfiguration:Landroid/content/res/Configuration;

.field mConfiguration:Landroid/content/res/Configuration;

.field mCoreSettings:Landroid/os/Bundle;

.field mCurDefaultDisplayDpi:I

.field mDensityCompatMode:Z

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mH:Landroid/app/ActivityThread$H;

.field mInitialApplication:Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationLibDir:Ljava/lang/String;

.field mInstrumentationPackageName:Ljava/lang/String;

.field mInstrumentationSplitAppDirs:[Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field mInstrumentedLibDir:Ljava/lang/String;

.field mInstrumentedSplitAppDirs:[Ljava/lang/String;

.field mJitEnabled:Z

.field mLastAssistStructure:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/assist/AssistStructure;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalProvidersByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLooper:Landroid/os/Looper;

.field private mMainThreadConfig:Landroid/content/res/Configuration;

.field mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

.field mNumVisibleActivities:I

.field final mOnPauseListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;

.field mProfiler:Landroid/app/ActivityThread$Profiler;

.field final mProviderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mResourcePackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mSomeActivitiesChanged:Z

.field private mSystemContext:Landroid/app/ContextImpl;

.field mSystemThread:Z

.field private mThumbnailCanvas:Landroid/graphics/Canvas;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method static synthetic -get0(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap10(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 0
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$NewIntentData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZIZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 0
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V
    .locals 0
    .param p1, "res"    # Landroid/app/ActivityThread$ResultData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap20(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z
    .param p3, "configChanges"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 153
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@2
    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    #@4
    .line 2672
    new-instance v0, Ljava/lang/ThreadLocal;

    #@6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@9
    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    #@b
    .line 150
    return-void
.end method

.method constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 1851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 180
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    #@8
    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread;)V

    #@b
    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@d
    .line 181
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    #@13
    .line 182
    new-instance v0, Landroid/app/ActivityThread$H;

    #@15
    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$H;)V

    #@18
    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@1a
    .line 183
    new-instance v0, Landroid/util/ArrayMap;

    #@1c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1f
    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@21
    .line 186
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    #@23
    .line 188
    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@25
    .line 190
    new-instance v0, Landroid/util/ArrayMap;

    #@27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@2a
    iput-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    #@2c
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@31
    .line 198
    iput-object v0, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    #@33
    .line 201
    new-instance v0, Landroid/util/ArrayMap;

    #@35
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@38
    iput-object v0, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    #@3a
    .line 205
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    #@3c
    .line 206
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    #@3e
    .line 207
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    #@40
    .line 208
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    #@42
    .line 209
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    #@44
    .line 210
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    #@46
    .line 211
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    #@48
    .line 212
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    #@4a
    .line 213
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    #@4c
    .line 214
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@4e
    .line 226
    new-instance v0, Landroid/util/ArrayMap;

    #@50
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@53
    .line 225
    iput-object v0, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@55
    .line 228
    new-instance v0, Landroid/util/ArrayMap;

    #@57
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5a
    .line 227
    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@5c
    .line 230
    new-instance v0, Ljava/util/ArrayList;

    #@5e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@61
    .line 229
    iput-object v0, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@63
    .line 231
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@65
    .line 261
    new-instance v0, Landroid/util/ArrayMap;

    #@67
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@6a
    .line 260
    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@6c
    .line 263
    new-instance v0, Landroid/util/ArrayMap;

    #@6e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@71
    .line 262
    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@73
    .line 265
    new-instance v0, Landroid/util/ArrayMap;

    #@75
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@78
    .line 264
    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    #@7a
    .line 267
    new-instance v0, Landroid/util/ArrayMap;

    #@7c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@7f
    .line 266
    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    #@81
    .line 270
    new-instance v0, Landroid/util/ArrayMap;

    #@83
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@86
    .line 269
    iput-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@88
    .line 272
    new-instance v0, Landroid/app/ActivityThread$GcIdler;

    #@8a
    invoke-direct {v0, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    #@8d
    iput-object v0, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    #@8f
    .line 273
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    #@91
    .line 277
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    #@93
    .line 1681
    new-instance v0, Landroid/content/res/Configuration;

    #@95
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@98
    iput-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    #@9a
    .line 3249
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    #@9c
    .line 3250
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    #@9e
    .line 3251
    iput-object v1, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    #@a0
    .line 3252
    iput-object v1, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    #@a2
    .line 1852
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    #@a5
    move-result-object v0

    #@a6
    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@a8
    .line 1851
    return-void
.end method

.method private attach(Z)V
    .locals 7
    .param p1, "system"    # Z

    #@0
    .prologue
    .line 5231
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    #@2
    .line 5232
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    #@4
    .line 5233
    if-nez p1, :cond_0

    #@6
    .line 5234
    new-instance v4, Landroid/app/ActivityThread$1;

    #@8
    invoke-direct {v4, p0}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;)V

    #@b
    invoke-static {v4}, Landroid/view/ViewRootImpl;->addFirstDrawHandler(Ljava/lang/Runnable;)V

    #@e
    .line 5240
    const-string/jumbo v4, "<pre-initialized>"

    #@11
    .line 5241
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@14
    move-result v5

    #@15
    .line 5240
    invoke-static {v4, v5}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    #@18
    .line 5242
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@1a
    invoke-virtual {v4}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    #@21
    .line 5243
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@24
    move-result-object v3

    #@25
    .line 5245
    .local v3, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@27
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@2a
    .line 5250
    :goto_0
    new-instance v4, Landroid/app/ActivityThread$2;

    #@2c
    invoke-direct {v4, p0, v3}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V

    #@2f
    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    #@32
    .line 5288
    .end local v3    # "mgr":Landroid/app/IActivityManager;
    :goto_1
    new-instance v4, Landroid/app/ActivityThread$DropBoxReporter;

    #@34
    invoke-direct {v4, p0}, Landroid/app/ActivityThread$DropBoxReporter;-><init>(Landroid/app/ActivityThread;)V

    #@37
    invoke-static {v4}, Llibcore/io/DropBox;->setReporter(Llibcore/io/DropBox$Reporter;)V

    #@3a
    .line 5290
    new-instance v4, Landroid/app/ActivityThread$3;

    #@3c
    invoke-direct {v4, p0}, Landroid/app/ActivityThread$3;-><init>(Landroid/app/ActivityThread;)V

    #@3f
    invoke-static {v4}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    #@42
    .line 5230
    return-void

    #@43
    .line 5273
    :cond_0
    const-string/jumbo v4, "system_process"

    #@46
    .line 5274
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@49
    move-result v5

    #@4a
    .line 5273
    invoke-static {v4, v5}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    #@4d
    .line 5276
    :try_start_1
    new-instance v4, Landroid/app/Instrumentation;

    #@4f
    invoke-direct {v4}, Landroid/app/Instrumentation;-><init>()V

    #@52
    iput-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@54
    .line 5278
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@57
    move-result-object v4

    #@58
    iget-object v4, v4, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@5a
    .line 5277
    invoke-static {p0, v4}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    #@5d
    move-result-object v0

    #@5e
    .line 5279
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@60
    const/4 v5, 0x1

    #@61
    const/4 v6, 0x0

    #@62
    invoke-virtual {v4, v5, v6}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    #@65
    move-result-object v4

    #@66
    iput-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@68
    .line 5280
    iget-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@6a
    invoke-virtual {v4}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@6d
    goto :goto_1

    #@6e
    .line 5281
    .end local v0    # "context":Landroid/app/ContextImpl;
    :catch_0
    move-exception v1

    #@6f
    .line 5282
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@71
    .line 5283
    new-instance v5, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v6, "Unable to instantiate Application():"

    #@79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v5

    #@89
    .line 5282
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8c
    throw v4

    #@8d
    .line 5246
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "mgr":Landroid/app/IActivityManager;
    :catch_1
    move-exception v2

    #@8e
    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    #@0
    .prologue
    .line 4081
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@7
    .line 4082
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    #@d
    .line 4083
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 4084
    new-instance v0, Landroid/os/PersistableBundle;

    #@15
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    #@18
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@1a
    .line 4085
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@1c
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1e
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@20
    .line 4086
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@22
    .line 4085
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@25
    .line 4080
    :goto_0
    return-void

    #@26
    .line 4088
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@28
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@2a
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@2c
    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@2f
    goto :goto_0
.end method

.method static final cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 5
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3114
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3115
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    #@7
    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    #@9
    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@c
    .line 3116
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    #@e
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@11
    move-result-object v0

    #@12
    .line 3117
    .local v0, "wtoken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@14
    .line 3118
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@17
    move-result-object v1

    #@18
    .line 3119
    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1a
    invoke-virtual {v2}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, "Activity"

    #@25
    .line 3118
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 3122
    .end local v0    # "wtoken":Landroid/os/IBinder;
    :cond_0
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    #@2a
    .line 3123
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    #@2c
    .line 3113
    return-void
.end method

.method private createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/Activity;)Landroid/content/Context;
    .locals 11
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2426
    const/4 v3, 0x0

    #@2
    .line 2428
    .local v3, "displayId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@5
    move-result-object v9

    #@6
    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@8
    invoke-interface {v9, v10}, Landroid/app/IActivityManager;->getActivityDisplayId(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v3

    #@c
    .line 2433
    :goto_0
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@e
    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@10
    .line 2432
    invoke-static {p0, v9, v3, v10}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    #@13
    move-result-object v0

    #@14
    .line 2434
    .local v0, "appContext":Landroid/app/ContextImpl;
    invoke-virtual {v0, p2}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    #@17
    .line 2435
    move-object v1, v0

    #@18
    .line 2437
    .local v1, "baseContext":Landroid/content/Context;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    #@1b
    move-result-object v4

    #@1c
    .line 2441
    .local v4, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const-string/jumbo v9, "debug.second-display.pkg"

    #@1f
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    .line 2442
    .local v7, "pkgName":Ljava/lang/String;
    if-eqz v7, :cond_0

    #@25
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    #@28
    move-result v9

    #@29
    if-eqz v9, :cond_1

    #@2b
    .line 2453
    :cond_0
    :goto_1
    return-object v1

    #@2c
    .line 2443
    :cond_1
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@2e
    iget-object v9, v9, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@30
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@33
    move-result v9

    #@34
    .line 2442
    if-eqz v9, :cond_0

    #@36
    .line 2444
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    #@39
    move-result-object v9

    #@3a
    array-length v10, v9

    #@3b
    :goto_2
    if-ge v8, v10, :cond_0

    #@3d
    aget v6, v9, v8

    #@3f
    .line 2445
    .local v6, "id":I
    if-eqz v6, :cond_2

    #@41
    .line 2447
    invoke-virtual {v0, v6}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {v4, v6, v8}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@48
    move-result-object v2

    #@49
    .line 2448
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v0, v2}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    #@4c
    move-result-object v1

    #@4d
    goto :goto_1

    #@4e
    .line 2444
    .end local v2    # "display":Landroid/view/Display;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@50
    goto :goto_2

    #@51
    .line 2429
    .end local v0    # "appContext":Landroid/app/ContextImpl;
    .end local v1    # "baseContext":Landroid/content/Context;
    .end local v4    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v6    # "id":I
    .end local v7    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@52
    .local v5, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    #@0
    .prologue
    .line 3255
    iget-object v5, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    #@2
    .line 3257
    .local v5, "thumbnail":Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    #@4
    .line 3258
    :try_start_0
    iget v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    #@6
    .line 3260
    .local v6, "w":I
    if-gez v6, :cond_4

    #@8
    .line 3261
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@a
    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v4

    #@e
    .line 3262
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x1050002

    #@11
    .line 3263
    .local v7, "wId":I
    const v3, 0x1050001

    #@14
    .line 3264
    .local v3, "hId":I
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@17
    move-result v6

    #@18
    iput v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    #@1a
    .line 3265
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1d
    move-result v2

    #@1e
    .local v2, "h":I
    iput v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    #@20
    .line 3271
    .end local v3    # "hId":I
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v7    # "wId":I
    :goto_0
    if-lez v6, :cond_0

    #@22
    if-lez v2, :cond_0

    #@24
    .line 3272
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@26
    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    #@29
    move-result-object v8

    #@2a
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@2d
    move-result-object v8

    #@2e
    .line 3273
    sget-object v9, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    #@30
    .line 3272
    invoke-static {v8, v6, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@33
    move-result-object v5

    #@34
    .line 3274
    const/4 v8, 0x0

    #@35
    invoke-virtual {v5, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    #@38
    .line 3278
    .end local v2    # "h":I
    .end local v6    # "w":I
    :cond_0
    if-eqz v5, :cond_3

    #@3a
    .line 3279
    iget-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    #@3c
    .line 3280
    .local v0, "cv":Landroid/graphics/Canvas;
    if-nez v0, :cond_1

    #@3e
    .line 3281
    new-instance v0, Landroid/graphics/Canvas;

    #@40
    .end local v0    # "cv":Landroid/graphics/Canvas;
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    #@43
    .restart local v0    # "cv":Landroid/graphics/Canvas;
    iput-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    #@45
    .line 3284
    :cond_1
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@48
    .line 3285
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@4a
    invoke-virtual {v8, v5, v0}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    #@4d
    move-result v8

    #@4e
    if-nez v8, :cond_2

    #@50
    .line 3286
    iput-object v5, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    #@52
    .line 3287
    const/4 v5, 0x0

    #@53
    .line 3289
    .end local v5    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v8, 0x0

    #@54
    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@57
    .line 3302
    .end local v0    # "cv":Landroid/graphics/Canvas;
    :cond_3
    :goto_1
    return-object v5

    #@58
    .line 3267
    .restart local v5    # "thumbnail":Landroid/graphics/Bitmap;
    .restart local v6    # "w":I
    :cond_4
    iget v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .restart local v2    # "h":I
    goto :goto_0

    #@5b
    .line 3292
    .end local v2    # "h":I
    .end local v5    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v6    # "w":I
    :catch_0
    move-exception v1

    #@5c
    .line 3293
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@5e
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@60
    invoke-virtual {v8, v9, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@63
    move-result v8

    #@64
    if-nez v8, :cond_5

    #@66
    .line 3294
    new-instance v8, Ljava/lang/RuntimeException;

    #@68
    .line 3295
    new-instance v9, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v10, "Unable to create thumbnail of "

    #@70
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    .line 3296
    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@76
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@79
    move-result-object v10

    #@7a
    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@7d
    move-result-object v10

    #@7e
    .line 3295
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    .line 3297
    const-string/jumbo v10, ": "

    #@85
    .line 3295
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v9

    #@89
    .line 3297
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@8c
    move-result-object v10

    #@8d
    .line 3295
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v9

    #@95
    .line 3294
    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@98
    throw v8

    #@99
    .line 3299
    :cond_5
    const/4 v5, 0x0

    #@9a
    .local v5, "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public static currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    #@0
    .prologue
    .line 1639
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    #@2
    return-object v0
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1665
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@4
    move-result-object v0

    #@5
    .line 1666
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    #@7
    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@9
    :cond_0
    return-object v1
.end method

.method public static currentOpPackageName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1647
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@4
    move-result-object v0

    #@5
    .line 1648
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1649
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 1648
    :cond_0
    return-object v1
.end method

.method public static currentPackageName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1653
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@4
    move-result-object v0

    #@5
    .line 1654
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    #@7
    iget-object v2, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1655
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@d
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@f
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@11
    .line 1654
    :cond_0
    return-object v1
.end method

.method public static currentProcessName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1659
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@4
    move-result-object v0

    #@5
    .line 1660
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    #@7
    iget-object v2, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1661
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@d
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@f
    .line 1660
    :cond_0
    return-object v1
.end method

.method private deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2539
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 2540
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 2541
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    #@d
    .line 2542
    .local v2, "intent":Lcom/android/internal/content/ReferrerIntent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@f
    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Lcom/android/internal/content/ReferrerIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@16
    .line 2543
    invoke-virtual {v2}, Lcom/android/internal/content/ReferrerIntent;->prepareToEnterProcess()V

    #@19
    .line 2544
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1b
    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@1d
    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    #@20
    .line 2545
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@22
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@24
    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    #@27
    .line 2540
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 2538
    .end local v2    # "intent":Lcom/android/internal/content/ReferrerIntent;
    :cond_0
    return-void
.end method

.method private deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3685
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 3686
    .local v0, "N":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@7
    .line 3687
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Landroid/app/ResultInfo;

    #@d
    .line 3689
    .local v3, "ri":Landroid/app/ResultInfo;
    :try_start_0
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 3690
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    #@13
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@15
    invoke-virtual {v5}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@1c
    .line 3691
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    #@1e
    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@21
    .line 3695
    :cond_0
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@23
    iget-object v5, v3, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    #@25
    .line 3696
    iget v6, v3, Landroid/app/ResultInfo;->mRequestCode:I

    #@27
    iget v7, v3, Landroid/app/ResultInfo;->mResultCode:I

    #@29
    iget-object v8, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    #@2b
    .line 3695
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 3686
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 3697
    :catch_0
    move-exception v1

    #@32
    .line 3698
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@34
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@36
    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@39
    move-result v4

    #@3a
    if-nez v4, :cond_1

    #@3c
    .line 3699
    new-instance v4, Ljava/lang/RuntimeException;

    #@3e
    .line 3700
    new-instance v5, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v6, "Failure delivering result "

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    const-string/jumbo v6, " to activity "

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    .line 3701
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@57
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    .line 3700
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    .line 3702
    const-string/jumbo v6, ": "

    #@66
    .line 3700
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    .line 3702
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    .line 3700
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    .line 3699
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@79
    throw v4

    #@7a
    .line 3684
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ri":Landroid/app/ResultInfo;
    :cond_2
    return-void
.end method

.method private native dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
.end method

.method public static dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    .locals 24
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

    #@0
    .prologue
    .line 1960
    if-eqz p2, :cond_1

    #@2
    .line 1965
    const/16 v19, 0x3

    #@4
    move-object/from16 v0, p0

    #@6
    move/from16 v1, v19

    #@8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@b
    const/16 v19, 0x2c

    #@d
    move-object/from16 v0, p0

    #@f
    move/from16 v1, v19

    #@11
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@14
    .line 1966
    move-object/from16 v0, p0

    #@16
    move/from16 v1, p6

    #@18
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1b
    const/16 v19, 0x2c

    #@1d
    move-object/from16 v0, p0

    #@1f
    move/from16 v1, v19

    #@21
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@24
    .line 1967
    move-object/from16 v0, p0

    #@26
    move-object/from16 v1, p7

    #@28
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    const/16 v19, 0x2c

    #@2d
    move-object/from16 v0, p0

    #@2f
    move/from16 v1, v19

    #@31
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@34
    .line 1970
    move-object/from16 v0, p0

    #@36
    move-wide/from16 v1, p8

    #@38
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@3b
    const/16 v19, 0x2c

    #@3d
    move-object/from16 v0, p0

    #@3f
    move/from16 v1, v19

    #@41
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@44
    .line 1971
    move-object/from16 v0, p0

    #@46
    move-wide/from16 v1, p14

    #@48
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@4b
    const/16 v19, 0x2c

    #@4d
    move-object/from16 v0, p0

    #@4f
    move/from16 v1, v19

    #@51
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@54
    .line 1972
    const-string/jumbo v19, "N/A,"

    #@57
    move-object/from16 v0, p0

    #@59
    move-object/from16 v1, v19

    #@5b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    .line 1973
    add-long v20, p8, p14

    #@60
    move-object/from16 v0, p0

    #@62
    move-wide/from16 v1, v20

    #@64
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@67
    const/16 v19, 0x2c

    #@69
    move-object/from16 v0, p0

    #@6b
    move/from16 v1, v19

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@70
    .line 1976
    move-object/from16 v0, p0

    #@72
    move-wide/from16 v1, p10

    #@74
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@77
    const/16 v19, 0x2c

    #@79
    move-object/from16 v0, p0

    #@7b
    move/from16 v1, v19

    #@7d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@80
    .line 1977
    move-object/from16 v0, p0

    #@82
    move-wide/from16 v1, p16

    #@84
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@87
    const/16 v19, 0x2c

    #@89
    move-object/from16 v0, p0

    #@8b
    move/from16 v1, v19

    #@8d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@90
    .line 1978
    const-string/jumbo v19, "N/A,"

    #@93
    move-object/from16 v0, p0

    #@95
    move-object/from16 v1, v19

    #@97
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    .line 1979
    add-long v20, p10, p16

    #@9c
    move-object/from16 v0, p0

    #@9e
    move-wide/from16 v1, v20

    #@a0
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@a3
    const/16 v19, 0x2c

    #@a5
    move-object/from16 v0, p0

    #@a7
    move/from16 v1, v19

    #@a9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@ac
    .line 1982
    move-object/from16 v0, p0

    #@ae
    move-wide/from16 v1, p12

    #@b0
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@b3
    const/16 v19, 0x2c

    #@b5
    move-object/from16 v0, p0

    #@b7
    move/from16 v1, v19

    #@b9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@bc
    .line 1983
    move-object/from16 v0, p0

    #@be
    move-wide/from16 v1, p18

    #@c0
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@c3
    const/16 v19, 0x2c

    #@c5
    move-object/from16 v0, p0

    #@c7
    move/from16 v1, v19

    #@c9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@cc
    .line 1984
    const-string/jumbo v19, "N/A,"

    #@cf
    move-object/from16 v0, p0

    #@d1
    move-object/from16 v1, v19

    #@d3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d6
    .line 1985
    add-long v20, p12, p18

    #@d8
    move-object/from16 v0, p0

    #@da
    move-wide/from16 v1, v20

    #@dc
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@df
    const/16 v19, 0x2c

    #@e1
    move-object/from16 v0, p0

    #@e3
    move/from16 v1, v19

    #@e5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@e8
    .line 1988
    move-object/from16 v0, p1

    #@ea
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@ec
    move/from16 v19, v0

    #@ee
    move-object/from16 v0, p0

    #@f0
    move/from16 v1, v19

    #@f2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@f5
    const/16 v19, 0x2c

    #@f7
    move-object/from16 v0, p0

    #@f9
    move/from16 v1, v19

    #@fb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@fe
    .line 1989
    move-object/from16 v0, p1

    #@100
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@102
    move/from16 v19, v0

    #@104
    move-object/from16 v0, p0

    #@106
    move/from16 v1, v19

    #@108
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@10b
    const/16 v19, 0x2c

    #@10d
    move-object/from16 v0, p0

    #@10f
    move/from16 v1, v19

    #@111
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@114
    .line 1990
    move-object/from16 v0, p1

    #@116
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    #@118
    move/from16 v19, v0

    #@11a
    move-object/from16 v0, p0

    #@11c
    move/from16 v1, v19

    #@11e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@121
    const/16 v19, 0x2c

    #@123
    move-object/from16 v0, p0

    #@125
    move/from16 v1, v19

    #@127
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@12a
    .line 1991
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    #@12d
    move-result v19

    #@12e
    move-object/from16 v0, p0

    #@130
    move/from16 v1, v19

    #@132
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@135
    const/16 v19, 0x2c

    #@137
    move-object/from16 v0, p0

    #@139
    move/from16 v1, v19

    #@13b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@13e
    .line 1994
    move-object/from16 v0, p1

    #@140
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    #@142
    move/from16 v19, v0

    #@144
    move-object/from16 v0, p0

    #@146
    move/from16 v1, v19

    #@148
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@14b
    const/16 v19, 0x2c

    #@14d
    move-object/from16 v0, p0

    #@14f
    move/from16 v1, v19

    #@151
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@154
    .line 1995
    move-object/from16 v0, p1

    #@156
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    #@158
    move/from16 v19, v0

    #@15a
    move-object/from16 v0, p0

    #@15c
    move/from16 v1, v19

    #@15e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@161
    const/16 v19, 0x2c

    #@163
    move-object/from16 v0, p0

    #@165
    move/from16 v1, v19

    #@167
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@16a
    .line 1996
    move-object/from16 v0, p1

    #@16c
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    #@16e
    move/from16 v19, v0

    #@170
    move-object/from16 v0, p0

    #@172
    move/from16 v1, v19

    #@174
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@177
    const/16 v19, 0x2c

    #@179
    move-object/from16 v0, p0

    #@17b
    move/from16 v1, v19

    #@17d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@180
    .line 1997
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    #@183
    move-result v19

    #@184
    move-object/from16 v0, p0

    #@186
    move/from16 v1, v19

    #@188
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@18b
    const/16 v19, 0x2c

    #@18d
    move-object/from16 v0, p0

    #@18f
    move/from16 v1, v19

    #@191
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@194
    .line 2000
    move-object/from16 v0, p1

    #@196
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    #@198
    move/from16 v19, v0

    #@19a
    move-object/from16 v0, p0

    #@19c
    move/from16 v1, v19

    #@19e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1a1
    const/16 v19, 0x2c

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    move/from16 v1, v19

    #@1a7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@1aa
    .line 2001
    move-object/from16 v0, p1

    #@1ac
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    #@1ae
    move/from16 v19, v0

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    move/from16 v1, v19

    #@1b4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1b7
    const/16 v19, 0x2c

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    move/from16 v1, v19

    #@1bd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@1c0
    .line 2002
    move-object/from16 v0, p1

    #@1c2
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    #@1c4
    move/from16 v19, v0

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    move/from16 v1, v19

    #@1ca
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1cd
    const/16 v19, 0x2c

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    move/from16 v1, v19

    #@1d3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@1d6
    .line 2003
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    #@1d9
    move-result v19

    #@1da
    move-object/from16 v0, p0

    #@1dc
    move/from16 v1, v19

    #@1de
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1e1
    const/16 v19, 0x2c

    #@1e3
    move-object/from16 v0, p0

    #@1e5
    move/from16 v1, v19

    #@1e7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@1ea
    .line 2006
    move-object/from16 v0, p1

    #@1ec
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    #@1ee
    move/from16 v19, v0

    #@1f0
    move-object/from16 v0, p0

    #@1f2
    move/from16 v1, v19

    #@1f4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1f7
    const/16 v19, 0x2c

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    move/from16 v1, v19

    #@1fd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@200
    .line 2007
    move-object/from16 v0, p1

    #@202
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    #@204
    move/from16 v19, v0

    #@206
    move-object/from16 v0, p0

    #@208
    move/from16 v1, v19

    #@20a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@20d
    const/16 v19, 0x2c

    #@20f
    move-object/from16 v0, p0

    #@211
    move/from16 v1, v19

    #@213
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@216
    .line 2008
    move-object/from16 v0, p1

    #@218
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    #@21a
    move/from16 v19, v0

    #@21c
    move-object/from16 v0, p0

    #@21e
    move/from16 v1, v19

    #@220
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@223
    const/16 v19, 0x2c

    #@225
    move-object/from16 v0, p0

    #@227
    move/from16 v1, v19

    #@229
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@22c
    .line 2009
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    #@22f
    move-result v19

    #@230
    move-object/from16 v0, p0

    #@232
    move/from16 v1, v19

    #@234
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@237
    const/16 v19, 0x2c

    #@239
    move-object/from16 v0, p0

    #@23b
    move/from16 v1, v19

    #@23d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@240
    .line 2012
    move-object/from16 v0, p1

    #@242
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@244
    move/from16 v19, v0

    #@246
    move-object/from16 v0, p0

    #@248
    move/from16 v1, v19

    #@24a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@24d
    const/16 v19, 0x2c

    #@24f
    move-object/from16 v0, p0

    #@251
    move/from16 v1, v19

    #@253
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@256
    .line 2013
    move-object/from16 v0, p1

    #@258
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@25a
    move/from16 v19, v0

    #@25c
    move-object/from16 v0, p0

    #@25e
    move/from16 v1, v19

    #@260
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@263
    const/16 v19, 0x2c

    #@265
    move-object/from16 v0, p0

    #@267
    move/from16 v1, v19

    #@269
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@26c
    .line 2014
    move-object/from16 v0, p1

    #@26e
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@270
    move/from16 v19, v0

    #@272
    move-object/from16 v0, p0

    #@274
    move/from16 v1, v19

    #@276
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@279
    const/16 v19, 0x2c

    #@27b
    move-object/from16 v0, p0

    #@27d
    move/from16 v1, v19

    #@27f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@282
    .line 2015
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    #@285
    move-result v19

    #@286
    move-object/from16 v0, p0

    #@288
    move/from16 v1, v19

    #@28a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@28d
    const/16 v19, 0x2c

    #@28f
    move-object/from16 v0, p0

    #@291
    move/from16 v1, v19

    #@293
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@296
    .line 2018
    move-object/from16 v0, p1

    #@298
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@29a
    move/from16 v19, v0

    #@29c
    move-object/from16 v0, p0

    #@29e
    move/from16 v1, v19

    #@2a0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2a3
    const/16 v19, 0x2c

    #@2a5
    move-object/from16 v0, p0

    #@2a7
    move/from16 v1, v19

    #@2a9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@2ac
    .line 2019
    move-object/from16 v0, p1

    #@2ae
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@2b0
    move/from16 v19, v0

    #@2b2
    move-object/from16 v0, p0

    #@2b4
    move/from16 v1, v19

    #@2b6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2b9
    const/16 v19, 0x2c

    #@2bb
    move-object/from16 v0, p0

    #@2bd
    move/from16 v1, v19

    #@2bf
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@2c2
    .line 2020
    move-object/from16 v0, p1

    #@2c4
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    #@2c6
    move/from16 v19, v0

    #@2c8
    move-object/from16 v0, p0

    #@2ca
    move/from16 v1, v19

    #@2cc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2cf
    const/16 v19, 0x2c

    #@2d1
    move-object/from16 v0, p0

    #@2d3
    move/from16 v1, v19

    #@2d5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@2d8
    .line 2021
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    #@2db
    move-result v19

    #@2dc
    move-object/from16 v0, p0

    #@2de
    move/from16 v1, v19

    #@2e0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2e3
    const/16 v19, 0x2c

    #@2e5
    move-object/from16 v0, p0

    #@2e7
    move/from16 v1, v19

    #@2e9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@2ec
    .line 2024
    const/4 v4, 0x0

    #@2ed
    .local v4, "i":I
    :goto_0
    const/16 v19, 0x11

    #@2ef
    move/from16 v0, v19

    #@2f1
    if-ge v4, v0, :cond_0

    #@2f3
    .line 2025
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    #@2f6
    move-result-object v19

    #@2f7
    move-object/from16 v0, p0

    #@2f9
    move-object/from16 v1, v19

    #@2fb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fe
    const/16 v19, 0x2c

    #@300
    move-object/from16 v0, p0

    #@302
    move/from16 v1, v19

    #@304
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@307
    .line 2026
    move-object/from16 v0, p1

    #@309
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    #@30c
    move-result v19

    #@30d
    move-object/from16 v0, p0

    #@30f
    move/from16 v1, v19

    #@311
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@314
    const/16 v19, 0x2c

    #@316
    move-object/from16 v0, p0

    #@318
    move/from16 v1, v19

    #@31a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@31d
    .line 2027
    move-object/from16 v0, p1

    #@31f
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    #@322
    move-result v19

    #@323
    move-object/from16 v0, p0

    #@325
    move/from16 v1, v19

    #@327
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@32a
    const/16 v19, 0x2c

    #@32c
    move-object/from16 v0, p0

    #@32e
    move/from16 v1, v19

    #@330
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@333
    .line 2028
    move-object/from16 v0, p1

    #@335
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    #@338
    move-result v19

    #@339
    move-object/from16 v0, p0

    #@33b
    move/from16 v1, v19

    #@33d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@340
    const/16 v19, 0x2c

    #@342
    move-object/from16 v0, p0

    #@344
    move/from16 v1, v19

    #@346
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@349
    .line 2029
    move-object/from16 v0, p1

    #@34b
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    #@34e
    move-result v19

    #@34f
    move-object/from16 v0, p0

    #@351
    move/from16 v1, v19

    #@353
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@356
    const/16 v19, 0x2c

    #@358
    move-object/from16 v0, p0

    #@35a
    move/from16 v1, v19

    #@35c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@35f
    .line 2030
    move-object/from16 v0, p1

    #@361
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    #@364
    move-result v19

    #@365
    move-object/from16 v0, p0

    #@367
    move/from16 v1, v19

    #@369
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@36c
    const/16 v19, 0x2c

    #@36e
    move-object/from16 v0, p0

    #@370
    move/from16 v1, v19

    #@372
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@375
    .line 2031
    move-object/from16 v0, p1

    #@377
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    #@37a
    move-result v19

    #@37b
    move-object/from16 v0, p0

    #@37d
    move/from16 v1, v19

    #@37f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@382
    const/16 v19, 0x2c

    #@384
    move-object/from16 v0, p0

    #@386
    move/from16 v1, v19

    #@388
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@38b
    .line 2024
    add-int/lit8 v4, v4, 0x1

    #@38d
    goto/16 :goto_0

    #@38f
    .line 2033
    :cond_0
    return-void

    #@390
    .line 2036
    .end local v4    # "i":I
    :cond_1
    if-nez p5, :cond_d

    #@392
    .line 2037
    if-eqz p3, :cond_4

    #@394
    .line 2038
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@397
    const/16 v20, 0xb

    #@399
    move/from16 v0, v20

    #@39b
    new-array v0, v0, [Ljava/lang/Object;

    #@39d
    move-object/from16 v20, v0

    #@39f
    const-string/jumbo v21, ""

    #@3a2
    const/16 v22, 0x0

    #@3a4
    aput-object v21, v20, v22

    #@3a6
    const-string/jumbo v21, "Pss"

    #@3a9
    const/16 v22, 0x1

    #@3ab
    aput-object v21, v20, v22

    #@3ad
    const-string/jumbo v21, "Pss"

    #@3b0
    const/16 v22, 0x2

    #@3b2
    aput-object v21, v20, v22

    #@3b4
    const-string/jumbo v21, "Shared"

    #@3b7
    const/16 v22, 0x3

    #@3b9
    aput-object v21, v20, v22

    #@3bb
    const-string/jumbo v21, "Private"

    #@3be
    const/16 v22, 0x4

    #@3c0
    aput-object v21, v20, v22

    #@3c2
    .line 2039
    const-string/jumbo v21, "Shared"

    #@3c5
    const/16 v22, 0x5

    #@3c7
    aput-object v21, v20, v22

    #@3c9
    const-string/jumbo v21, "Private"

    #@3cc
    const/16 v22, 0x6

    #@3ce
    aput-object v21, v20, v22

    #@3d0
    const-string/jumbo v21, "Swapped"

    #@3d3
    const/16 v22, 0x7

    #@3d5
    aput-object v21, v20, v22

    #@3d7
    const-string/jumbo v21, "Heap"

    #@3da
    const/16 v22, 0x8

    #@3dc
    aput-object v21, v20, v22

    #@3de
    const-string/jumbo v21, "Heap"

    #@3e1
    const/16 v22, 0x9

    #@3e3
    aput-object v21, v20, v22

    #@3e5
    const-string/jumbo v21, "Heap"

    #@3e8
    const/16 v22, 0xa

    #@3ea
    aput-object v21, v20, v22

    #@3ec
    .line 2038
    move-object/from16 v0, p0

    #@3ee
    move-object/from16 v1, v19

    #@3f0
    move-object/from16 v2, v20

    #@3f2
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3f5
    .line 2040
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@3f8
    const/16 v20, 0xb

    #@3fa
    move/from16 v0, v20

    #@3fc
    new-array v0, v0, [Ljava/lang/Object;

    #@3fe
    move-object/from16 v20, v0

    #@400
    const-string/jumbo v21, ""

    #@403
    const/16 v22, 0x0

    #@405
    aput-object v21, v20, v22

    #@407
    const-string/jumbo v21, "Total"

    #@40a
    const/16 v22, 0x1

    #@40c
    aput-object v21, v20, v22

    #@40e
    const-string/jumbo v21, "Clean"

    #@411
    const/16 v22, 0x2

    #@413
    aput-object v21, v20, v22

    #@415
    const-string/jumbo v21, "Dirty"

    #@418
    const/16 v22, 0x3

    #@41a
    aput-object v21, v20, v22

    #@41c
    const-string/jumbo v21, "Dirty"

    #@41f
    const/16 v22, 0x4

    #@421
    aput-object v21, v20, v22

    #@423
    .line 2041
    const-string/jumbo v21, "Clean"

    #@426
    const/16 v22, 0x5

    #@428
    aput-object v21, v20, v22

    #@42a
    const-string/jumbo v21, "Clean"

    #@42d
    const/16 v22, 0x6

    #@42f
    aput-object v21, v20, v22

    #@431
    const-string/jumbo v21, "Dirty"

    #@434
    const/16 v22, 0x7

    #@436
    aput-object v21, v20, v22

    #@438
    const-string/jumbo v21, "Size"

    #@43b
    const/16 v22, 0x8

    #@43d
    aput-object v21, v20, v22

    #@43f
    const-string/jumbo v21, "Alloc"

    #@442
    const/16 v22, 0x9

    #@444
    aput-object v21, v20, v22

    #@446
    const-string/jumbo v21, "Free"

    #@449
    const/16 v22, 0xa

    #@44b
    aput-object v21, v20, v22

    #@44d
    .line 2040
    move-object/from16 v0, p0

    #@44f
    move-object/from16 v1, v19

    #@451
    move-object/from16 v2, v20

    #@453
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@456
    .line 2042
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@459
    const/16 v20, 0xb

    #@45b
    move/from16 v0, v20

    #@45d
    new-array v0, v0, [Ljava/lang/Object;

    #@45f
    move-object/from16 v20, v0

    #@461
    const-string/jumbo v21, ""

    #@464
    const/16 v22, 0x0

    #@466
    aput-object v21, v20, v22

    #@468
    const-string/jumbo v21, "------"

    #@46b
    const/16 v22, 0x1

    #@46d
    aput-object v21, v20, v22

    #@46f
    const-string/jumbo v21, "------"

    #@472
    const/16 v22, 0x2

    #@474
    aput-object v21, v20, v22

    #@476
    const-string/jumbo v21, "------"

    #@479
    const/16 v22, 0x3

    #@47b
    aput-object v21, v20, v22

    #@47d
    const-string/jumbo v21, "------"

    #@480
    const/16 v22, 0x4

    #@482
    aput-object v21, v20, v22

    #@484
    .line 2043
    const-string/jumbo v21, "------"

    #@487
    const/16 v22, 0x5

    #@489
    aput-object v21, v20, v22

    #@48b
    const-string/jumbo v21, "------"

    #@48e
    const/16 v22, 0x6

    #@490
    aput-object v21, v20, v22

    #@492
    const-string/jumbo v21, "------"

    #@495
    const/16 v22, 0x7

    #@497
    aput-object v21, v20, v22

    #@499
    const-string/jumbo v21, "------"

    #@49c
    const/16 v22, 0x8

    #@49e
    aput-object v21, v20, v22

    #@4a0
    const-string/jumbo v21, "------"

    #@4a3
    const/16 v22, 0x9

    #@4a5
    aput-object v21, v20, v22

    #@4a7
    const-string/jumbo v21, "------"

    #@4aa
    const/16 v22, 0xa

    #@4ac
    aput-object v21, v20, v22

    #@4ae
    .line 2042
    move-object/from16 v0, p0

    #@4b0
    move-object/from16 v1, v19

    #@4b2
    move-object/from16 v2, v20

    #@4b4
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@4b7
    .line 2044
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@4ba
    const/16 v20, 0xb

    #@4bc
    move/from16 v0, v20

    #@4be
    new-array v0, v0, [Ljava/lang/Object;

    #@4c0
    move-object/from16 v20, v0

    #@4c2
    const-string/jumbo v21, "Native Heap"

    #@4c5
    const/16 v22, 0x0

    #@4c7
    aput-object v21, v20, v22

    #@4c9
    move-object/from16 v0, p1

    #@4cb
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@4cd
    move/from16 v21, v0

    #@4cf
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d2
    move-result-object v21

    #@4d3
    const/16 v22, 0x1

    #@4d5
    aput-object v21, v20, v22

    #@4d7
    .line 2045
    move-object/from16 v0, p1

    #@4d9
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    #@4db
    move/from16 v21, v0

    #@4dd
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e0
    move-result-object v21

    #@4e1
    const/16 v22, 0x2

    #@4e3
    aput-object v21, v20, v22

    #@4e5
    move-object/from16 v0, p1

    #@4e7
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    #@4e9
    move/from16 v21, v0

    #@4eb
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4ee
    move-result-object v21

    #@4ef
    const/16 v22, 0x3

    #@4f1
    aput-object v21, v20, v22

    #@4f3
    .line 2046
    move-object/from16 v0, p1

    #@4f5
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@4f7
    move/from16 v21, v0

    #@4f9
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4fc
    move-result-object v21

    #@4fd
    const/16 v22, 0x4

    #@4ff
    aput-object v21, v20, v22

    #@501
    move-object/from16 v0, p1

    #@503
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    #@505
    move/from16 v21, v0

    #@507
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50a
    move-result-object v21

    #@50b
    const/16 v22, 0x5

    #@50d
    aput-object v21, v20, v22

    #@50f
    .line 2047
    move-object/from16 v0, p1

    #@511
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@513
    move/from16 v21, v0

    #@515
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@518
    move-result-object v21

    #@519
    const/16 v22, 0x6

    #@51b
    aput-object v21, v20, v22

    #@51d
    move-object/from16 v0, p1

    #@51f
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    #@521
    move/from16 v21, v0

    #@523
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@526
    move-result-object v21

    #@527
    const/16 v22, 0x7

    #@529
    aput-object v21, v20, v22

    #@52b
    .line 2048
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@52e
    move-result-object v21

    #@52f
    const/16 v22, 0x8

    #@531
    aput-object v21, v20, v22

    #@533
    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@536
    move-result-object v21

    #@537
    const/16 v22, 0x9

    #@539
    aput-object v21, v20, v22

    #@53b
    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@53e
    move-result-object v21

    #@53f
    const/16 v22, 0xa

    #@541
    aput-object v21, v20, v22

    #@543
    .line 2044
    move-object/from16 v0, p0

    #@545
    move-object/from16 v1, v19

    #@547
    move-object/from16 v2, v20

    #@549
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@54c
    .line 2049
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@54f
    const/16 v20, 0xb

    #@551
    move/from16 v0, v20

    #@553
    new-array v0, v0, [Ljava/lang/Object;

    #@555
    move-object/from16 v20, v0

    #@557
    const-string/jumbo v21, "Dalvik Heap"

    #@55a
    const/16 v22, 0x0

    #@55c
    aput-object v21, v20, v22

    #@55e
    move-object/from16 v0, p1

    #@560
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@562
    move/from16 v21, v0

    #@564
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@567
    move-result-object v21

    #@568
    const/16 v22, 0x1

    #@56a
    aput-object v21, v20, v22

    #@56c
    .line 2050
    move-object/from16 v0, p1

    #@56e
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    #@570
    move/from16 v21, v0

    #@572
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@575
    move-result-object v21

    #@576
    const/16 v22, 0x2

    #@578
    aput-object v21, v20, v22

    #@57a
    move-object/from16 v0, p1

    #@57c
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    #@57e
    move/from16 v21, v0

    #@580
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@583
    move-result-object v21

    #@584
    const/16 v22, 0x3

    #@586
    aput-object v21, v20, v22

    #@588
    .line 2051
    move-object/from16 v0, p1

    #@58a
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@58c
    move/from16 v21, v0

    #@58e
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@591
    move-result-object v21

    #@592
    const/16 v22, 0x4

    #@594
    aput-object v21, v20, v22

    #@596
    move-object/from16 v0, p1

    #@598
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    #@59a
    move/from16 v21, v0

    #@59c
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59f
    move-result-object v21

    #@5a0
    const/16 v22, 0x5

    #@5a2
    aput-object v21, v20, v22

    #@5a4
    .line 2052
    move-object/from16 v0, p1

    #@5a6
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@5a8
    move/from16 v21, v0

    #@5aa
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5ad
    move-result-object v21

    #@5ae
    const/16 v22, 0x6

    #@5b0
    aput-object v21, v20, v22

    #@5b2
    move-object/from16 v0, p1

    #@5b4
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    #@5b6
    move/from16 v21, v0

    #@5b8
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5bb
    move-result-object v21

    #@5bc
    const/16 v22, 0x7

    #@5be
    aput-object v21, v20, v22

    #@5c0
    .line 2053
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5c3
    move-result-object v21

    #@5c4
    const/16 v22, 0x8

    #@5c6
    aput-object v21, v20, v22

    #@5c8
    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5cb
    move-result-object v21

    #@5cc
    const/16 v22, 0x9

    #@5ce
    aput-object v21, v20, v22

    #@5d0
    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5d3
    move-result-object v21

    #@5d4
    const/16 v22, 0xa

    #@5d6
    aput-object v21, v20, v22

    #@5d8
    .line 2049
    move-object/from16 v0, p0

    #@5da
    move-object/from16 v1, v19

    #@5dc
    move-object/from16 v2, v20

    #@5de
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@5e1
    .line 2071
    :goto_1
    move-object/from16 v0, p1

    #@5e3
    iget v14, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    #@5e5
    .line 2072
    .local v14, "otherPss":I
    move-object/from16 v0, p1

    #@5e7
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    #@5e9
    move/from16 v17, v0

    #@5eb
    .line 2073
    .local v17, "otherSwappablePss":I
    move-object/from16 v0, p1

    #@5ed
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    #@5ef
    move/from16 v16, v0

    #@5f1
    .line 2074
    .local v16, "otherSharedDirty":I
    move-object/from16 v0, p1

    #@5f3
    iget v13, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@5f5
    .line 2075
    .local v13, "otherPrivateDirty":I
    move-object/from16 v0, p1

    #@5f7
    iget v15, v0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    #@5f9
    .line 2076
    .local v15, "otherSharedClean":I
    move-object/from16 v0, p1

    #@5fb
    iget v12, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    #@5fd
    .line 2077
    .local v12, "otherPrivateClean":I
    move-object/from16 v0, p1

    #@5ff
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    #@601
    move/from16 v18, v0

    #@603
    .line 2079
    .local v18, "otherSwappedOut":I
    const/4 v4, 0x0

    #@604
    .restart local v4    # "i":I
    :goto_2
    const/16 v19, 0x11

    #@606
    move/from16 v0, v19

    #@608
    if-ge v4, v0, :cond_7

    #@60a
    .line 2080
    move-object/from16 v0, p1

    #@60c
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    #@60f
    move-result v7

    #@610
    .line 2081
    .local v7, "myPss":I
    move-object/from16 v0, p1

    #@612
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    #@615
    move-result v10

    #@616
    .line 2082
    .local v10, "mySwappablePss":I
    move-object/from16 v0, p1

    #@618
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    #@61b
    move-result v9

    #@61c
    .line 2083
    .local v9, "mySharedDirty":I
    move-object/from16 v0, p1

    #@61e
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    #@621
    move-result v6

    #@622
    .line 2084
    .local v6, "myPrivateDirty":I
    move-object/from16 v0, p1

    #@624
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    #@627
    move-result v8

    #@628
    .line 2085
    .local v8, "mySharedClean":I
    move-object/from16 v0, p1

    #@62a
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    #@62d
    move-result v5

    #@62e
    .line 2086
    .local v5, "myPrivateClean":I
    move-object/from16 v0, p1

    #@630
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    #@633
    move-result v11

    #@634
    .line 2087
    .local v11, "mySwappedOut":I
    if-nez v7, :cond_2

    #@636
    if-eqz v9, :cond_5

    #@638
    .line 2089
    :cond_2
    :goto_3
    if-eqz p3, :cond_6

    #@63a
    .line 2090
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@63d
    const/16 v20, 0xb

    #@63f
    move/from16 v0, v20

    #@641
    new-array v0, v0, [Ljava/lang/Object;

    #@643
    move-object/from16 v20, v0

    #@645
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    #@648
    move-result-object v21

    #@649
    const/16 v22, 0x0

    #@64b
    aput-object v21, v20, v22

    #@64d
    .line 2091
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@650
    move-result-object v21

    #@651
    const/16 v22, 0x1

    #@653
    aput-object v21, v20, v22

    #@655
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@658
    move-result-object v21

    #@659
    const/16 v22, 0x2

    #@65b
    aput-object v21, v20, v22

    #@65d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@660
    move-result-object v21

    #@661
    const/16 v22, 0x3

    #@663
    aput-object v21, v20, v22

    #@665
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@668
    move-result-object v21

    #@669
    const/16 v22, 0x4

    #@66b
    aput-object v21, v20, v22

    #@66d
    .line 2092
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@670
    move-result-object v21

    #@671
    const/16 v22, 0x5

    #@673
    aput-object v21, v20, v22

    #@675
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@678
    move-result-object v21

    #@679
    const/16 v22, 0x6

    #@67b
    aput-object v21, v20, v22

    #@67d
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@680
    move-result-object v21

    #@681
    const/16 v22, 0x7

    #@683
    aput-object v21, v20, v22

    #@685
    const-string/jumbo v21, ""

    #@688
    const/16 v22, 0x8

    #@68a
    aput-object v21, v20, v22

    #@68c
    const-string/jumbo v21, ""

    #@68f
    const/16 v22, 0x9

    #@691
    aput-object v21, v20, v22

    #@693
    const-string/jumbo v21, ""

    #@696
    const/16 v22, 0xa

    #@698
    aput-object v21, v20, v22

    #@69a
    .line 2090
    move-object/from16 v0, p0

    #@69c
    move-object/from16 v1, v19

    #@69e
    move-object/from16 v2, v20

    #@6a0
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@6a3
    .line 2098
    :goto_4
    sub-int/2addr v14, v7

    #@6a4
    .line 2099
    sub-int v17, v17, v10

    #@6a6
    .line 2100
    sub-int v16, v16, v9

    #@6a8
    .line 2101
    sub-int/2addr v13, v6

    #@6a9
    .line 2102
    sub-int/2addr v15, v8

    #@6aa
    .line 2103
    sub-int/2addr v12, v5

    #@6ab
    .line 2104
    sub-int v18, v18, v11

    #@6ad
    .line 2079
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@6af
    goto/16 :goto_2

    #@6b1
    .line 2055
    .end local v4    # "i":I
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "otherPrivateClean":I
    .end local v13    # "otherPrivateDirty":I
    .end local v14    # "otherPss":I
    .end local v15    # "otherSharedClean":I
    .end local v16    # "otherSharedDirty":I
    .end local v17    # "otherSwappablePss":I
    .end local v18    # "otherSwappedOut":I
    :cond_4
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@6b4
    const/16 v20, 0x8

    #@6b6
    move/from16 v0, v20

    #@6b8
    new-array v0, v0, [Ljava/lang/Object;

    #@6ba
    move-object/from16 v20, v0

    #@6bc
    const-string/jumbo v21, ""

    #@6bf
    const/16 v22, 0x0

    #@6c1
    aput-object v21, v20, v22

    #@6c3
    const-string/jumbo v21, "Pss"

    #@6c6
    const/16 v22, 0x1

    #@6c8
    aput-object v21, v20, v22

    #@6ca
    const-string/jumbo v21, "Private"

    #@6cd
    const/16 v22, 0x2

    #@6cf
    aput-object v21, v20, v22

    #@6d1
    .line 2056
    const-string/jumbo v21, "Private"

    #@6d4
    const/16 v22, 0x3

    #@6d6
    aput-object v21, v20, v22

    #@6d8
    const-string/jumbo v21, "Swapped"

    #@6db
    const/16 v22, 0x4

    #@6dd
    aput-object v21, v20, v22

    #@6df
    const-string/jumbo v21, "Heap"

    #@6e2
    const/16 v22, 0x5

    #@6e4
    aput-object v21, v20, v22

    #@6e6
    const-string/jumbo v21, "Heap"

    #@6e9
    const/16 v22, 0x6

    #@6eb
    aput-object v21, v20, v22

    #@6ed
    const-string/jumbo v21, "Heap"

    #@6f0
    const/16 v22, 0x7

    #@6f2
    aput-object v21, v20, v22

    #@6f4
    .line 2055
    move-object/from16 v0, p0

    #@6f6
    move-object/from16 v1, v19

    #@6f8
    move-object/from16 v2, v20

    #@6fa
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@6fd
    .line 2057
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@700
    const/16 v20, 0x8

    #@702
    move/from16 v0, v20

    #@704
    new-array v0, v0, [Ljava/lang/Object;

    #@706
    move-object/from16 v20, v0

    #@708
    const-string/jumbo v21, ""

    #@70b
    const/16 v22, 0x0

    #@70d
    aput-object v21, v20, v22

    #@70f
    const-string/jumbo v21, "Total"

    #@712
    const/16 v22, 0x1

    #@714
    aput-object v21, v20, v22

    #@716
    const-string/jumbo v21, "Dirty"

    #@719
    const/16 v22, 0x2

    #@71b
    aput-object v21, v20, v22

    #@71d
    .line 2058
    const-string/jumbo v21, "Clean"

    #@720
    const/16 v22, 0x3

    #@722
    aput-object v21, v20, v22

    #@724
    const-string/jumbo v21, "Dirty"

    #@727
    const/16 v22, 0x4

    #@729
    aput-object v21, v20, v22

    #@72b
    const-string/jumbo v21, "Size"

    #@72e
    const/16 v22, 0x5

    #@730
    aput-object v21, v20, v22

    #@732
    const-string/jumbo v21, "Alloc"

    #@735
    const/16 v22, 0x6

    #@737
    aput-object v21, v20, v22

    #@739
    const-string/jumbo v21, "Free"

    #@73c
    const/16 v22, 0x7

    #@73e
    aput-object v21, v20, v22

    #@740
    .line 2057
    move-object/from16 v0, p0

    #@742
    move-object/from16 v1, v19

    #@744
    move-object/from16 v2, v20

    #@746
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@749
    .line 2059
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@74c
    const/16 v20, 0x9

    #@74e
    move/from16 v0, v20

    #@750
    new-array v0, v0, [Ljava/lang/Object;

    #@752
    move-object/from16 v20, v0

    #@754
    const-string/jumbo v21, ""

    #@757
    const/16 v22, 0x0

    #@759
    aput-object v21, v20, v22

    #@75b
    const-string/jumbo v21, "------"

    #@75e
    const/16 v22, 0x1

    #@760
    aput-object v21, v20, v22

    #@762
    const-string/jumbo v21, "------"

    #@765
    const/16 v22, 0x2

    #@767
    aput-object v21, v20, v22

    #@769
    const-string/jumbo v21, "------"

    #@76c
    const/16 v22, 0x3

    #@76e
    aput-object v21, v20, v22

    #@770
    .line 2060
    const-string/jumbo v21, "------"

    #@773
    const/16 v22, 0x4

    #@775
    aput-object v21, v20, v22

    #@777
    const-string/jumbo v21, "------"

    #@77a
    const/16 v22, 0x5

    #@77c
    aput-object v21, v20, v22

    #@77e
    const-string/jumbo v21, "------"

    #@781
    const/16 v22, 0x6

    #@783
    aput-object v21, v20, v22

    #@785
    const-string/jumbo v21, "------"

    #@788
    const/16 v22, 0x7

    #@78a
    aput-object v21, v20, v22

    #@78c
    const-string/jumbo v21, "------"

    #@78f
    const/16 v22, 0x8

    #@791
    aput-object v21, v20, v22

    #@793
    .line 2059
    move-object/from16 v0, p0

    #@795
    move-object/from16 v1, v19

    #@797
    move-object/from16 v2, v20

    #@799
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@79c
    .line 2061
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@79f
    const/16 v20, 0x8

    #@7a1
    move/from16 v0, v20

    #@7a3
    new-array v0, v0, [Ljava/lang/Object;

    #@7a5
    move-object/from16 v20, v0

    #@7a7
    const-string/jumbo v21, "Native Heap"

    #@7aa
    const/16 v22, 0x0

    #@7ac
    aput-object v21, v20, v22

    #@7ae
    move-object/from16 v0, p1

    #@7b0
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@7b2
    move/from16 v21, v0

    #@7b4
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b7
    move-result-object v21

    #@7b8
    const/16 v22, 0x1

    #@7ba
    aput-object v21, v20, v22

    #@7bc
    .line 2062
    move-object/from16 v0, p1

    #@7be
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@7c0
    move/from16 v21, v0

    #@7c2
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7c5
    move-result-object v21

    #@7c6
    const/16 v22, 0x2

    #@7c8
    aput-object v21, v20, v22

    #@7ca
    .line 2063
    move-object/from16 v0, p1

    #@7cc
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@7ce
    move/from16 v21, v0

    #@7d0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d3
    move-result-object v21

    #@7d4
    const/16 v22, 0x3

    #@7d6
    aput-object v21, v20, v22

    #@7d8
    move-object/from16 v0, p1

    #@7da
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    #@7dc
    move/from16 v21, v0

    #@7de
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e1
    move-result-object v21

    #@7e2
    const/16 v22, 0x4

    #@7e4
    aput-object v21, v20, v22

    #@7e6
    .line 2064
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7e9
    move-result-object v21

    #@7ea
    const/16 v22, 0x5

    #@7ec
    aput-object v21, v20, v22

    #@7ee
    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7f1
    move-result-object v21

    #@7f2
    const/16 v22, 0x6

    #@7f4
    aput-object v21, v20, v22

    #@7f6
    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7f9
    move-result-object v21

    #@7fa
    const/16 v22, 0x7

    #@7fc
    aput-object v21, v20, v22

    #@7fe
    .line 2061
    move-object/from16 v0, p0

    #@800
    move-object/from16 v1, v19

    #@802
    move-object/from16 v2, v20

    #@804
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@807
    .line 2065
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@80a
    const/16 v20, 0x8

    #@80c
    move/from16 v0, v20

    #@80e
    new-array v0, v0, [Ljava/lang/Object;

    #@810
    move-object/from16 v20, v0

    #@812
    const-string/jumbo v21, "Dalvik Heap"

    #@815
    const/16 v22, 0x0

    #@817
    aput-object v21, v20, v22

    #@819
    move-object/from16 v0, p1

    #@81b
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@81d
    move/from16 v21, v0

    #@81f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@822
    move-result-object v21

    #@823
    const/16 v22, 0x1

    #@825
    aput-object v21, v20, v22

    #@827
    .line 2066
    move-object/from16 v0, p1

    #@829
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@82b
    move/from16 v21, v0

    #@82d
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@830
    move-result-object v21

    #@831
    const/16 v22, 0x2

    #@833
    aput-object v21, v20, v22

    #@835
    .line 2067
    move-object/from16 v0, p1

    #@837
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@839
    move/from16 v21, v0

    #@83b
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@83e
    move-result-object v21

    #@83f
    const/16 v22, 0x3

    #@841
    aput-object v21, v20, v22

    #@843
    move-object/from16 v0, p1

    #@845
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    #@847
    move/from16 v21, v0

    #@849
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@84c
    move-result-object v21

    #@84d
    const/16 v22, 0x4

    #@84f
    aput-object v21, v20, v22

    #@851
    .line 2068
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@854
    move-result-object v21

    #@855
    const/16 v22, 0x5

    #@857
    aput-object v21, v20, v22

    #@859
    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@85c
    move-result-object v21

    #@85d
    const/16 v22, 0x6

    #@85f
    aput-object v21, v20, v22

    #@861
    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@864
    move-result-object v21

    #@865
    const/16 v22, 0x7

    #@867
    aput-object v21, v20, v22

    #@869
    .line 2065
    move-object/from16 v0, p0

    #@86b
    move-object/from16 v1, v19

    #@86d
    move-object/from16 v2, v20

    #@86f
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@872
    goto/16 :goto_1

    #@874
    .line 2087
    .restart local v4    # "i":I
    .restart local v5    # "myPrivateClean":I
    .restart local v6    # "myPrivateDirty":I
    .restart local v7    # "myPss":I
    .restart local v8    # "mySharedClean":I
    .restart local v9    # "mySharedDirty":I
    .restart local v10    # "mySwappablePss":I
    .restart local v11    # "mySwappedOut":I
    .restart local v12    # "otherPrivateClean":I
    .restart local v13    # "otherPrivateDirty":I
    .restart local v14    # "otherPss":I
    .restart local v15    # "otherSharedClean":I
    .restart local v16    # "otherSharedDirty":I
    .restart local v17    # "otherSwappablePss":I
    .restart local v18    # "otherSwappedOut":I
    :cond_5
    if-nez v6, :cond_2

    #@876
    .line 2088
    if-nez v8, :cond_2

    #@878
    if-nez v5, :cond_2

    #@87a
    if-eqz v11, :cond_3

    #@87c
    goto/16 :goto_3

    #@87e
    .line 2094
    :cond_6
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@881
    const/16 v20, 0x8

    #@883
    move/from16 v0, v20

    #@885
    new-array v0, v0, [Ljava/lang/Object;

    #@887
    move-object/from16 v20, v0

    #@889
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    #@88c
    move-result-object v21

    #@88d
    const/16 v22, 0x0

    #@88f
    aput-object v21, v20, v22

    #@891
    .line 2095
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@894
    move-result-object v21

    #@895
    const/16 v22, 0x1

    #@897
    aput-object v21, v20, v22

    #@899
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@89c
    move-result-object v21

    #@89d
    const/16 v22, 0x2

    #@89f
    aput-object v21, v20, v22

    #@8a1
    .line 2096
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8a4
    move-result-object v21

    #@8a5
    const/16 v22, 0x3

    #@8a7
    aput-object v21, v20, v22

    #@8a9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8ac
    move-result-object v21

    #@8ad
    const/16 v22, 0x4

    #@8af
    aput-object v21, v20, v22

    #@8b1
    const-string/jumbo v21, ""

    #@8b4
    const/16 v22, 0x5

    #@8b6
    aput-object v21, v20, v22

    #@8b8
    const-string/jumbo v21, ""

    #@8bb
    const/16 v22, 0x6

    #@8bd
    aput-object v21, v20, v22

    #@8bf
    const-string/jumbo v21, ""

    #@8c2
    const/16 v22, 0x7

    #@8c4
    aput-object v21, v20, v22

    #@8c6
    .line 2094
    move-object/from16 v0, p0

    #@8c8
    move-object/from16 v1, v19

    #@8ca
    move-object/from16 v2, v20

    #@8cc
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@8cf
    goto/16 :goto_4

    #@8d1
    .line 2108
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    :cond_7
    if-eqz p3, :cond_a

    #@8d3
    .line 2109
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@8d6
    const/16 v20, 0xb

    #@8d8
    move/from16 v0, v20

    #@8da
    new-array v0, v0, [Ljava/lang/Object;

    #@8dc
    move-object/from16 v20, v0

    #@8de
    const-string/jumbo v21, "Unknown"

    #@8e1
    const/16 v22, 0x0

    #@8e3
    aput-object v21, v20, v22

    #@8e5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8e8
    move-result-object v21

    #@8e9
    const/16 v22, 0x1

    #@8eb
    aput-object v21, v20, v22

    #@8ed
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8f0
    move-result-object v21

    #@8f1
    const/16 v22, 0x2

    #@8f3
    aput-object v21, v20, v22

    #@8f5
    .line 2110
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8f8
    move-result-object v21

    #@8f9
    const/16 v22, 0x3

    #@8fb
    aput-object v21, v20, v22

    #@8fd
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@900
    move-result-object v21

    #@901
    const/16 v22, 0x4

    #@903
    aput-object v21, v20, v22

    #@905
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@908
    move-result-object v21

    #@909
    const/16 v22, 0x5

    #@90b
    aput-object v21, v20, v22

    #@90d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@910
    move-result-object v21

    #@911
    const/16 v22, 0x6

    #@913
    aput-object v21, v20, v22

    #@915
    .line 2111
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@918
    move-result-object v21

    #@919
    const/16 v22, 0x7

    #@91b
    aput-object v21, v20, v22

    #@91d
    const-string/jumbo v21, ""

    #@920
    const/16 v22, 0x8

    #@922
    aput-object v21, v20, v22

    #@924
    const-string/jumbo v21, ""

    #@927
    const/16 v22, 0x9

    #@929
    aput-object v21, v20, v22

    #@92b
    const-string/jumbo v21, ""

    #@92e
    const/16 v22, 0xa

    #@930
    aput-object v21, v20, v22

    #@932
    .line 2109
    move-object/from16 v0, p0

    #@934
    move-object/from16 v1, v19

    #@936
    move-object/from16 v2, v20

    #@938
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@93b
    .line 2112
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@93e
    const/16 v20, 0xb

    #@940
    move/from16 v0, v20

    #@942
    new-array v0, v0, [Ljava/lang/Object;

    #@944
    move-object/from16 v20, v0

    #@946
    const-string/jumbo v21, "TOTAL"

    #@949
    const/16 v22, 0x0

    #@94b
    aput-object v21, v20, v22

    #@94d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    #@950
    move-result v21

    #@951
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@954
    move-result-object v21

    #@955
    const/16 v22, 0x1

    #@957
    aput-object v21, v20, v22

    #@959
    .line 2113
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    #@95c
    move-result v21

    #@95d
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@960
    move-result-object v21

    #@961
    const/16 v22, 0x2

    #@963
    aput-object v21, v20, v22

    #@965
    .line 2114
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    #@968
    move-result v21

    #@969
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@96c
    move-result-object v21

    #@96d
    const/16 v22, 0x3

    #@96f
    aput-object v21, v20, v22

    #@971
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    #@974
    move-result v21

    #@975
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@978
    move-result-object v21

    #@979
    const/16 v22, 0x4

    #@97b
    aput-object v21, v20, v22

    #@97d
    .line 2115
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    #@980
    move-result v21

    #@981
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@984
    move-result-object v21

    #@985
    const/16 v22, 0x5

    #@987
    aput-object v21, v20, v22

    #@989
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    #@98c
    move-result v21

    #@98d
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@990
    move-result-object v21

    #@991
    const/16 v22, 0x6

    #@993
    aput-object v21, v20, v22

    #@995
    .line 2116
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    #@998
    move-result v21

    #@999
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@99c
    move-result-object v21

    #@99d
    const/16 v22, 0x7

    #@99f
    aput-object v21, v20, v22

    #@9a1
    add-long v22, p8, p14

    #@9a3
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9a6
    move-result-object v21

    #@9a7
    const/16 v22, 0x8

    #@9a9
    aput-object v21, v20, v22

    #@9ab
    .line 2117
    add-long v22, p10, p16

    #@9ad
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9b0
    move-result-object v21

    #@9b1
    const/16 v22, 0x9

    #@9b3
    aput-object v21, v20, v22

    #@9b5
    add-long v22, p12, p18

    #@9b7
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9ba
    move-result-object v21

    #@9bb
    const/16 v22, 0xa

    #@9bd
    aput-object v21, v20, v22

    #@9bf
    .line 2112
    move-object/from16 v0, p0

    #@9c1
    move-object/from16 v1, v19

    #@9c3
    move-object/from16 v2, v20

    #@9c5
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9c8
    .line 2130
    :goto_5
    if-eqz p4, :cond_d

    #@9ca
    .line 2131
    const-string/jumbo v19, " "

    #@9cd
    move-object/from16 v0, p0

    #@9cf
    move-object/from16 v1, v19

    #@9d1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d4
    .line 2132
    const-string/jumbo v19, " Dalvik Details"

    #@9d7
    move-object/from16 v0, p0

    #@9d9
    move-object/from16 v1, v19

    #@9db
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9de
    .line 2134
    const/16 v4, 0x11

    #@9e0
    .line 2135
    :goto_6
    const/16 v19, 0x19

    #@9e2
    .line 2134
    move/from16 v0, v19

    #@9e4
    if-ge v4, v0, :cond_d

    #@9e6
    .line 2136
    move-object/from16 v0, p1

    #@9e8
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    #@9eb
    move-result v7

    #@9ec
    .line 2137
    .restart local v7    # "myPss":I
    move-object/from16 v0, p1

    #@9ee
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    #@9f1
    move-result v10

    #@9f2
    .line 2138
    .restart local v10    # "mySwappablePss":I
    move-object/from16 v0, p1

    #@9f4
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    #@9f7
    move-result v9

    #@9f8
    .line 2139
    .restart local v9    # "mySharedDirty":I
    move-object/from16 v0, p1

    #@9fa
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    #@9fd
    move-result v6

    #@9fe
    .line 2140
    .restart local v6    # "myPrivateDirty":I
    move-object/from16 v0, p1

    #@a00
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    #@a03
    move-result v8

    #@a04
    .line 2141
    .restart local v8    # "mySharedClean":I
    move-object/from16 v0, p1

    #@a06
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    #@a09
    move-result v5

    #@a0a
    .line 2142
    .restart local v5    # "myPrivateClean":I
    move-object/from16 v0, p1

    #@a0c
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    #@a0f
    move-result v11

    #@a10
    .line 2143
    .restart local v11    # "mySwappedOut":I
    if-nez v7, :cond_8

    #@a12
    if-eqz v9, :cond_b

    #@a14
    .line 2145
    :cond_8
    :goto_7
    if-eqz p3, :cond_c

    #@a16
    .line 2146
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@a19
    const/16 v20, 0xb

    #@a1b
    move/from16 v0, v20

    #@a1d
    new-array v0, v0, [Ljava/lang/Object;

    #@a1f
    move-object/from16 v20, v0

    #@a21
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    #@a24
    move-result-object v21

    #@a25
    const/16 v22, 0x0

    #@a27
    aput-object v21, v20, v22

    #@a29
    .line 2147
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a2c
    move-result-object v21

    #@a2d
    const/16 v22, 0x1

    #@a2f
    aput-object v21, v20, v22

    #@a31
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a34
    move-result-object v21

    #@a35
    const/16 v22, 0x2

    #@a37
    aput-object v21, v20, v22

    #@a39
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3c
    move-result-object v21

    #@a3d
    const/16 v22, 0x3

    #@a3f
    aput-object v21, v20, v22

    #@a41
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a44
    move-result-object v21

    #@a45
    const/16 v22, 0x4

    #@a47
    aput-object v21, v20, v22

    #@a49
    .line 2148
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a4c
    move-result-object v21

    #@a4d
    const/16 v22, 0x5

    #@a4f
    aput-object v21, v20, v22

    #@a51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a54
    move-result-object v21

    #@a55
    const/16 v22, 0x6

    #@a57
    aput-object v21, v20, v22

    #@a59
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a5c
    move-result-object v21

    #@a5d
    const/16 v22, 0x7

    #@a5f
    aput-object v21, v20, v22

    #@a61
    const-string/jumbo v21, ""

    #@a64
    const/16 v22, 0x8

    #@a66
    aput-object v21, v20, v22

    #@a68
    const-string/jumbo v21, ""

    #@a6b
    const/16 v22, 0x9

    #@a6d
    aput-object v21, v20, v22

    #@a6f
    const-string/jumbo v21, ""

    #@a72
    const/16 v22, 0xa

    #@a74
    aput-object v21, v20, v22

    #@a76
    .line 2146
    move-object/from16 v0, p0

    #@a78
    move-object/from16 v1, v19

    #@a7a
    move-object/from16 v2, v20

    #@a7c
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@a7f
    .line 2135
    :cond_9
    :goto_8
    add-int/lit8 v4, v4, 0x1

    #@a81
    goto/16 :goto_6

    #@a83
    .line 2119
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    :cond_a
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@a86
    const/16 v20, 0x8

    #@a88
    move/from16 v0, v20

    #@a8a
    new-array v0, v0, [Ljava/lang/Object;

    #@a8c
    move-object/from16 v20, v0

    #@a8e
    const-string/jumbo v21, "Unknown"

    #@a91
    const/16 v22, 0x0

    #@a93
    aput-object v21, v20, v22

    #@a95
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a98
    move-result-object v21

    #@a99
    const/16 v22, 0x1

    #@a9b
    aput-object v21, v20, v22

    #@a9d
    .line 2120
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@aa0
    move-result-object v21

    #@aa1
    const/16 v22, 0x2

    #@aa3
    aput-object v21, v20, v22

    #@aa5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@aa8
    move-result-object v21

    #@aa9
    const/16 v22, 0x3

    #@aab
    aput-object v21, v20, v22

    #@aad
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ab0
    move-result-object v21

    #@ab1
    const/16 v22, 0x4

    #@ab3
    aput-object v21, v20, v22

    #@ab5
    .line 2121
    const-string/jumbo v21, ""

    #@ab8
    const/16 v22, 0x5

    #@aba
    aput-object v21, v20, v22

    #@abc
    const-string/jumbo v21, ""

    #@abf
    const/16 v22, 0x6

    #@ac1
    aput-object v21, v20, v22

    #@ac3
    const-string/jumbo v21, ""

    #@ac6
    const/16 v22, 0x7

    #@ac8
    aput-object v21, v20, v22

    #@aca
    .line 2119
    move-object/from16 v0, p0

    #@acc
    move-object/from16 v1, v19

    #@ace
    move-object/from16 v2, v20

    #@ad0
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@ad3
    .line 2122
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@ad6
    const/16 v20, 0x8

    #@ad8
    move/from16 v0, v20

    #@ada
    new-array v0, v0, [Ljava/lang/Object;

    #@adc
    move-object/from16 v20, v0

    #@ade
    const-string/jumbo v21, "TOTAL"

    #@ae1
    const/16 v22, 0x0

    #@ae3
    aput-object v21, v20, v22

    #@ae5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    #@ae8
    move-result v21

    #@ae9
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@aec
    move-result-object v21

    #@aed
    const/16 v22, 0x1

    #@aef
    aput-object v21, v20, v22

    #@af1
    .line 2123
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    #@af4
    move-result v21

    #@af5
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@af8
    move-result-object v21

    #@af9
    const/16 v22, 0x2

    #@afb
    aput-object v21, v20, v22

    #@afd
    .line 2124
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    #@b00
    move-result v21

    #@b01
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b04
    move-result-object v21

    #@b05
    const/16 v22, 0x3

    #@b07
    aput-object v21, v20, v22

    #@b09
    .line 2125
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    #@b0c
    move-result v21

    #@b0d
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b10
    move-result-object v21

    #@b11
    const/16 v22, 0x4

    #@b13
    aput-object v21, v20, v22

    #@b15
    .line 2126
    add-long v22, p8, p14

    #@b17
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b1a
    move-result-object v21

    #@b1b
    const/16 v22, 0x5

    #@b1d
    aput-object v21, v20, v22

    #@b1f
    .line 2127
    add-long v22, p10, p16

    #@b21
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b24
    move-result-object v21

    #@b25
    const/16 v22, 0x6

    #@b27
    aput-object v21, v20, v22

    #@b29
    add-long v22, p12, p18

    #@b2b
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b2e
    move-result-object v21

    #@b2f
    const/16 v22, 0x7

    #@b31
    aput-object v21, v20, v22

    #@b33
    .line 2122
    move-object/from16 v0, p0

    #@b35
    move-object/from16 v1, v19

    #@b37
    move-object/from16 v2, v20

    #@b39
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@b3c
    goto/16 :goto_5

    #@b3e
    .line 2143
    .restart local v5    # "myPrivateClean":I
    .restart local v6    # "myPrivateDirty":I
    .restart local v7    # "myPss":I
    .restart local v8    # "mySharedClean":I
    .restart local v9    # "mySharedDirty":I
    .restart local v10    # "mySwappablePss":I
    .restart local v11    # "mySwappedOut":I
    :cond_b
    if-nez v6, :cond_8

    #@b40
    .line 2144
    if-nez v8, :cond_8

    #@b42
    if-eqz v5, :cond_9

    #@b44
    goto/16 :goto_7

    #@b46
    .line 2150
    :cond_c
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@b49
    const/16 v20, 0x8

    #@b4b
    move/from16 v0, v20

    #@b4d
    new-array v0, v0, [Ljava/lang/Object;

    #@b4f
    move-object/from16 v20, v0

    #@b51
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    #@b54
    move-result-object v21

    #@b55
    const/16 v22, 0x0

    #@b57
    aput-object v21, v20, v22

    #@b59
    .line 2151
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b5c
    move-result-object v21

    #@b5d
    const/16 v22, 0x1

    #@b5f
    aput-object v21, v20, v22

    #@b61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b64
    move-result-object v21

    #@b65
    const/16 v22, 0x2

    #@b67
    aput-object v21, v20, v22

    #@b69
    .line 2152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b6c
    move-result-object v21

    #@b6d
    const/16 v22, 0x3

    #@b6f
    aput-object v21, v20, v22

    #@b71
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b74
    move-result-object v21

    #@b75
    const/16 v22, 0x4

    #@b77
    aput-object v21, v20, v22

    #@b79
    const-string/jumbo v21, ""

    #@b7c
    const/16 v22, 0x5

    #@b7e
    aput-object v21, v20, v22

    #@b80
    const-string/jumbo v21, ""

    #@b83
    const/16 v22, 0x6

    #@b85
    aput-object v21, v20, v22

    #@b87
    const-string/jumbo v21, ""

    #@b8a
    const/16 v22, 0x7

    #@b8c
    aput-object v21, v20, v22

    #@b8e
    .line 2150
    move-object/from16 v0, p0

    #@b90
    move-object/from16 v1, v19

    #@b92
    move-object/from16 v2, v20

    #@b94
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@b97
    goto/16 :goto_8

    #@b99
    .line 2159
    .end local v4    # "i":I
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "otherPrivateClean":I
    .end local v13    # "otherPrivateDirty":I
    .end local v14    # "otherPss":I
    .end local v15    # "otherSharedClean":I
    .end local v16    # "otherSharedDirty":I
    .end local v17    # "otherSwappablePss":I
    .end local v18    # "otherSwappedOut":I
    :cond_d
    const-string/jumbo v19, " "

    #@b9c
    move-object/from16 v0, p0

    #@b9e
    move-object/from16 v1, v19

    #@ba0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ba3
    .line 2160
    const-string/jumbo v19, " App Summary"

    #@ba6
    move-object/from16 v0, p0

    #@ba8
    move-object/from16 v1, v19

    #@baa
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bad
    .line 2161
    const-string/jumbo v19, "%21s %8s"

    #@bb0
    const/16 v20, 0x2

    #@bb2
    move/from16 v0, v20

    #@bb4
    new-array v0, v0, [Ljava/lang/Object;

    #@bb6
    move-object/from16 v20, v0

    #@bb8
    const-string/jumbo v21, ""

    #@bbb
    const/16 v22, 0x0

    #@bbd
    aput-object v21, v20, v22

    #@bbf
    const-string/jumbo v21, "Pss(KB)"

    #@bc2
    const/16 v22, 0x1

    #@bc4
    aput-object v21, v20, v22

    #@bc6
    move-object/from16 v0, p0

    #@bc8
    move-object/from16 v1, v19

    #@bca
    move-object/from16 v2, v20

    #@bcc
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@bcf
    .line 2162
    const-string/jumbo v19, "%21s %8s"

    #@bd2
    const/16 v20, 0x2

    #@bd4
    move/from16 v0, v20

    #@bd6
    new-array v0, v0, [Ljava/lang/Object;

    #@bd8
    move-object/from16 v20, v0

    #@bda
    const-string/jumbo v21, ""

    #@bdd
    const/16 v22, 0x0

    #@bdf
    aput-object v21, v20, v22

    #@be1
    const-string/jumbo v21, "------"

    #@be4
    const/16 v22, 0x1

    #@be6
    aput-object v21, v20, v22

    #@be8
    move-object/from16 v0, p0

    #@bea
    move-object/from16 v1, v19

    #@bec
    move-object/from16 v2, v20

    #@bee
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@bf1
    .line 2163
    const-string/jumbo v19, "%21s %8d"

    #@bf4
    const/16 v20, 0x2

    #@bf6
    move/from16 v0, v20

    #@bf8
    new-array v0, v0, [Ljava/lang/Object;

    #@bfa
    move-object/from16 v20, v0

    #@bfc
    .line 2164
    const-string/jumbo v21, "Java Heap:"

    #@bff
    const/16 v22, 0x0

    #@c01
    aput-object v21, v20, v22

    #@c03
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    #@c06
    move-result v21

    #@c07
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c0a
    move-result-object v21

    #@c0b
    const/16 v22, 0x1

    #@c0d
    aput-object v21, v20, v22

    #@c0f
    .line 2163
    move-object/from16 v0, p0

    #@c11
    move-object/from16 v1, v19

    #@c13
    move-object/from16 v2, v20

    #@c15
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c18
    .line 2165
    const-string/jumbo v19, "%21s %8d"

    #@c1b
    const/16 v20, 0x2

    #@c1d
    move/from16 v0, v20

    #@c1f
    new-array v0, v0, [Ljava/lang/Object;

    #@c21
    move-object/from16 v20, v0

    #@c23
    .line 2166
    const-string/jumbo v21, "Native Heap:"

    #@c26
    const/16 v22, 0x0

    #@c28
    aput-object v21, v20, v22

    #@c2a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    #@c2d
    move-result v21

    #@c2e
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c31
    move-result-object v21

    #@c32
    const/16 v22, 0x1

    #@c34
    aput-object v21, v20, v22

    #@c36
    .line 2165
    move-object/from16 v0, p0

    #@c38
    move-object/from16 v1, v19

    #@c3a
    move-object/from16 v2, v20

    #@c3c
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c3f
    .line 2167
    const-string/jumbo v19, "%21s %8d"

    #@c42
    const/16 v20, 0x2

    #@c44
    move/from16 v0, v20

    #@c46
    new-array v0, v0, [Ljava/lang/Object;

    #@c48
    move-object/from16 v20, v0

    #@c4a
    .line 2168
    const-string/jumbo v21, "Code:"

    #@c4d
    const/16 v22, 0x0

    #@c4f
    aput-object v21, v20, v22

    #@c51
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    #@c54
    move-result v21

    #@c55
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c58
    move-result-object v21

    #@c59
    const/16 v22, 0x1

    #@c5b
    aput-object v21, v20, v22

    #@c5d
    .line 2167
    move-object/from16 v0, p0

    #@c5f
    move-object/from16 v1, v19

    #@c61
    move-object/from16 v2, v20

    #@c63
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c66
    .line 2169
    const-string/jumbo v19, "%21s %8d"

    #@c69
    const/16 v20, 0x2

    #@c6b
    move/from16 v0, v20

    #@c6d
    new-array v0, v0, [Ljava/lang/Object;

    #@c6f
    move-object/from16 v20, v0

    #@c71
    .line 2170
    const-string/jumbo v21, "Stack:"

    #@c74
    const/16 v22, 0x0

    #@c76
    aput-object v21, v20, v22

    #@c78
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    #@c7b
    move-result v21

    #@c7c
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7f
    move-result-object v21

    #@c80
    const/16 v22, 0x1

    #@c82
    aput-object v21, v20, v22

    #@c84
    .line 2169
    move-object/from16 v0, p0

    #@c86
    move-object/from16 v1, v19

    #@c88
    move-object/from16 v2, v20

    #@c8a
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c8d
    .line 2171
    const-string/jumbo v19, "%21s %8d"

    #@c90
    const/16 v20, 0x2

    #@c92
    move/from16 v0, v20

    #@c94
    new-array v0, v0, [Ljava/lang/Object;

    #@c96
    move-object/from16 v20, v0

    #@c98
    .line 2172
    const-string/jumbo v21, "Graphics:"

    #@c9b
    const/16 v22, 0x0

    #@c9d
    aput-object v21, v20, v22

    #@c9f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    #@ca2
    move-result v21

    #@ca3
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ca6
    move-result-object v21

    #@ca7
    const/16 v22, 0x1

    #@ca9
    aput-object v21, v20, v22

    #@cab
    .line 2171
    move-object/from16 v0, p0

    #@cad
    move-object/from16 v1, v19

    #@caf
    move-object/from16 v2, v20

    #@cb1
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@cb4
    .line 2173
    const-string/jumbo v19, "%21s %8d"

    #@cb7
    const/16 v20, 0x2

    #@cb9
    move/from16 v0, v20

    #@cbb
    new-array v0, v0, [Ljava/lang/Object;

    #@cbd
    move-object/from16 v20, v0

    #@cbf
    .line 2174
    const-string/jumbo v21, "Private Other:"

    #@cc2
    const/16 v22, 0x0

    #@cc4
    aput-object v21, v20, v22

    #@cc6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    #@cc9
    move-result v21

    #@cca
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ccd
    move-result-object v21

    #@cce
    const/16 v22, 0x1

    #@cd0
    aput-object v21, v20, v22

    #@cd2
    .line 2173
    move-object/from16 v0, p0

    #@cd4
    move-object/from16 v1, v19

    #@cd6
    move-object/from16 v2, v20

    #@cd8
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@cdb
    .line 2175
    const-string/jumbo v19, "%21s %8d"

    #@cde
    const/16 v20, 0x2

    #@ce0
    move/from16 v0, v20

    #@ce2
    new-array v0, v0, [Ljava/lang/Object;

    #@ce4
    move-object/from16 v20, v0

    #@ce6
    .line 2176
    const-string/jumbo v21, "System:"

    #@ce9
    const/16 v22, 0x0

    #@ceb
    aput-object v21, v20, v22

    #@ced
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    #@cf0
    move-result v21

    #@cf1
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cf4
    move-result-object v21

    #@cf5
    const/16 v22, 0x1

    #@cf7
    aput-object v21, v20, v22

    #@cf9
    .line 2175
    move-object/from16 v0, p0

    #@cfb
    move-object/from16 v1, v19

    #@cfd
    move-object/from16 v2, v20

    #@cff
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@d02
    .line 2177
    const-string/jumbo v19, " "

    #@d05
    move-object/from16 v0, p0

    #@d07
    move-object/from16 v1, v19

    #@d09
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d0c
    .line 2178
    const-string/jumbo v19, "%21s %8d %21s %8d"

    #@d0f
    const/16 v20, 0x4

    #@d11
    move/from16 v0, v20

    #@d13
    new-array v0, v0, [Ljava/lang/Object;

    #@d15
    move-object/from16 v20, v0

    #@d17
    .line 2179
    const-string/jumbo v21, "TOTAL:"

    #@d1a
    const/16 v22, 0x0

    #@d1c
    aput-object v21, v20, v22

    #@d1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    #@d21
    move-result v21

    #@d22
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d25
    move-result-object v21

    #@d26
    const/16 v22, 0x1

    #@d28
    aput-object v21, v20, v22

    #@d2a
    .line 2180
    const-string/jumbo v21, "TOTAL SWAP (KB):"

    #@d2d
    const/16 v22, 0x2

    #@d2f
    aput-object v21, v20, v22

    #@d31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    #@d34
    move-result v21

    #@d35
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d38
    move-result-object v21

    #@d39
    const/16 v22, 0x3

    #@d3b
    aput-object v21, v20, v22

    #@d3d
    .line 2178
    move-object/from16 v0, p0

    #@d3f
    move-object/from16 v1, v19

    #@d41
    move-object/from16 v2, v20

    #@d43
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@d46
    .line 1957
    return-void
.end method

.method static freeTextLayoutCachesIfNeeded(I)V
    .locals 2
    .param p0, "configDiff"    # I

    #@0
    .prologue
    .line 4253
    if-eqz p0, :cond_0

    #@2
    .line 4255
    and-int/lit8 v1, p0, 0x4

    #@4
    if-eqz v1, :cond_1

    #@6
    const/4 v0, 0x1

    #@7
    .line 4256
    .local v0, "hasLocaleConfigChange":Z
    :goto_0
    if-eqz v0, :cond_0

    #@9
    .line 4257
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    #@c
    .line 4252
    .end local v0    # "hasLocaleConfigChange":Z
    :cond_0
    return-void

    #@d
    .line 4255
    :cond_1
    const/4 v0, 0x0

    #@e
    .restart local v0    # "hasLocaleConfigChange":Z
    goto :goto_0
.end method

.method public static getIntentBeingBroadcast()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 2680
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/Intent;

    #@8
    return-object v0
.end method

.method private getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;
    .locals 11
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z

    #@0
    .prologue
    .line 1807
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@6
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@9
    move-result v2

    #@a
    if-eq v1, v2, :cond_1

    #@c
    const/4 v8, 0x1

    #@d
    .line 1808
    .local v8, "differentUser":Z
    :goto_0
    iget-object v10, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@f
    monitor-enter v10

    #@10
    .line 1810
    if-eqz v8, :cond_2

    #@12
    .line 1812
    const/4 v9, 0x0

    #@13
    .line 1819
    :goto_1
    if-eqz v9, :cond_4

    #@15
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/app/LoadedApk;

    #@1b
    .line 1820
    :goto_2
    if-eqz v0, :cond_5

    #@1d
    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 1821
    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@23
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->isUpToDate()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_5

    #@2d
    :cond_0
    :goto_3
    monitor-exit v10

    #@2e
    .line 1847
    return-object v0

    #@2f
    .line 1807
    .end local v8    # "differentUser":Z
    :cond_1
    const/4 v8, 0x0

    #@30
    .restart local v8    # "differentUser":Z
    goto :goto_0

    #@31
    .line 1813
    :cond_2
    if-eqz p5, :cond_3

    #@33
    .line 1814
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@35
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@37
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v9

    #@3b
    check-cast v9, Ljava/lang/ref/WeakReference;

    #@3d
    .local v9, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    #@3e
    .line 1816
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@40
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@42
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v9

    #@46
    check-cast v9, Ljava/lang/ref/WeakReference;

    #@48
    .restart local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    #@49
    .line 1819
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    const/4 v0, 0x0

    #@4a
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    goto :goto_2

    #@4b
    .line 1828
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    :cond_5
    new-instance v0, Landroid/app/LoadedApk;

    #@4d
    .line 1829
    if-eqz p5, :cond_8

    #@4f
    .line 1830
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@51
    and-int/lit8 v1, v1, 0x4

    #@53
    if-eqz v1, :cond_7

    #@55
    const/4 v6, 0x1

    #@56
    :goto_4
    move-object v1, p0

    #@57
    move-object v2, p1

    #@58
    move-object v3, p2

    #@59
    move-object v4, p3

    #@5a
    move v5, p4

    #@5b
    move/from16 v7, p6

    #@5d
    .line 1828
    invoke-direct/range {v0 .. v7}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    #@60
    .line 1832
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    #@62
    if-eqz v1, :cond_6

    #@64
    const-string/jumbo v1, "android"

    #@67
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_6

    #@6f
    .line 1834
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@72
    move-result-object v1

    #@73
    iget-object v1, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@75
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@78
    move-result-object v1

    #@79
    .line 1833
    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    #@7c
    .line 1837
    :cond_6
    if-nez v8, :cond_0

    #@7e
    .line 1839
    if-eqz p5, :cond_9

    #@80
    .line 1840
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@82
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@84
    .line 1841
    new-instance v3, Ljava/lang/ref/WeakReference;

    #@86
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@89
    .line 1840
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    goto :goto_3

    #@8d
    .line 1808
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    :catchall_0
    move-exception v1

    #@8e
    monitor-exit v10

    #@8f
    throw v1

    #@90
    .line 1830
    :cond_7
    const/4 v6, 0x0

    #@91
    goto :goto_4

    #@92
    .line 1829
    :cond_8
    const/4 v6, 0x0

    #@93
    goto :goto_4

    #@94
    .line 1843
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    :cond_9
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@96
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@98
    .line 1844
    new-instance v3, Ljava/lang/ref/WeakReference;

    #@9a
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@9d
    .line 1843
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a0
    goto :goto_3
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    #@0
    .prologue
    .line 1670
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1672
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    #@6
    return-object v1

    #@7
    .line 1674
    :cond_0
    const-string/jumbo v1, "package"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 1676
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    #@14
    .line 1678
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    #@16
    return-object v1
.end method

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 31
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    #@0
    .prologue
    .line 4431
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p0

    #@4
    iput-object v0, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@6
    .line 4432
    new-instance v2, Landroid/content/res/Configuration;

    #@8
    move-object/from16 v0, p1

    #@a
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@c
    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@f
    move-object/from16 v0, p0

    #@11
    iput-object v2, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@13
    .line 4433
    new-instance v2, Landroid/content/res/Configuration;

    #@15
    move-object/from16 v0, p1

    #@17
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@19
    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@1c
    move-object/from16 v0, p0

    #@1e
    iput-object v2, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@20
    .line 4435
    new-instance v2, Landroid/app/ActivityThread$Profiler;

    #@22
    invoke-direct {v2}, Landroid/app/ActivityThread$Profiler;-><init>()V

    #@25
    move-object/from16 v0, p0

    #@27
    iput-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@29
    .line 4436
    move-object/from16 v0, p1

    #@2b
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 4437
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@33
    move-object/from16 v0, p1

    #@35
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@37
    iget-object v4, v4, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    #@39
    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@3b
    .line 4438
    move-object/from16 v0, p0

    #@3d
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@3f
    move-object/from16 v0, p1

    #@41
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@43
    iget-object v4, v4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@45
    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@47
    .line 4439
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@4b
    move-object/from16 v0, p1

    #@4d
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@4f
    iget v4, v4, Landroid/app/ProfilerInfo;->samplingInterval:I

    #@51
    iput v4, v2, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    #@53
    .line 4440
    move-object/from16 v0, p0

    #@55
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@57
    move-object/from16 v0, p1

    #@59
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@5b
    iget-boolean v4, v4, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    #@5d
    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    #@5f
    .line 4444
    :cond_0
    move-object/from16 v0, p1

    #@61
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@63
    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    #@66
    .line 4445
    move-object/from16 v0, p1

    #@68
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@6a
    .line 4446
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@6d
    move-result v4

    #@6e
    .line 4445
    invoke-static {v2, v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    #@71
    .line 4448
    move-object/from16 v0, p1

    #@73
    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    #@75
    if-eqz v2, :cond_1

    #@77
    .line 4452
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@7a
    move-result v2

    #@7b
    if-nez v2, :cond_1

    #@7d
    .line 4453
    const/4 v2, 0x0

    #@7e
    invoke-static {v2}, Landroid/view/HardwareRenderer;->disable(Z)V

    #@81
    .line 4457
    :cond_1
    move-object/from16 v0, p0

    #@83
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@85
    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@87
    if-eqz v2, :cond_2

    #@89
    .line 4458
    move-object/from16 v0, p0

    #@8b
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@8d
    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    #@90
    .line 4465
    :cond_2
    move-object/from16 v0, p1

    #@92
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@94
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@96
    const/16 v4, 0xc

    #@98
    if-gt v2, v4, :cond_3

    #@9a
    .line 4466
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@9c
    invoke-static {v2}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    #@9f
    .line 4469
    :cond_3
    move-object/from16 v0, p1

    #@a1
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@a3
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@a5
    invoke-static {v2}, Landroid/os/Message;->updateCheckRecycle(I)V

    #@a8
    .line 4477
    const/4 v2, 0x0

    #@a9
    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    #@ac
    .line 4482
    move-object/from16 v0, p1

    #@ae
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@b0
    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@b2
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    #@b5
    .line 4489
    move-object/from16 v0, p0

    #@b7
    iget-object v2, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@b9
    move-object/from16 v0, p1

    #@bb
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@bd
    move-object/from16 v0, p1

    #@bf
    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@c1
    invoke-virtual {v2, v4, v5}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    #@c4
    .line 4490
    move-object/from16 v0, p1

    #@c6
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@c8
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    #@ca
    move-object/from16 v0, p0

    #@cc
    iput v2, v0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@ce
    .line 4491
    move-object/from16 v0, p0

    #@d0
    iget v2, v0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@d2
    move-object/from16 v0, p0

    #@d4
    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;

    #@d7
    .line 4493
    move-object/from16 v0, p1

    #@d9
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@db
    move-object/from16 v0, p1

    #@dd
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@df
    move-object/from16 v0, p0

    #@e1
    invoke-virtual {v0, v2, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@e4
    move-result-object v2

    #@e5
    move-object/from16 v0, p1

    #@e7
    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@e9
    .line 4498
    move-object/from16 v0, p1

    #@eb
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@ed
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@ef
    and-int/lit16 v2, v2, 0x2000

    #@f1
    if-nez v2, :cond_4

    #@f3
    .line 4500
    const/4 v2, 0x1

    #@f4
    move-object/from16 v0, p0

    #@f6
    iput-boolean v2, v0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    #@f8
    .line 4501
    const/16 v2, 0xa0

    #@fa
    invoke-static {v2}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    #@fd
    .line 4503
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    #@100
    .line 4505
    move-object/from16 v0, p1

    #@102
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@104
    move-object/from16 v0, p0

    #@106
    invoke-static {v0, v2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    #@109
    move-result-object v12

    #@10a
    .line 4506
    .local v12, "appContext":Landroid/app/ContextImpl;
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    #@10d
    move-result v2

    #@10e
    if-nez v2, :cond_5

    #@110
    .line 4507
    invoke-virtual {v12}, Landroid/app/ContextImpl;->getCacheDir()Ljava/io/File;

    #@113
    move-result-object v15

    #@114
    .line 4509
    .local v15, "cacheDir":Ljava/io/File;
    if-eqz v15, :cond_b

    #@116
    .line 4511
    const-string/jumbo v2, "java.io.tmpdir"

    #@119
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@11c
    move-result-object v4

    #@11d
    invoke-static {v2, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@120
    .line 4517
    :goto_0
    invoke-virtual {v12}, Landroid/app/ContextImpl;->getCodeCacheDir()Ljava/io/File;

    #@123
    move-result-object v17

    #@124
    .line 4518
    .local v17, "codeCacheDir":Ljava/io/File;
    if-eqz v17, :cond_c

    #@126
    .line 4519
    move-object/from16 v0, p1

    #@128
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@12a
    move-object/from16 v0, p0

    #@12c
    move-object/from16 v1, v17

    #@12e
    invoke-direct {v0, v2, v1}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V

    #@131
    .line 4526
    .end local v15    # "cacheDir":Ljava/io/File;
    .end local v17    # "codeCacheDir":Ljava/io/File;
    :cond_5
    :goto_1
    const-string/jumbo v2, "24"

    #@134
    move-object/from16 v0, p0

    #@136
    iget-object v4, v0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    #@138
    const-string/jumbo v5, "time_12_24"

    #@13b
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@13e
    move-result-object v4

    #@13f
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@142
    move-result v24

    #@143
    .line 4527
    .local v24, "is24Hr":Z
    invoke-static/range {v24 .. v24}, Ljava/text/DateFormat;->set24HourTimePref(Z)V

    #@146
    .line 4530
    move-object/from16 v0, p0

    #@148
    iget-object v2, v0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    #@14a
    const-string/jumbo v4, "debug_view_attributes"

    #@14d
    const/4 v5, 0x0

    #@14e
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@151
    move-result v2

    #@152
    if-eqz v2, :cond_d

    #@154
    const/4 v2, 0x1

    #@155
    .line 4529
    :goto_2
    sput-boolean v2, Landroid/view/View;->mDebugViewAttributes:Z

    #@157
    .line 4536
    move-object/from16 v0, p1

    #@159
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@15b
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@15d
    and-int/lit16 v2, v2, 0x81

    #@15f
    if-eqz v2, :cond_6

    #@161
    .line 4539
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    #@164
    .line 4549
    :cond_6
    move-object/from16 v0, p1

    #@166
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@168
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@16a
    const/16 v4, 0x9

    #@16c
    if-le v2, v4, :cond_7

    #@16e
    .line 4550
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnNetwork()V

    #@171
    .line 4553
    :cond_7
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    #@174
    move-result-object v4

    #@175
    .line 4554
    move-object/from16 v0, p1

    #@177
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@179
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@17b
    const/high16 v5, 0x8000000

    #@17d
    and-int/2addr v2, v5

    #@17e
    if-eqz v2, :cond_e

    #@180
    const/4 v2, 0x1

    #@181
    .line 4553
    :goto_3
    invoke-virtual {v4, v2}, Landroid/security/NetworkSecurityPolicy;->setCleartextTrafficPermitted(Z)V

    #@184
    .line 4556
    move-object/from16 v0, p1

    #@186
    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    #@188
    if-eqz v2, :cond_8

    #@18a
    .line 4558
    const/16 v2, 0x1fa4

    #@18c
    invoke-static {v2}, Landroid/os/Debug;->changeDebugPort(I)V

    #@18f
    .line 4559
    move-object/from16 v0, p1

    #@191
    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    #@193
    const/4 v4, 0x2

    #@194
    if-ne v2, v4, :cond_f

    #@196
    .line 4560
    const-string/jumbo v2, "ActivityThread"

    #@199
    new-instance v4, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    const-string/jumbo v5, "Application "

    #@1a1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v4

    #@1a5
    move-object/from16 v0, p1

    #@1a7
    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@1a9
    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    #@1ac
    move-result-object v5

    #@1ad
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v4

    #@1b1
    .line 4561
    const-string/jumbo v5, " is waiting for the debugger on port 8100..."

    #@1b4
    .line 4560
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v4

    #@1b8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bb
    move-result-object v4

    #@1bc
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1bf
    .line 4563
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1c2
    move-result-object v25

    #@1c3
    .line 4565
    .local v25, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    move-object/from16 v0, p0

    #@1c5
    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@1c7
    const/4 v4, 0x1

    #@1c8
    move-object/from16 v0, v25

    #@1ca
    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    #@1cd
    .line 4569
    :goto_4
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    #@1d0
    .line 4572
    :try_start_1
    move-object/from16 v0, p0

    #@1d2
    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@1d4
    const/4 v4, 0x0

    #@1d5
    move-object/from16 v0, v25

    #@1d7
    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    #@1da
    .line 4583
    .end local v25    # "mgr":Landroid/app/IActivityManager;
    :cond_8
    :goto_5
    move-object/from16 v0, p1

    #@1dc
    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->enableOpenGlTrace:Z

    #@1de
    if-eqz v2, :cond_9

    #@1e0
    .line 4584
    const/4 v2, 0x1

    #@1e1
    invoke-static {v2}, Landroid/opengl/GLUtils;->setTracingLevel(I)V

    #@1e4
    .line 4588
    :cond_9
    move-object/from16 v0, p1

    #@1e6
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1e8
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1ea
    and-int/lit8 v2, v2, 0x2

    #@1ec
    if-eqz v2, :cond_10

    #@1ee
    const/4 v13, 0x1

    #@1ef
    .line 4589
    .local v13, "appTracingAllowed":Z
    :goto_6
    invoke-static {v13}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    #@1f2
    .line 4594
    const-string/jumbo v2, "connectivity"

    #@1f5
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1f8
    move-result-object v14

    #@1f9
    .line 4595
    .local v14, "b":Landroid/os/IBinder;
    if-eqz v14, :cond_a

    #@1fb
    .line 4599
    invoke-static {v14}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    #@1fe
    move-result-object v30

    #@1ff
    .line 4601
    .local v30, "service":Landroid/net/IConnectivityManager;
    const/4 v2, 0x0

    #@200
    :try_start_2
    move-object/from16 v0, v30

    #@202
    invoke-interface {v0, v2}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    #@205
    move-result-object v28

    #@206
    .line 4602
    .local v28, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-static/range {v28 .. v28}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    #@209
    .line 4606
    .end local v28    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v30    # "service":Landroid/net/IConnectivityManager;
    :cond_a
    :goto_7
    move-object/from16 v0, p1

    #@20b
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@20d
    if-eqz v2, :cond_16

    #@20f
    .line 4607
    const/16 v23, 0x0

    #@211
    .line 4609
    .local v23, "ii":Landroid/content/pm/InstrumentationInfo;
    :try_start_3
    invoke-virtual {v12}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    #@214
    move-result-object v2

    #@215
    .line 4610
    move-object/from16 v0, p1

    #@217
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@219
    const/4 v5, 0x0

    #@21a
    .line 4609
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    #@21d
    move-result-object v23

    #@21e
    .line 4613
    .end local v23    # "ii":Landroid/content/pm/InstrumentationInfo;
    :goto_8
    if-nez v23, :cond_11

    #@220
    .line 4614
    new-instance v2, Ljava/lang/RuntimeException;

    #@222
    .line 4615
    new-instance v4, Ljava/lang/StringBuilder;

    #@224
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@227
    const-string/jumbo v5, "Unable to find instrumentation info for: "

    #@22a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v4

    #@22e
    .line 4616
    move-object/from16 v0, p1

    #@230
    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@232
    .line 4615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@235
    move-result-object v4

    #@236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@239
    move-result-object v4

    #@23a
    .line 4614
    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23d
    throw v2

    #@23e
    .line 4513
    .end local v13    # "appTracingAllowed":Z
    .end local v14    # "b":Landroid/os/IBinder;
    .end local v24    # "is24Hr":Z
    .restart local v15    # "cacheDir":Ljava/io/File;
    :cond_b
    const-string/jumbo v2, "ActivityThread"

    #@241
    const-string/jumbo v4, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    #@244
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@247
    goto/16 :goto_0

    #@249
    .line 4521
    .restart local v17    # "codeCacheDir":Ljava/io/File;
    :cond_c
    const-string/jumbo v2, "ActivityThread"

    #@24c
    const-string/jumbo v4, "Unable to setupGraphicsSupport due to missing code-cache directory"

    #@24f
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@252
    goto/16 :goto_1

    #@254
    .line 4530
    .end local v15    # "cacheDir":Ljava/io/File;
    .end local v17    # "codeCacheDir":Ljava/io/File;
    .restart local v24    # "is24Hr":Z
    :cond_d
    const/4 v2, 0x0

    #@255
    goto/16 :goto_2

    #@257
    .line 4554
    :cond_e
    const/4 v2, 0x0

    #@258
    goto/16 :goto_3

    #@25a
    .line 4577
    :cond_f
    const-string/jumbo v2, "ActivityThread"

    #@25d
    new-instance v4, Ljava/lang/StringBuilder;

    #@25f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@262
    const-string/jumbo v5, "Application "

    #@265
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v4

    #@269
    move-object/from16 v0, p1

    #@26b
    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@26d
    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    #@270
    move-result-object v5

    #@271
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    move-result-object v4

    #@275
    .line 4578
    const-string/jumbo v5, " can be debugged on port 8100..."

    #@278
    .line 4577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27b
    move-result-object v4

    #@27c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27f
    move-result-object v4

    #@280
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@283
    goto/16 :goto_5

    #@285
    .line 4588
    :cond_10
    const/4 v13, 0x0

    #@286
    .restart local v13    # "appTracingAllowed":Z
    goto/16 :goto_6

    #@288
    .line 4619
    .restart local v14    # "b":Landroid/os/IBinder;
    :cond_11
    move-object/from16 v0, v23

    #@28a
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    #@28c
    move-object/from16 v0, p0

    #@28e
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    #@290
    .line 4620
    move-object/from16 v0, v23

    #@292
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    #@294
    move-object/from16 v0, p0

    #@296
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    #@298
    .line 4621
    move-object/from16 v0, v23

    #@29a
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@29c
    move-object/from16 v0, p0

    #@29e
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    #@2a0
    .line 4622
    move-object/from16 v0, v23

    #@2a2
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@2a4
    move-object/from16 v0, p0

    #@2a6
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    #@2a8
    .line 4623
    move-object/from16 v0, p1

    #@2aa
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@2ac
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    #@2af
    move-result-object v2

    #@2b0
    move-object/from16 v0, p0

    #@2b2
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    #@2b4
    .line 4624
    move-object/from16 v0, p1

    #@2b6
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@2b8
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    #@2bb
    move-result-object v2

    #@2bc
    move-object/from16 v0, p0

    #@2be
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    #@2c0
    .line 4625
    move-object/from16 v0, p1

    #@2c2
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@2c4
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    #@2c7
    move-result-object v2

    #@2c8
    move-object/from16 v0, p0

    #@2ca
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    #@2cc
    .line 4627
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    #@2ce
    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    #@2d1
    .line 4628
    .local v3, "instrApp":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v23

    #@2d3
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    #@2d5
    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2d7
    .line 4629
    move-object/from16 v0, v23

    #@2d9
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    #@2db
    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@2dd
    .line 4630
    move-object/from16 v0, v23

    #@2df
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    #@2e1
    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@2e3
    .line 4631
    move-object/from16 v0, v23

    #@2e5
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@2e7
    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@2e9
    .line 4632
    move-object/from16 v0, v23

    #@2eb
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@2ed
    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@2ef
    .line 4633
    move-object/from16 v0, v23

    #@2f1
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    #@2f3
    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    #@2f5
    .line 4634
    move-object/from16 v0, v23

    #@2f7
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@2f9
    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@2fb
    .line 4635
    move-object/from16 v0, p1

    #@2fd
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@2ff
    .line 4636
    invoke-virtual {v12}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    #@302
    move-result-object v5

    #@303
    const/4 v6, 0x0

    #@304
    const/4 v7, 0x1

    #@305
    const/4 v8, 0x0

    #@306
    move-object/from16 v2, p0

    #@308
    .line 4635
    invoke-direct/range {v2 .. v8}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    #@30b
    move-result-object v26

    #@30c
    .line 4637
    .local v26, "pi":Landroid/app/LoadedApk;
    move-object/from16 v0, p0

    #@30e
    move-object/from16 v1, v26

    #@310
    invoke-static {v0, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    #@313
    move-result-object v6

    #@314
    .line 4640
    .local v6, "instrContext":Landroid/app/ContextImpl;
    :try_start_4
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    #@317
    move-result-object v16

    #@318
    .line 4642
    .local v16, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    #@31a
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@31c
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@31f
    move-result-object v2

    #@320
    move-object/from16 v0, v16

    #@322
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@325
    move-result-object v2

    #@326
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@329
    move-result-object v2

    #@32a
    check-cast v2, Landroid/app/Instrumentation;

    #@32c
    .line 4641
    move-object/from16 v0, p0

    #@32e
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@330
    .line 4649
    move-object/from16 v0, p0

    #@332
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@334
    .line 4650
    new-instance v8, Landroid/content/ComponentName;

    #@336
    move-object/from16 v0, v23

    #@338
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    #@33a
    move-object/from16 v0, v23

    #@33c
    iget-object v5, v0, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    #@33e
    invoke-direct {v8, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@341
    move-object/from16 v0, p1

    #@343
    iget-object v9, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    #@345
    .line 4651
    move-object/from16 v0, p1

    #@347
    iget-object v10, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@349
    move-object/from16 v5, p0

    #@34b
    move-object v7, v12

    #@34c
    .line 4649
    invoke-virtual/range {v4 .. v10}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    #@34f
    .line 4653
    move-object/from16 v0, p0

    #@351
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@353
    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@355
    if-eqz v2, :cond_12

    #@357
    move-object/from16 v0, v23

    #@359
    iget-boolean v2, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    #@35b
    if-eqz v2, :cond_15

    #@35d
    .line 4665
    .end local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "instrContext":Landroid/app/ContextImpl;
    .end local v16    # "cl":Ljava/lang/ClassLoader;
    .end local v26    # "pi":Landroid/app/LoadedApk;
    :cond_12
    :goto_9
    move-object/from16 v0, p1

    #@35f
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@361
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@363
    const/high16 v4, 0x100000

    #@365
    and-int/2addr v2, v4

    #@366
    if-eqz v2, :cond_17

    #@368
    .line 4666
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@36b
    move-result-object v2

    #@36c
    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    #@36f
    .line 4676
    :goto_a
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@372
    move-result-object v29

    #@373
    .line 4680
    .local v29, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    move-object/from16 v0, p1

    #@375
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@377
    move-object/from16 v0, p1

    #@379
    iget-boolean v4, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    #@37b
    const/4 v5, 0x0

    #@37c
    invoke-virtual {v2, v4, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    #@37f
    move-result-object v11

    #@380
    .line 4681
    .local v11, "app":Landroid/app/Application;
    move-object/from16 v0, p0

    #@382
    iput-object v11, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@384
    .line 4685
    move-object/from16 v0, p1

    #@386
    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    #@388
    if-nez v2, :cond_13

    #@38a
    .line 4686
    move-object/from16 v0, p1

    #@38c
    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    #@38e
    move-object/from16 v27, v0

    #@390
    .line 4687
    .local v27, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v27, :cond_13

    #@392
    .line 4688
    move-object/from16 v0, p0

    #@394
    move-object/from16 v1, v27

    #@396
    invoke-direct {v0, v11, v1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    #@399
    .line 4691
    move-object/from16 v0, p0

    #@39b
    iget-object v2, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@39d
    const-wide/16 v4, 0x2710

    #@39f
    const/16 v7, 0x84

    #@3a1
    invoke-virtual {v2, v7, v4, v5}, Landroid/app/ActivityThread$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@3a4
    .line 4698
    .end local v27    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :cond_13
    :try_start_6
    move-object/from16 v0, p0

    #@3a6
    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@3a8
    move-object/from16 v0, p1

    #@3aa
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    #@3ac
    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@3af
    .line 4707
    :try_start_7
    move-object/from16 v0, p0

    #@3b1
    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@3b3
    invoke-virtual {v2, v11}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@3b6
    .line 4716
    :cond_14
    invoke-static/range {v29 .. v29}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@3b9
    .line 4430
    return-void

    #@3ba
    .line 4643
    .end local v11    # "app":Landroid/app/Application;
    .end local v29    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "instrContext":Landroid/app/ContextImpl;
    .restart local v26    # "pi":Landroid/app/LoadedApk;
    :catch_0
    move-exception v20

    #@3bb
    .line 4644
    .local v20, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@3bd
    .line 4645
    new-instance v4, Ljava/lang/StringBuilder;

    #@3bf
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c2
    const-string/jumbo v5, "Unable to instantiate instrumentation "

    #@3c5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c8
    move-result-object v4

    #@3c9
    .line 4646
    move-object/from16 v0, p1

    #@3cb
    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@3cd
    .line 4645
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d0
    move-result-object v4

    #@3d1
    .line 4646
    const-string/jumbo v5, ": "

    #@3d4
    .line 4645
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d7
    move-result-object v4

    #@3d8
    .line 4646
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@3db
    move-result-object v5

    #@3dc
    .line 4645
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3df
    move-result-object v4

    #@3e0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e3
    move-result-object v4

    #@3e4
    .line 4644
    move-object/from16 v0, v20

    #@3e6
    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3e9
    throw v2

    #@3ea
    .line 4654
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v16    # "cl":Ljava/lang/ClassLoader;
    :cond_15
    move-object/from16 v0, p0

    #@3ec
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@3ee
    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@3f0
    if-nez v2, :cond_12

    #@3f2
    .line 4655
    move-object/from16 v0, p0

    #@3f4
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@3f6
    const/4 v4, 0x1

    #@3f7
    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    #@3f9
    .line 4656
    new-instance v22, Ljava/io/File;

    #@3fb
    move-object/from16 v0, p0

    #@3fd
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@3ff
    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@401
    move-object/from16 v0, v22

    #@403
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@406
    .line 4657
    .local v22, "file":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@409
    move-result-object v2

    #@40a
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    #@40d
    .line 4658
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    #@410
    move-result-object v2

    #@411
    const/high16 v4, 0x800000

    #@413
    invoke-static {v2, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    #@416
    goto/16 :goto_9

    #@418
    .line 4662
    .end local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "instrContext":Landroid/app/ContextImpl;
    .end local v16    # "cl":Ljava/lang/ClassLoader;
    .end local v22    # "file":Ljava/io/File;
    .end local v26    # "pi":Landroid/app/LoadedApk;
    :cond_16
    new-instance v2, Landroid/app/Instrumentation;

    #@41a
    invoke-direct {v2}, Landroid/app/Instrumentation;-><init>()V

    #@41d
    move-object/from16 v0, p0

    #@41f
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@421
    goto/16 :goto_9

    #@423
    .line 4670
    :cond_17
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@426
    move-result-object v2

    #@427
    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    #@42a
    goto/16 :goto_a

    #@42c
    .line 4700
    .restart local v11    # "app":Landroid/app/Application;
    .restart local v29    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catch_1
    move-exception v20

    #@42d
    .line 4701
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v2, Ljava/lang/RuntimeException;

    #@42f
    .line 4702
    new-instance v4, Ljava/lang/StringBuilder;

    #@431
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@434
    const-string/jumbo v5, "Exception thrown in onCreate() of "

    #@437
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43a
    move-result-object v4

    #@43b
    .line 4703
    move-object/from16 v0, p1

    #@43d
    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@43f
    .line 4702
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@442
    move-result-object v4

    #@443
    .line 4703
    const-string/jumbo v5, ": "

    #@446
    .line 4702
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@449
    move-result-object v4

    #@44a
    .line 4703
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@44d
    move-result-object v5

    #@44e
    .line 4702
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@451
    move-result-object v4

    #@452
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@455
    move-result-object v4

    #@456
    .line 4701
    move-object/from16 v0, v20

    #@458
    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@45b
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@45c
    .line 4715
    .end local v11    # "app":Landroid/app/Application;
    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@45d
    .line 4716
    invoke-static/range {v29 .. v29}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@460
    .line 4715
    throw v2

    #@461
    .line 4708
    .restart local v11    # "app":Landroid/app/Application;
    :catch_2
    move-exception v20

    #@462
    .line 4709
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_9
    move-object/from16 v0, p0

    #@464
    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@466
    move-object/from16 v0, v20

    #@468
    invoke-virtual {v2, v11, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@46b
    move-result v2

    #@46c
    if-nez v2, :cond_14

    #@46e
    .line 4710
    new-instance v2, Ljava/lang/RuntimeException;

    #@470
    .line 4711
    new-instance v4, Ljava/lang/StringBuilder;

    #@472
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@475
    const-string/jumbo v5, "Unable to create application "

    #@478
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47b
    move-result-object v4

    #@47c
    invoke-virtual {v11}, Landroid/app/Application;->getClass()Ljava/lang/Class;

    #@47f
    move-result-object v5

    #@480
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@483
    move-result-object v5

    #@484
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@487
    move-result-object v4

    #@488
    .line 4712
    const-string/jumbo v5, ": "

    #@48b
    .line 4711
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48e
    move-result-object v4

    #@48f
    .line 4712
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@492
    move-result-object v5

    #@493
    .line 4711
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@496
    move-result-object v4

    #@497
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49a
    move-result-object v4

    #@49b
    .line 4710
    move-object/from16 v0, v20

    #@49d
    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4a0
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@4a1
    .line 4611
    .end local v11    # "app":Landroid/app/Application;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v29    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v23    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_3
    move-exception v18

    #@4a2
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_8

    #@4a4
    .line 4603
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v23    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v30    # "service":Landroid/net/IConnectivityManager;
    :catch_4
    move-exception v19

    #@4a5
    .local v19, "e":Landroid/os/RemoteException;
    goto/16 :goto_7

    #@4a7
    .line 4573
    .end local v13    # "appTracingAllowed":Z
    .end local v14    # "b":Landroid/os/IBinder;
    .end local v19    # "e":Landroid/os/RemoteException;
    .end local v30    # "service":Landroid/net/IConnectivityManager;
    .restart local v25    # "mgr":Landroid/app/IActivityManager;
    :catch_5
    move-exception v21

    #@4a8
    .local v21, "ex":Landroid/os/RemoteException;
    goto/16 :goto_5

    #@4aa
    .line 4566
    .end local v21    # "ex":Landroid/os/RemoteException;
    :catch_6
    move-exception v21

    #@4ab
    .restart local v21    # "ex":Landroid/os/RemoteException;
    goto/16 :goto_4
.end method

.method private handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 9
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    #@0
    .prologue
    .line 2895
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    #@2
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@4
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Landroid/app/Service;

    #@a
    .line 2898
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_0

    #@c
    .line 2900
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@e
    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@15
    .line 2901
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@17
    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@1a
    .line 2903
    :try_start_1
    iget-boolean v4, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    #@1c
    if-nez v4, :cond_1

    #@1e
    .line 2904
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@20
    invoke-virtual {v3, v4}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    .line 2905
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@27
    move-result-object v4

    #@28
    .line 2906
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@2a
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@2c
    .line 2905
    invoke-interface {v4, v5, v6, v0}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    #@2f
    .line 2912
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    #@32
    .line 2894
    :cond_0
    :goto_1
    return-void

    #@33
    .line 2908
    :cond_1
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@35
    invoke-virtual {v3, v4}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    #@38
    .line 2909
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3b
    move-result-object v4

    #@3c
    .line 2910
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@3e
    const/4 v6, 0x0

    #@3f
    const/4 v7, 0x0

    #@40
    const/4 v8, 0x0

    #@41
    .line 2909
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@44
    goto :goto_0

    #@45
    .line 2913
    :catch_0
    move-exception v2

    #@46
    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_1

    #@47
    .line 2915
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@48
    .line 2916
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@4a
    invoke-virtual {v4, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@4d
    move-result v4

    #@4e
    if-nez v4, :cond_0

    #@50
    .line 2917
    new-instance v4, Ljava/lang/RuntimeException;

    #@52
    .line 2918
    new-instance v5, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v6, "Unable to bind to service "

    #@5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    .line 2919
    const-string/jumbo v6, " with "

    #@65
    .line 2918
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    .line 2919
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@6b
    .line 2918
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    .line 2919
    const-string/jumbo v6, ": "

    #@72
    .line 2918
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    .line 2919
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    .line 2918
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    .line 2917
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@85
    throw v4
.end method

.method private handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 15
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    #@0
    .prologue
    .line 2751
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v11

    #@4
    .line 2752
    move-object/from16 v0, p1

    #@6
    iget-object v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@d
    move-result v13

    #@e
    const/4 v14, 0x0

    #@f
    .line 2751
    invoke-interface {v11, v12, v14, v13}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@12
    move-result-object v10

    #@13
    .line 2753
    .local v10, "requestedPackage":Landroid/content/pm/PackageInfo;
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@15
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    #@17
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@1a
    move-result v12

    #@1b
    if-eq v11, v12, :cond_0

    #@1d
    .line 2754
    const-string/jumbo v11, "ActivityThread"

    #@20
    new-instance v12, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v13, "Asked to instantiate non-matching package "

    #@28
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v12

    #@2c
    .line 2755
    move-object/from16 v0, p1

    #@2e
    iget-object v13, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@30
    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@32
    .line 2754
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v12

    #@36
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v12

    #@3a
    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 2756
    return-void

    #@3e
    .line 2758
    .end local v10    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    #@3f
    .line 2759
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "ActivityThread"

    #@42
    const-string/jumbo v12, "Can\'t reach package manager"

    #@45
    invoke-static {v11, v12, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    .line 2760
    return-void

    #@49
    .line 2764
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v10    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@4c
    .line 2767
    move-object/from16 v0, p1

    #@4e
    iget-object v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@50
    move-object/from16 v0, p1

    #@52
    iget-object v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@54
    invoke-virtual {p0, v11, v12}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@57
    move-result-object v8

    #@58
    .line 2768
    .local v8, "packageInfo":Landroid/app/LoadedApk;
    iget-object v9, v8, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@5a
    .line 2769
    .local v9, "packageName":Ljava/lang/String;
    if-nez v9, :cond_1

    #@5c
    .line 2770
    const-string/jumbo v11, "ActivityThread"

    #@5f
    const-string/jumbo v12, "Asked to create backup agent for nonexistent package"

    #@62
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 2771
    return-void

    #@66
    .line 2774
    :cond_1
    move-object/from16 v0, p1

    #@68
    iget-object v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@6a
    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@6c
    .line 2776
    .local v4, "classname":Ljava/lang/String;
    if-nez v4, :cond_3

    #@6e
    move-object/from16 v0, p1

    #@70
    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    #@72
    const/4 v12, 0x1

    #@73
    if-eq v11, v12, :cond_2

    #@75
    .line 2777
    move-object/from16 v0, p1

    #@77
    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    #@79
    const/4 v12, 0x3

    #@7a
    if-ne v11, v12, :cond_3

    #@7c
    .line 2778
    :cond_2
    const-string/jumbo v4, "android.app.backup.FullBackupAgent"

    #@7f
    .line 2782
    :cond_3
    const/4 v2, 0x0

    #@80
    .line 2783
    .local v2, "binder":Landroid/os/IBinder;
    :try_start_1
    iget-object v11, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    #@82
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    move-result-object v1

    #@86
    check-cast v1, Landroid/app/backup/BackupAgent;

    #@88
    .line 2784
    .local v1, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v1, :cond_5

    #@8a
    .line 2789
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@8d
    move-result-object v2

    #@8e
    .line 2819
    .end local v2    # "binder":Landroid/os/IBinder;
    :cond_4
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@91
    move-result-object v11

    #@92
    invoke-interface {v11, v9, v2}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@95
    .line 2746
    :goto_1
    return-void

    #@96
    .line 2794
    .restart local v2    # "binder":Landroid/os/IBinder;
    :cond_5
    :try_start_3
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@99
    move-result-object v3

    #@9a
    .line 2795
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@9d
    move-result-object v11

    #@9e
    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@a1
    move-result-object v11

    #@a2
    move-object v0, v11

    #@a3
    check-cast v0, Landroid/app/backup/BackupAgent;

    #@a5
    move-object v1, v0

    #@a6
    .line 2798
    invoke-static {p0, v8}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    #@a9
    move-result-object v5

    #@aa
    .line 2799
    .local v5, "context":Landroid/app/ContextImpl;
    invoke-virtual {v5, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    #@ad
    .line 2800
    invoke-virtual {v1, v5}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    #@b0
    .line 2802
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onCreate()V

    #@b3
    .line 2803
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    #@b6
    move-result-object v2

    #@b7
    .line 2804
    .local v2, "binder":Landroid/os/IBinder;
    iget-object v11, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    #@b9
    invoke-virtual {v11, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@bc
    goto :goto_0

    #@bd
    .line 2805
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "context":Landroid/app/ContextImpl;
    :catch_1
    move-exception v7

    #@be
    .line 2808
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v11, "ActivityThread"

    #@c1
    new-instance v12, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v13, "Agent threw during creation: "

    #@c9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v12

    #@cd
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v12

    #@d1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v12

    #@d5
    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d8
    .line 2809
    move-object/from16 v0, p1

    #@da
    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    #@dc
    const/4 v12, 0x2

    #@dd
    if-eq v11, v12, :cond_4

    #@df
    .line 2810
    move-object/from16 v0, p1

    #@e1
    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    #@e3
    const/4 v12, 0x3

    #@e4
    if-eq v11, v12, :cond_4

    #@e6
    .line 2811
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    #@e7
    .line 2823
    .end local v1    # "agent":Landroid/app/backup/BackupAgent;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    #@e8
    .line 2824
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/RuntimeException;

    #@ea
    new-instance v12, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v13, "Unable to create BackupAgent "

    #@f2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v12

    #@f6
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v12

    #@fa
    .line 2825
    const-string/jumbo v13, ": "

    #@fd
    .line 2824
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v12

    #@101
    .line 2825
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@104
    move-result-object v13

    #@105
    .line 2824
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v12

    #@109
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c
    move-result-object v12

    #@10d
    invoke-direct {v11, v12, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@110
    throw v11

    #@111
    .line 2820
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "agent":Landroid/app/backup/BackupAgent;
    :catch_3
    move-exception v6

    #@112
    .restart local v6    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 13
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    #@0
    .prologue
    .line 2852
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@3
    .line 2855
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    #@5
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@9
    .line 2854
    invoke-virtual {p0, v3, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@c
    move-result-object v11

    #@d
    .line 2856
    .local v11, "packageInfo":Landroid/app/LoadedApk;
    const/4 v1, 0x0

    #@e
    .line 2858
    .local v1, "service":Landroid/app/Service;
    :try_start_0
    invoke-virtual {v11}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@11
    move-result-object v8

    #@12
    .line 2859
    .local v8, "cl":Ljava/lang/ClassLoader;
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    #@14
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@16
    invoke-virtual {v8, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    move-object v0, v3

    #@1f
    check-cast v0, Landroid/app/Service;

    #@21
    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 2871
    .end local v1    # "service":Landroid/app/Service;
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    :try_start_1
    invoke-static {p0, v11}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    #@25
    move-result-object v2

    #@26
    .line 2872
    .local v2, "context":Landroid/app/ContextImpl;
    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    #@29
    .line 2874
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@2b
    const/4 v4, 0x0

    #@2c
    invoke-virtual {v11, v4, v3}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    #@2f
    move-result-object v6

    #@30
    .line 2875
    .local v6, "app":Landroid/app/Application;
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    #@32
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@34
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    #@36
    .line 2876
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@39
    move-result-object v7

    #@3a
    move-object v3, p0

    #@3b
    .line 2875
    invoke-virtual/range {v1 .. v7}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    #@3e
    .line 2877
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    #@41
    .line 2878
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    #@43
    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    #@45
    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@48
    .line 2880
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4b
    move-result-object v3

    #@4c
    .line 2881
    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    #@4e
    const/4 v5, 0x0

    #@4f
    const/4 v7, 0x0

    #@50
    const/4 v12, 0x0

    #@51
    .line 2880
    invoke-interface {v3, v4, v5, v7, v12}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@54
    .line 2849
    .end local v2    # "context":Landroid/app/ContextImpl;
    .end local v6    # "app":Landroid/app/Application;
    :cond_1
    :goto_0
    return-void

    #@55
    .line 2860
    .restart local v1    # "service":Landroid/app/Service;
    :catch_0
    move-exception v10

    #@56
    .line 2861
    .local v10, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@58
    invoke-virtual {v3, v1, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@5b
    move-result v3

    #@5c
    if-nez v3, :cond_0

    #@5e
    .line 2862
    new-instance v3, Ljava/lang/RuntimeException;

    #@60
    .line 2863
    new-instance v4, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v5, "Unable to instantiate service "

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    #@6e
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    .line 2864
    const-string/jumbo v5, ": "

    #@77
    .line 2863
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    .line 2864
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    .line 2863
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    .line 2862
    invoke-direct {v3, v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8a
    throw v3

    #@8b
    .line 2885
    .end local v1    # "service":Landroid/app/Service;
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    #@8c
    .line 2886
    .restart local v10    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@8e
    invoke-virtual {v3, v1, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@91
    move-result v3

    #@92
    if-nez v3, :cond_1

    #@94
    .line 2887
    new-instance v3, Ljava/lang/RuntimeException;

    #@96
    .line 2888
    new-instance v4, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v5, "Unable to create service "

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    #@a4
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@a6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    .line 2889
    const-string/jumbo v5, ": "

    #@ad
    .line 2888
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    .line 2889
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@b4
    move-result-object v5

    #@b5
    .line 2888
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v4

    #@b9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v4

    #@bd
    .line 2887
    invoke-direct {v3, v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c0
    throw v3

    #@c1
    .line 2882
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v2    # "context":Landroid/app/ContextImpl;
    .restart local v6    # "app":Landroid/app/Application;
    :catch_2
    move-exception v9

    #@c2
    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 3849
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    #@4
    move-result-object v2

    #@5
    .line 3851
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_5

    #@7
    .line 3852
    invoke-static {v2}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@a
    .line 3853
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@f
    move-result-object v4

    #@10
    .line 3854
    .local v4, "wm":Landroid/view/WindowManager;
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@12
    iget-object v3, v6, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@14
    .line 3855
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_3

    #@16
    .line 3856
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@18
    iget-boolean v6, v6, Landroid/app/Activity;->mVisibleFromServer:Z

    #@1a
    if-eqz v6, :cond_0

    #@1c
    .line 3857
    iget v6, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@1e
    add-int/lit8 v6, v6, -0x1

    #@20
    iput v6, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@22
    .line 3859
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@25
    move-result-object v5

    #@26
    .line 3860
    .local v5, "wtoken":Landroid/os/IBinder;
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@28
    iget-boolean v6, v6, Landroid/app/Activity;->mWindowAdded:Z

    #@2a
    if-eqz v6, :cond_1

    #@2c
    .line 3861
    iget-boolean v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@2e
    if-eqz v6, :cond_7

    #@30
    .line 3864
    iput-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    #@32
    .line 3865
    iput-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    #@34
    .line 3870
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    #@36
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    #@38
    if-nez v6, :cond_2

    #@3a
    .line 3871
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@3d
    move-result-object v6

    #@3e
    .line 3872
    iget-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@40
    invoke-virtual {v7}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@47
    move-result-object v7

    #@48
    const-string/jumbo v8, "Activity"

    #@4b
    .line 3871
    invoke-virtual {v6, v5, v7, v8}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 3874
    :cond_2
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@50
    iput-object v9, v6, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@52
    .line 3876
    .end local v5    # "wtoken":Landroid/os/IBinder;
    :cond_3
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    #@54
    if-nez v6, :cond_4

    #@56
    .line 3883
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@59
    move-result-object v6

    #@5a
    .line 3884
    iget-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@5c
    invoke-virtual {v7}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@63
    move-result-object v7

    #@64
    const-string/jumbo v8, "Activity"

    #@67
    .line 3883
    invoke-virtual {v6, p1, v7, v8}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    #@6a
    .line 3891
    :cond_4
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@6c
    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    #@6f
    move-result-object v0

    #@70
    .line 3892
    .local v0, "c":Landroid/content/Context;
    instance-of v6, v0, Landroid/app/ContextImpl;

    #@72
    if-eqz v6, :cond_5

    #@74
    .line 3893
    check-cast v0, Landroid/app/ContextImpl;

    #@76
    .line 3894
    .end local v0    # "c":Landroid/content/Context;
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@78
    invoke-virtual {v6}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    const-string/jumbo v7, "Activity"

    #@83
    .line 3893
    invoke-virtual {v0, v6, v7}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    #@86
    .line 3897
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "wm":Landroid/view/WindowManager;
    :cond_5
    if-eqz p2, :cond_6

    #@88
    .line 3899
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@8b
    move-result-object v6

    #@8c
    invoke-interface {v6, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8f
    .line 3904
    :cond_6
    :goto_1
    const/4 v6, 0x1

    #@90
    iput-boolean v6, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@92
    .line 3848
    return-void

    #@93
    .line 3867
    .restart local v3    # "v":Landroid/view/View;
    .restart local v4    # "wm":Landroid/view/WindowManager;
    .restart local v5    # "wtoken":Landroid/os/IBinder;
    :cond_7
    invoke-interface {v4, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@96
    goto :goto_0

    #@97
    .line 3900
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "wm":Landroid/view/WindowManager;
    .end local v5    # "wtoken":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    #@98
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 7
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    #@0
    .prologue
    .line 2833
    iget-object v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    iget-object v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@4
    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@7
    move-result-object v2

    #@8
    .line 2834
    .local v2, "packageInfo":Landroid/app/LoadedApk;
    iget-object v3, v2, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@a
    .line 2835
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/app/backup/BackupAgent;

    #@12
    .line 2836
    .local v0, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v0, :cond_0

    #@14
    .line 2838
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 2843
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 2830
    :goto_1
    return-void

    #@1d
    .line 2839
    :catch_0
    move-exception v1

    #@1e
    .line 2840
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ActivityThread"

    #@21
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v6, "Exception thrown in onDestroy by backup agent of "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    iget-object v6, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 2841
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@3d
    goto :goto_0

    #@3e
    .line 2845
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v4, "ActivityThread"

    #@41
    new-instance v5, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v6, "Attempt to destroy unknown backup agent "

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    goto :goto_1
.end method

.method private handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    #@0
    .prologue
    .line 2969
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v0

    #@4
    .line 2971
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@6
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    #@8
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    #@e
    .line 2972
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_0

    #@10
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 2973
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@16
    new-instance v3, Ljava/io/FileOutputStream;

    #@18
    .line 2974
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@1a
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1d
    move-result-object v4

    #@1e
    .line 2973
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@21
    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@24
    .line 2975
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@26
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    #@28
    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@2a
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@2d
    move-result-object v5

    #@2e
    iget-object v6, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    #@30
    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@33
    .line 2976
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 2979
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@38
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3b
    .line 2980
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@3e
    .line 2968
    return-void

    #@3f
    .line 2978
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v3

    #@40
    .line 2979
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@42
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    .line 2980
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@48
    .line 2978
    throw v3
.end method

.method static final handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V
    .locals 5
    .param p0, "managed"    # Z
    .param p1, "dhd"    # Landroid/app/ActivityThread$DumpHeapData;

    #@0
    .prologue
    .line 4313
    if-eqz p0, :cond_0

    #@2
    .line 4315
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    #@4
    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@9
    move-result-object v3

    #@a
    invoke-static {v2, v3}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 4321
    :try_start_1
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    #@f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@12
    .line 4330
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    #@18
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    #@1b
    .line 4312
    :goto_1
    return-void

    #@1c
    .line 4322
    :catch_0
    move-exception v1

    #@1d
    .line 4323
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    #@20
    const-string/jumbo v3, "Failure closing profile fd"

    #@23
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0

    #@27
    .line 4316
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@28
    .line 4317
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "ActivityThread"

    #@2b
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v4, "Managed heap dump failed on path "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    iget-object v4, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 4318
    const-string/jumbo v4, " -- can the process access this path?"

    #@40
    .line 4317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4b
    .line 4321
    :try_start_4
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    #@4d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@50
    goto :goto_0

    #@51
    .line 4322
    :catch_2
    move-exception v1

    #@52
    .line 4323
    const-string/jumbo v2, "ActivityThread"

    #@55
    const-string/jumbo v3, "Failure closing profile fd"

    #@58
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    goto :goto_0

    #@5c
    .line 4319
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@5d
    .line 4321
    :try_start_5
    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    #@5f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@62
    .line 4319
    :goto_2
    throw v2

    #@63
    .line 4322
    :catch_3
    move-exception v1

    #@64
    .line 4323
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "ActivityThread"

    #@67
    const-string/jumbo v4, "Failure closing profile fd"

    #@6a
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    goto :goto_2

    #@6e
    .line 4327
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    #@70
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@73
    move-result-object v2

    #@74
    invoke-static {v2}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    #@77
    goto :goto_0

    #@78
    .line 4331
    :catch_4
    move-exception v0

    #@79
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    #@0
    .prologue
    .line 2985
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v0

    #@4
    .line 2987
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    #@6
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    #@8
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    #@e
    .line 2988
    .local v2, "r":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_0

    #@10
    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 2989
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@16
    new-instance v3, Ljava/io/FileOutputStream;

    #@18
    .line 2990
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@1a
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1d
    move-result-object v4

    #@1e
    .line 2989
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@21
    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@24
    .line 2991
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    #@26
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@28
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@2b
    move-result-object v4

    #@2c
    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    #@2e
    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@31
    .line 2992
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 2995
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@36
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@39
    .line 2996
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@3c
    .line 2984
    return-void

    #@3d
    .line 2994
    .end local v2    # "r":Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v3

    #@3e
    .line 2995
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@40
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@43
    .line 2996
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@46
    .line 2994
    throw v3
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    #@0
    .prologue
    .line 2953
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v0

    #@4
    .line 2955
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    #@6
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    #@8
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/app/Service;

    #@e
    .line 2956
    .local v2, "s":Landroid/app/Service;
    if-eqz v2, :cond_0

    #@10
    .line 2957
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@12
    new-instance v3, Ljava/io/FileOutputStream;

    #@14
    .line 2958
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@16
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@19
    move-result-object v4

    #@1a
    .line 2957
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@1d
    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@20
    .line 2959
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@22
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@25
    move-result-object v3

    #@26
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    #@28
    invoke-virtual {v2, v3, v1, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@2b
    .line 2960
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 2963
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@30
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@33
    .line 2964
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@36
    .line 2952
    return-void

    #@37
    .line 2962
    .end local v2    # "s":Landroid/app/Service;
    :catchall_0
    move-exception v3

    #@38
    .line 2963
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@3a
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3d
    .line 2964
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@40
    .line 2962
    throw v3
.end method

.method private handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2666
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 2667
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@a
    .line 2668
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    #@f
    .line 2665
    :cond_0
    return-void
.end method

.method private handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 2459
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@6
    .line 2460
    iput-boolean v7, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@8
    .line 2462
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 2463
    iget-object v5, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@e
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    #@10
    invoke-virtual {v5, v8}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    #@13
    .line 2464
    iget-object v5, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@15
    invoke-virtual {v5}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    #@18
    .line 2468
    :cond_0
    invoke-virtual {p0, v9, v9}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@1b
    .line 2474
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    #@1e
    .line 2476
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    #@21
    move-result-object v0

    #@22
    .line 2478
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_6

    #@24
    .line 2479
    new-instance v5, Landroid/content/res/Configuration;

    #@26
    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@28
    invoke-direct {v5, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@2b
    iput-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@2d
    .line 2480
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@2f
    .line 2481
    .local v4, "oldState":Landroid/os/Bundle;
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@31
    iget-boolean v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    #@33
    .line 2482
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@35
    iget-boolean v5, v5, Landroid/app/Activity;->mFinished:Z

    #@37
    if-nez v5, :cond_1

    #@39
    iget-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@3b
    if-eqz v5, :cond_3

    #@3d
    :cond_1
    move v5, v6

    #@3e
    .line 2481
    :goto_0
    invoke-virtual {p0, v8, v6, v9, v5}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZ)V

    #@41
    .line 2484
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@43
    iget-boolean v5, v5, Landroid/app/Activity;->mFinished:Z

    #@45
    if-nez v5, :cond_5

    #@47
    iget-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@49
    if-eqz v5, :cond_5

    #@4b
    .line 2495
    :try_start_0
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@4d
    const/4 v6, 0x0

    #@4e
    iput-boolean v6, v5, Landroid/app/Activity;->mCalled:Z

    #@50
    .line 2496
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@52
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@54
    invoke-virtual {v5, v6}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    #@57
    .line 2504
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@5a
    move-result v5

    #@5b
    if-eqz v5, :cond_2

    #@5d
    .line 2505
    iput-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@5f
    .line 2507
    :cond_2
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@61
    iget-boolean v5, v5, Landroid/app/Activity;->mCalled:Z

    #@63
    if-nez v5, :cond_4

    #@65
    .line 2508
    new-instance v5, Landroid/util/SuperNotCalledException;

    #@67
    .line 2509
    new-instance v6, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v8, "Activity "

    #@6f
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@75
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@78
    move-result-object v8

    #@79
    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    .line 2510
    const-string/jumbo v8, " did not call through to super.onPause()"

    #@84
    .line 2509
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v6

    #@8c
    .line 2508
    invoke-direct {v5, v6}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v5
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@90
    .line 2513
    :catch_0
    move-exception v1

    #@91
    .line 2514
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    #@92
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :cond_3
    move v5, v7

    #@93
    .line 2482
    goto :goto_0

    #@94
    .line 2516
    :catch_1
    move-exception v2

    #@95
    .line 2517
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@97
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@99
    invoke-virtual {v5, v6, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@9c
    move-result v5

    #@9d
    if-nez v5, :cond_4

    #@9f
    .line 2518
    new-instance v5, Ljava/lang/RuntimeException;

    #@a1
    .line 2519
    new-instance v6, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v7, "Unable to pause activity "

    #@a9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v6

    #@ad
    .line 2520
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@af
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@b2
    move-result-object v7

    #@b3
    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@b6
    move-result-object v7

    #@b7
    .line 2519
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v6

    #@bb
    .line 2521
    const-string/jumbo v7, ": "

    #@be
    .line 2519
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v6

    #@c2
    .line 2521
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@c5
    move-result-object v7

    #@c6
    .line 2519
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v6

    #@ca
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v6

    #@ce
    .line 2518
    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d1
    throw v5

    #@d2
    .line 2524
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    iput-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@d4
    .line 2456
    .end local v4    # "oldState":Landroid/os/Bundle;
    :cond_5
    :goto_1
    return-void

    #@d5
    .line 2530
    :cond_6
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@d8
    move-result-object v5

    #@d9
    .line 2531
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@db
    const/4 v7, 0x0

    #@dc
    const/4 v8, 0x0

    #@dd
    const/4 v9, 0x0

    #@de
    .line 2530
    invoke-interface {v5, v6, v7, v8, v9}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@e1
    goto :goto_1

    #@e2
    .line 2532
    :catch_2
    move-exception v3

    #@e3
    .local v3, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    .locals 2
    .param p1, "data"    # Landroid/app/ActivityThread$NewIntentData;

    #@0
    .prologue
    .line 2566
    iget-object v0, p1, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    #@2
    iget-object v1, p1, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    #@7
    .line 2565
    return-void
.end method

.method private handlePauseActivity(Landroid/os/IBinder;ZZIZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z

    #@0
    .prologue
    .line 3307
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 3308
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_3

    #@a
    .line 3310
    if-eqz p3, :cond_0

    #@c
    .line 3311
    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@f
    .line 3314
    :cond_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@11
    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    #@13
    or-int/2addr v3, p4

    #@14
    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    #@16
    .line 3315
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@19
    move-result v2

    #@1a
    invoke-virtual {p0, p1, p2, v2}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    #@1d
    .line 3318
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 3319
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    #@26
    .line 3323
    :cond_1
    if-nez p5, :cond_2

    #@28
    .line 3325
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 3329
    :cond_2
    :goto_0
    const/4 v2, 0x1

    #@30
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@32
    .line 3306
    :cond_3
    return-void

    #@33
    .line 3326
    :catch_0
    move-exception v0

    #@34
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 12
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 2686
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@4
    .line 2688
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    #@6
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@9
    move-result-object v8

    #@a
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 2691
    .local v2, "component":Ljava/lang/String;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    #@10
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@14
    .line 2690
    invoke-virtual {p0, v8, v9}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@17
    move-result-object v6

    #@18
    .line 2693
    .local v6, "packageInfo":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1b
    move-result-object v5

    #@1c
    .line 2697
    .local v5, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    invoke-virtual {v6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@1f
    move-result-object v1

    #@20
    .line 2698
    .local v1, "cl":Ljava/lang/ClassLoader;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    #@22
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@25
    .line 2699
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    #@27
    invoke-virtual {v8}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@2a
    .line 2700
    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@2d
    .line 2701
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@34
    move-result-object v7

    #@35
    check-cast v7, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 2712
    .local v7, "receiver":Landroid/content/BroadcastReceiver;
    :try_start_1
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@39
    const/4 v9, 0x0

    #@3a
    invoke-virtual {v6, v9, v8}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    #@3d
    move-result-object v0

    #@3e
    .line 2722
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Landroid/app/ContextImpl;

    #@44
    .line 2723
    .local v3, "context":Landroid/app/ContextImpl;
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    #@46
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    #@48
    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@4b
    .line 2724
    invoke-virtual {v7, p1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    #@4e
    .line 2725
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    #@51
    move-result-object v8

    #@52
    .line 2726
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    #@54
    .line 2725
    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 2737
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    #@59
    invoke-virtual {v8, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@5c
    .line 2740
    .end local v0    # "app":Landroid/app/Application;
    .end local v3    # "context":Landroid/app/ContextImpl;
    :goto_0
    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    #@5f
    move-result-object v8

    #@60
    if-eqz v8, :cond_0

    #@62
    .line 2741
    invoke-virtual {p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    #@65
    .line 2683
    :cond_0
    return-void

    #@66
    .line 2702
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v7    # "receiver":Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v4

    #@67
    .line 2705
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    #@6a
    .line 2706
    new-instance v8, Ljava/lang/RuntimeException;

    #@6c
    .line 2707
    new-instance v9, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v10, "Unable to instantiate receiver "

    #@74
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v9

    #@78
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v9

    #@7c
    .line 2708
    const-string/jumbo v10, ": "

    #@7f
    .line 2707
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v9

    #@83
    .line 2708
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@86
    move-result-object v10

    #@87
    .line 2707
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v9

    #@8b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v9

    #@8f
    .line 2706
    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@92
    throw v8

    #@93
    .line 2727
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "cl":Ljava/lang/ClassLoader;
    .restart local v7    # "receiver":Landroid/content/BroadcastReceiver;
    :catch_1
    move-exception v4

    #@94
    .line 2730
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    #@97
    .line 2731
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@99
    invoke-virtual {v8, v7, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@9c
    move-result v8

    #@9d
    if-nez v8, :cond_1

    #@9f
    .line 2732
    new-instance v8, Ljava/lang/RuntimeException;

    #@a1
    .line 2733
    new-instance v9, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v10, "Unable to start receiver "

    #@a9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v9

    #@ad
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v9

    #@b1
    .line 2734
    const-string/jumbo v10, ": "

    #@b4
    .line 2733
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v9

    #@b8
    .line 2734
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@bb
    move-result-object v10

    #@bc
    .line 2733
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v9

    #@c0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v9

    #@c4
    .line 2732
    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c7
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c8
    .line 2736
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@c9
    .line 2737
    sget-object v9, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    #@cb
    invoke-virtual {v9, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@ce
    .line 2736
    throw v8

    #@cf
    .line 2737
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    #@d1
    invoke-virtual {v8, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@d4
    goto :goto_0
.end method

.method private handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 12
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v9, 0x0

    #@3
    .line 3970
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@6
    .line 3971
    iput-boolean v11, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@8
    .line 3973
    const/4 v1, 0x0

    #@9
    .line 3974
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    #@a
    .line 3979
    .local v2, "configChanges":I
    iget-object v8, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@c
    monitor-enter v8

    #@d
    .line 3980
    :try_start_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v0

    #@13
    .line 3981
    .local v0, "N":I
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@15
    .line 3982
    .local v6, "token":Landroid/os/IBinder;
    const/4 p1, 0x0

    #@16
    .line 3983
    .local p1, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v4, 0x0

    #@17
    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@19
    .line 3984
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    #@21
    .line 3985
    .local v5, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@23
    if-ne v7, v6, :cond_0

    #@25
    .line 3986
    move-object p1, v5

    #@26
    .line 3987
    .local p1, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    iget v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    #@28
    or-int/2addr v2, v7

    #@29
    .line 3988
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 3989
    add-int/lit8 v4, v4, -0x1

    #@30
    .line 3990
    add-int/lit8 v0, v0, -0x1

    #@32
    .line 3983
    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@34
    goto :goto_0

    #@35
    .line 3994
    .end local v5    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    if-nez p1, :cond_2

    #@37
    monitor-exit v8

    #@38
    .line 3996
    return-void

    #@39
    .line 4003
    :cond_2
    :try_start_1
    iget-object v7, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@3b
    if-eqz v7, :cond_3

    #@3d
    .line 4004
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@3f
    .line 4005
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v7, 0x0

    #@40
    iput-object v7, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    .end local v1    # "changedConfig":Landroid/content/res/Configuration;
    :cond_3
    monitor-exit v8

    #@43
    .line 4009
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@45
    if-eqz v7, :cond_6

    #@47
    .line 4013
    iget-object v7, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@49
    if-eqz v7, :cond_4

    #@4b
    .line 4014
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@4d
    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@4f
    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@52
    move-result v7

    #@53
    if-eqz v7, :cond_6

    #@55
    .line 4015
    iget-object v7, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@57
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@59
    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@5c
    move-result v7

    #@5d
    if-eqz v7, :cond_6

    #@5f
    .line 4016
    :cond_4
    if-eqz v1, :cond_5

    #@61
    .line 4017
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@63
    invoke-virtual {v7, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@66
    move-result v7

    #@67
    .line 4016
    if-eqz v7, :cond_6

    #@69
    .line 4018
    :cond_5
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@6b
    .line 4027
    :cond_6
    if-eqz v1, :cond_7

    #@6d
    .line 4028
    iget v7, v1, Landroid/content/res/Configuration;->densityDpi:I

    #@6f
    iput v7, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@71
    .line 4029
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    #@74
    .line 4030
    invoke-virtual {p0, v1, v9}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@77
    .line 4033
    :cond_7
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@79
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@7b
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v5

    #@7f
    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    #@81
    .line 4035
    .restart local v5    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v5, :cond_8

    #@83
    .line 4036
    return-void

    #@84
    .line 3979
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v5    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v6    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v7

    #@85
    monitor-exit v8

    #@86
    throw v7

    #@87
    .line 4039
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v5    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v6    # "token":Landroid/os/IBinder;
    :cond_8
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@89
    iget v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    #@8b
    or-int/2addr v8, v2

    #@8c
    iput v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    #@8e
    .line 4040
    iget-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@90
    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@92
    .line 4041
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@94
    iget-object v3, v7, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    #@96
    .line 4043
    .local v3, "currentIntent":Landroid/content/Intent;
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@98
    iput-boolean v11, v7, Landroid/app/Activity;->mChangingConfigurations:Z

    #@9a
    .line 4046
    iget-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@9c
    if-nez v7, :cond_9

    #@9e
    .line 4047
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@a0
    invoke-virtual {v5}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@a3
    move-result v8

    #@a4
    invoke-virtual {p0, v7, v10, v8}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    #@a7
    .line 4049
    :cond_9
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@a9
    if-nez v7, :cond_a

    #@ab
    iget-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@ad
    if-eqz v7, :cond_d

    #@af
    .line 4053
    :cond_a
    :goto_1
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@b1
    invoke-direct {p0, v7, v10, v2, v11}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    #@b4
    .line 4055
    iput-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@b6
    .line 4056
    iput-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@b8
    .line 4057
    iput-boolean v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    #@ba
    .line 4058
    iput-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    #@bc
    .line 4060
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@be
    if-eqz v7, :cond_b

    #@c0
    .line 4061
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@c2
    if-nez v7, :cond_e

    #@c4
    .line 4062
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@c6
    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@c8
    .line 4067
    :cond_b
    :goto_2
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@ca
    if-eqz v7, :cond_c

    #@cc
    .line 4068
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@ce
    if-nez v7, :cond_f

    #@d0
    .line 4069
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@d2
    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@d4
    .line 4074
    :cond_c
    :goto_3
    iget-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@d6
    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@d8
    .line 4075
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@da
    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@dc
    .line 4077
    invoke-direct {p0, v5, v3}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    #@df
    .line 3967
    return-void

    #@e0
    .line 4049
    :cond_d
    invoke-virtual {v5}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@e3
    move-result v7

    #@e4
    if-nez v7, :cond_a

    #@e6
    .line 4050
    invoke-direct {p0, v5}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@e9
    goto :goto_1

    #@ea
    .line 4064
    :cond_e
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@ec
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@ee
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@f1
    goto :goto_2

    #@f2
    .line 4071
    :cond_f
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@f4
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@f6
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@f9
    goto :goto_3
.end method

.method private handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    .locals 8
    .param p1, "res"    # Landroid/app/ActivityThread$ResultData;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 3709
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@4
    iget-object v5, p1, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    #@6
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    #@c
    .line 3711
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_3

    #@e
    .line 3712
    iget-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@10
    if-eqz v4, :cond_1

    #@12
    const/4 v3, 0x0

    #@13
    .line 3713
    .local v3, "resumed":Z
    :goto_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@15
    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    #@17
    if-nez v4, :cond_0

    #@19
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1b
    iget-object v4, v4, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 3714
    iget-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    #@21
    .line 3713
    if-eqz v4, :cond_0

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 3718
    invoke-direct {p0, v2, v6}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    #@28
    .line 3720
    :cond_0
    if-eqz v3, :cond_2

    #@2a
    .line 3723
    :try_start_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@2c
    const/4 v5, 0x0

    #@2d
    iput-boolean v5, v4, Landroid/app/Activity;->mCalled:Z

    #@2f
    .line 3724
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@31
    const/4 v5, 0x1

    #@32
    iput-boolean v5, v4, Landroid/app/Activity;->mTemporaryPause:Z

    #@34
    .line 3725
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@36
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@38
    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    #@3b
    .line 3726
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@3d
    iget-boolean v4, v4, Landroid/app/Activity;->mCalled:Z

    #@3f
    if-nez v4, :cond_2

    #@41
    .line 3727
    new-instance v4, Landroid/util/SuperNotCalledException;

    #@43
    .line 3728
    new-instance v5, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v6, "Activity "

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@51
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    .line 3729
    const-string/jumbo v6, " did not call through to super.onPause()"

    #@60
    .line 3728
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    .line 3727
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v4
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@6c
    .line 3731
    :catch_0
    move-exception v0

    #@6d
    .line 3732
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0

    #@6e
    .line 3712
    .end local v0    # "e":Landroid/util/SuperNotCalledException;
    .end local v3    # "resumed":Z
    :cond_1
    const/4 v3, 0x1

    #@6f
    .restart local v3    # "resumed":Z
    goto :goto_0

    #@70
    .line 3733
    :catch_1
    move-exception v1

    #@71
    .line 3734
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@73
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@75
    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@78
    move-result v4

    #@79
    if-nez v4, :cond_2

    #@7b
    .line 3735
    new-instance v4, Ljava/lang/RuntimeException;

    #@7d
    .line 3736
    new-instance v5, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v6, "Unable to pause activity "

    #@85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    .line 3737
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@8b
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    .line 3736
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    .line 3738
    const-string/jumbo v6, ": "

    #@9a
    .line 3736
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    .line 3738
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@a1
    move-result-object v6

    #@a2
    .line 3736
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v5

    #@a6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v5

    #@aa
    .line 3735
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ad
    throw v4

    #@ae
    .line 3742
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p1, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    #@b0
    invoke-direct {p0, v2, v4}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    #@b3
    .line 3743
    if-eqz v3, :cond_3

    #@b5
    .line 3744
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@b7
    invoke-virtual {v4}, Landroid/app/Activity;->performResume()V

    #@ba
    .line 3745
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@bc
    iput-boolean v7, v4, Landroid/app/Activity;->mTemporaryPause:Z

    #@be
    .line 3708
    .end local v3    # "resumed":Z
    :cond_3
    return-void
.end method

.method private handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 8
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    #@0
    .prologue
    .line 3001
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    #@2
    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    #@4
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Landroid/app/Service;

    #@a
    .line 3002
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_1

    #@c
    .line 3004
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 3005
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@12
    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@19
    .line 3006
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@1b
    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@1e
    .line 3009
    :cond_0
    iget-boolean v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    #@20
    if-nez v4, :cond_2

    #@22
    .line 3010
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@24
    iget v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    #@26
    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    #@28
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    #@2b
    move-result v2

    #@2c
    .line 3016
    .local v2, "res":I
    :goto_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 3019
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@32
    move-result-object v4

    #@33
    .line 3020
    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    #@35
    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    #@37
    const/4 v7, 0x1

    #@38
    .line 3019
    invoke-interface {v4, v5, v7, v6, v2}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@3b
    .line 3024
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    #@3e
    .line 3000
    .end local v2    # "res":I
    :cond_1
    return-void

    #@3f
    .line 3012
    :cond_2
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@41
    invoke-virtual {v3, v4}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@44
    .line 3013
    const/16 v2, 0x3e8

    #@46
    .restart local v2    # "res":I
    goto :goto_0

    #@47
    .line 3025
    .end local v2    # "res":I
    :catch_0
    move-exception v1

    #@48
    .line 3026
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@4a
    invoke-virtual {v4, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@4d
    move-result v4

    #@4e
    if-nez v4, :cond_1

    #@50
    .line 3027
    new-instance v4, Ljava/lang/RuntimeException;

    #@52
    .line 3028
    new-instance v5, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v6, "Unable to start service "

    #@5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    .line 3029
    const-string/jumbo v6, " with "

    #@65
    .line 3028
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    .line 3029
    iget-object v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@6b
    .line 3028
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    .line 3029
    const-string/jumbo v6, ": "

    #@72
    .line 3028
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    .line 3029
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    .line 3028
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    .line 3027
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@85
    throw v4

    #@86
    .line 3021
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "res":I
    :catch_1
    move-exception v0

    #@87
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handleSetCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3652
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@2
    monitor-enter v0

    #@3
    .line 3653
    :try_start_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 3655
    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    #@9
    .line 3651
    return-void

    #@a
    .line 3652
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method private handleSleeping(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    #@0
    .prologue
    .line 3610
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 3612
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v2, :cond_0

    #@a
    .line 3613
    const-string/jumbo v3, "ActivityThread"

    #@d
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "handleSleeping: no activity for token "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 3614
    return-void

    #@25
    .line 3617
    :cond_0
    if-eqz p2, :cond_6

    #@27
    .line 3618
    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@29
    if-nez v3, :cond_1

    #@2b
    invoke-virtual {v2}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_4

    #@31
    .line 3634
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@34
    move-result v3

    #@35
    if-nez v3, :cond_2

    #@37
    .line 3635
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    #@3a
    .line 3640
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3d
    move-result-object v3

    #@3e
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@40
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->activitySlept(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@43
    .line 3609
    :cond_3
    :goto_1
    return-void

    #@44
    .line 3621
    :cond_4
    :try_start_1
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@46
    invoke-virtual {v3}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@49
    .line 3630
    :cond_5
    const/4 v3, 0x1

    #@4a
    iput-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@4c
    goto :goto_0

    #@4d
    .line 3622
    :catch_0
    move-exception v0

    #@4e
    .line 3623
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@50
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@52
    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@55
    move-result v3

    #@56
    if-nez v3, :cond_5

    #@58
    .line 3624
    new-instance v3, Ljava/lang/RuntimeException;

    #@5a
    .line 3625
    new-instance v4, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v5, "Unable to stop activity "

    #@62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    .line 3626
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@68
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    .line 3625
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    .line 3627
    const-string/jumbo v5, ": "

    #@77
    .line 3625
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    .line 3627
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    .line 3625
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    .line 3624
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8a
    throw v3

    #@8b
    .line 3644
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@8d
    if-eqz v3, :cond_3

    #@8f
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@91
    iget-boolean v3, v3, Landroid/app/Activity;->mVisibleFromServer:Z

    #@93
    if-eqz v3, :cond_3

    #@95
    .line 3645
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@97
    invoke-virtual {v3}, Landroid/app/Activity;->performRestart()V

    #@9a
    .line 3646
    const/4 v3, 0x0

    #@9b
    iput-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@9d
    goto :goto_1

    #@9e
    .line 3641
    :catch_1
    move-exception v1

    #@9f
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z
    .param p3, "configChanges"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 3546
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    #@9
    .line 3547
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@b
    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    #@d
    or-int/2addr v3, p3

    #@e
    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    #@10
    .line 3549
    new-instance v0, Landroid/app/ActivityThread$StopInfo;

    #@12
    const/4 v2, 0x0

    #@13
    invoke-direct {v0, v2}, Landroid/app/ActivityThread$StopInfo;-><init>(Landroid/app/ActivityThread$StopInfo;)V

    #@16
    .line 3550
    .local v0, "info":Landroid/app/ActivityThread$StopInfo;
    invoke-direct {p0, v1, v0, p2, v4}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    #@19
    .line 3556
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    #@1c
    .line 3559
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_0

    #@22
    .line 3560
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    #@25
    .line 3568
    :cond_0
    iput-object v1, v0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    #@27
    .line 3569
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@29
    iput-object v2, v0, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    #@2b
    .line 3570
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@2d
    iput-object v2, v0, Landroid/app/ActivityThread$StopInfo;->persistentState:Landroid/os/PersistableBundle;

    #@2f
    .line 3571
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@31
    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    #@34
    .line 3572
    iput-boolean v4, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@36
    .line 3545
    return-void
.end method

.method private handleStopService(Landroid/os/IBinder;)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3036
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Landroid/app/Service;

    #@8
    .line 3037
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_2

    #@a
    .line 3040
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Service;->onDestroy()V

    #@d
    .line 3041
    invoke-virtual {v3}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    .line 3042
    .local v0, "context":Landroid/content/Context;
    instance-of v5, v0, Landroid/app/ContextImpl;

    #@13
    if-eqz v5, :cond_0

    #@15
    .line 3043
    invoke-virtual {v3}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    .line 3044
    .local v4, "who":Ljava/lang/String;
    check-cast v0, Landroid/app/ContextImpl;

    #@1b
    .end local v0    # "context":Landroid/content/Context;
    const-string/jumbo v5, "Service"

    #@1e
    invoke-virtual {v0, v4, v5}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 3047
    .end local v4    # "who":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@24
    .line 3050
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@27
    move-result-object v5

    #@28
    .line 3051
    const/4 v6, 0x2

    #@29
    const/4 v7, 0x0

    #@2a
    const/4 v8, 0x0

    #@2b
    .line 3050
    invoke-interface {v5, p1, v6, v7, v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@2e
    .line 3035
    :goto_0
    return-void

    #@2f
    .line 3052
    :catch_0
    move-exception v1

    #@30
    .line 3054
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v5, "ActivityThread"

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "handleStopService: unable to execute serviceDoneExecuting for "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@4a
    goto :goto_0

    #@4b
    .line 3057
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@4c
    .line 3058
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@4e
    invoke-virtual {v5, v3, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@51
    move-result v5

    #@52
    if-nez v5, :cond_1

    #@54
    .line 3059
    new-instance v5, Ljava/lang/RuntimeException;

    #@56
    .line 3060
    new-instance v6, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v7, "Unable to stop service "

    #@5e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    .line 3061
    const-string/jumbo v7, ": "

    #@69
    .line 3060
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    .line 3061
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    .line 3060
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v6

    #@75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v6

    #@79
    .line 3059
    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7c
    throw v5

    #@7d
    .line 3063
    :cond_1
    const-string/jumbo v5, "ActivityThread"

    #@80
    new-instance v6, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v7, "handleStopService: exception for "

    #@88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v6

    #@94
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@97
    goto :goto_0

    #@98
    .line 3066
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v5, "ActivityThread"

    #@9b
    new-instance v6, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v7, "handleStopService: token="

    #@a3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v6

    #@a7
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v6

    #@ab
    const-string/jumbo v7, " not found."

    #@ae
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v6

    #@b2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v6

    #@b6
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    goto/16 :goto_0
.end method

.method private handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 9
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    #@0
    .prologue
    .line 2926
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    #@2
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@4
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Landroid/app/Service;

    #@a
    .line 2927
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_0

    #@c
    .line 2929
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@e
    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@15
    .line 2930
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@17
    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@1a
    .line 2931
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@1c
    invoke-virtual {v3, v4}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@1f
    move-result v0

    #@20
    .line 2933
    .local v0, "doRebind":Z
    if-eqz v0, :cond_1

    #@22
    .line 2934
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@25
    move-result-object v4

    #@26
    .line 2935
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@28
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@2a
    .line 2934
    invoke-interface {v4, v5, v6, v0}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    #@2d
    .line 2925
    .end local v0    # "doRebind":Z
    :cond_0
    :goto_0
    return-void

    #@2e
    .line 2937
    .restart local v0    # "doRebind":Z
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@31
    move-result-object v4

    #@32
    .line 2938
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@34
    const/4 v6, 0x0

    #@35
    const/4 v7, 0x0

    #@36
    const/4 v8, 0x0

    #@37
    .line 2937
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@3a
    goto :goto_0

    #@3b
    .line 2940
    :catch_0
    move-exception v2

    #@3c
    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_0

    #@3d
    .line 2942
    .end local v0    # "doRebind":Z
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@3e
    .line 2943
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@40
    invoke-virtual {v4, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@43
    move-result v4

    #@44
    if-nez v4, :cond_0

    #@46
    .line 2944
    new-instance v4, Ljava/lang/RuntimeException;

    #@48
    .line 2945
    new-instance v5, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v6, "Unable to unbind to service "

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    .line 2946
    const-string/jumbo v6, " with "

    #@5b
    .line 2945
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    .line 2946
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@61
    .line 2945
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    .line 2946
    const-string/jumbo v6, ": "

    #@68
    .line 2945
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    .line 2946
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    .line 2945
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    .line 2944
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7b
    throw v4
.end method

.method private handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 3
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    #@0
    .prologue
    .line 3672
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    #@6
    move-result-object v0

    #@7
    .line 3673
    .local v0, "apk":Landroid/app/LoadedApk;
    if-eqz v0, :cond_0

    #@9
    .line 3674
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    #@b
    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    #@e
    .line 3676
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    #@14
    move-result-object v0

    #@15
    .line 3677
    if-eqz v0, :cond_1

    #@17
    .line 3678
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    #@19
    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    #@1c
    .line 3680
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@1e
    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    #@20
    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@23
    .line 3681
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@29
    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    #@2c
    .line 3671
    return-void
.end method

.method private handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 3584
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@a
    .line 3586
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_0

    #@c
    .line 3587
    const-string/jumbo v1, "ActivityThread"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "handleWindowVisibility: no activity for token "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 3588
    return-void

    #@27
    .line 3591
    :cond_0
    if-nez p2, :cond_1

    #@29
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@2b
    if-eqz v1, :cond_4

    #@2d
    .line 3593
    :cond_1
    if-eqz p2, :cond_2

    #@2f
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 3596
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@36
    .line 3598
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@38
    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    #@3b
    .line 3599
    iput-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@3d
    .line 3601
    :cond_2
    :goto_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@3f
    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@41
    if-eqz v1, :cond_3

    #@43
    .line 3604
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    #@46
    .line 3606
    :cond_3
    const/4 v1, 0x1

    #@47
    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@49
    .line 3583
    return-void

    #@4a
    .line 3592
    :cond_4
    invoke-direct {p0, v0, v2, p2, v3}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    #@4d
    goto :goto_0
.end method

.method private final incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .locals 6
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;
    .param p2, "stable"    # Z

    #@0
    .prologue
    const/16 v5, 0x83

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    .line 4795
    if-eqz p2, :cond_2

    #@6
    .line 4796
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    #@8
    add-int/lit8 v2, v2, 0x1

    #@a
    iput v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    #@c
    .line 4797
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    #@e
    if-ne v2, v3, :cond_0

    #@10
    .line 4800
    iget-boolean v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 4804
    const/4 v1, -0x1

    #@15
    .line 4810
    .local v1, "unstableDelta":I
    iput-boolean v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@17
    .line 4813
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@19
    invoke-virtual {v2, v5, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    #@1c
    .line 4823
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1f
    move-result-object v2

    #@20
    .line 4824
    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@22
    iget-object v3, v3, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@24
    const/4 v4, 0x1

    #@25
    .line 4823
    invoke-interface {v2, v3, v4, v1}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@28
    .line 4794
    .end local v1    # "unstableDelta":I
    :cond_0
    :goto_1
    return-void

    #@29
    .line 4815
    :cond_1
    const/4 v1, 0x0

    #@2a
    .restart local v1    # "unstableDelta":I
    goto :goto_0

    #@2b
    .line 4830
    .end local v1    # "unstableDelta":I
    :cond_2
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    #@2d
    add-int/lit8 v2, v2, 0x1

    #@2f
    iput v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    #@31
    .line 4831
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    #@33
    if-ne v2, v3, :cond_0

    #@35
    .line 4833
    iget-boolean v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@37
    if-eqz v2, :cond_3

    #@39
    .line 4842
    iput-boolean v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@3b
    .line 4843
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@3d
    invoke-virtual {v2, v5, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    #@40
    goto :goto_1

    #@41
    .line 4852
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@44
    move-result-object v2

    #@45
    .line 4853
    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@47
    iget-object v3, v3, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@49
    const/4 v4, 0x0

    #@4a
    const/4 v5, 0x1

    #@4b
    .line 4852
    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@4e
    goto :goto_1

    #@4f
    .line 4854
    :catch_0
    move-exception v0

    #@50
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@51
    .line 4825
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "unstableDelta":I
    :catch_1
    move-exception v0

    #@52
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 4737
    new-instance v10, Ljava/util/ArrayList;

    #@4
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 4739
    .local v10, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v8

    #@b
    .local v8, "cpi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/content/pm/ProviderInfo;

    #@17
    .line 4749
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v4, 0x0

    #@18
    move-object v0, p0

    #@19
    move-object v1, p1

    #@1a
    move v6, v5

    #@1b
    .line 4748
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    #@1e
    move-result-object v7

    #@1f
    .line 4750
    .local v7, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v7, :cond_0

    #@21
    .line 4751
    iput-boolean v5, v7, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    #@23
    .line 4752
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_0

    #@27
    .line 4757
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@2a
    move-result-object v0

    #@2b
    .line 4758
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@2e
    move-result-object v1

    #@2f
    .line 4757
    invoke-interface {v0, v1, v10}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 4735
    :goto_1
    return-void

    #@33
    .line 4759
    :catch_0
    move-exception v9

    #@34
    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Landroid/app/IActivityManager$ContentProviderHolder;
    .param p3, "info"    # Landroid/content/pm/ProviderInfo;
    .param p4, "noisy"    # Z
    .param p5, "noReleaseNeeded"    # Z
    .param p6, "stable"    # Z

    #@0
    .prologue
    .line 5110
    const/4 v13, 0x0

    #@1
    .line 5112
    .local v13, "localProvider":Landroid/content/ContentProvider;
    if-eqz p2, :cond_0

    #@3
    move-object/from16 v0, p2

    #@5
    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@7
    move-object/from16 v18, v0

    #@9
    if-nez v18, :cond_7

    #@b
    .line 5113
    :cond_0
    if-eqz p4, :cond_1

    #@d
    .line 5114
    const-string/jumbo v18, "ActivityThread"

    #@10
    new-instance v19, Ljava/lang/StringBuilder;

    #@12
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v20, "Loading provider "

    #@18
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v19

    #@1c
    move-object/from16 v0, p3

    #@1e
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@20
    move-object/from16 v20, v0

    #@22
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v19

    #@26
    const-string/jumbo v20, ": "

    #@29
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v19

    #@2d
    .line 5115
    move-object/from16 v0, p3

    #@2f
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@31
    move-object/from16 v20, v0

    #@33
    .line 5114
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v19

    #@37
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v19

    #@3b
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 5117
    :cond_1
    const/4 v4, 0x0

    #@3f
    .line 5118
    .local v4, "c":Landroid/content/Context;
    move-object/from16 v0, p3

    #@41
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@43
    .line 5119
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@46
    move-result-object v18

    #@47
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@49
    move-object/from16 v19, v0

    #@4b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v18

    #@4f
    if-eqz v18, :cond_2

    #@51
    .line 5120
    move-object/from16 v4, p1

    #@53
    .line 5132
    .end local v4    # "c":Landroid/content/Context;
    :goto_0
    if-nez v4, :cond_4

    #@55
    .line 5133
    const-string/jumbo v18, "ActivityThread"

    #@58
    new-instance v19, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v20, "Unable to get context for package "

    #@60
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v19

    #@64
    .line 5134
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@66
    move-object/from16 v20, v0

    #@68
    .line 5133
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v19

    #@6c
    .line 5135
    const-string/jumbo v20, " while loading content provider "

    #@6f
    .line 5133
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v19

    #@73
    .line 5136
    move-object/from16 v0, p3

    #@75
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@77
    move-object/from16 v20, v0

    #@79
    .line 5133
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v19

    #@7d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v19

    #@81
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 5137
    const/16 v18, 0x0

    #@86
    return-object v18

    #@87
    .line 5121
    .restart local v4    # "c":Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    #@89
    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@8b
    move-object/from16 v18, v0

    #@8d
    if-eqz v18, :cond_3

    #@8f
    .line 5122
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@93
    move-object/from16 v18, v0

    #@95
    invoke-virtual/range {v18 .. v18}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    #@98
    move-result-object v18

    #@99
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@9b
    move-object/from16 v19, v0

    #@9d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v18

    #@a1
    .line 5121
    if-eqz v18, :cond_3

    #@a3
    .line 5123
    move-object/from16 v0, p0

    #@a5
    iget-object v4, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@a7
    .local v4, "c":Landroid/content/Context;
    goto :goto_0

    #@a8
    .line 5126
    .local v4, "c":Landroid/content/Context;
    :cond_3
    :try_start_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@aa
    move-object/from16 v18, v0

    #@ac
    .line 5127
    const/16 v19, 0x1

    #@ae
    .line 5126
    move-object/from16 v0, p1

    #@b0
    move-object/from16 v1, v18

    #@b2
    move/from16 v2, v19

    #@b4
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    #@b7
    move-result-object v4

    #@b8
    .local v4, "c":Landroid/content/Context;
    goto :goto_0

    #@b9
    .line 5140
    .end local v4    # "c":Landroid/content/Context;
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@bc
    move-result-object v5

    #@bd
    .line 5142
    .local v5, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p3

    #@bf
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@c1
    move-object/from16 v18, v0

    #@c3
    .line 5141
    move-object/from16 v0, v18

    #@c5
    invoke-virtual {v5, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@c8
    move-result-object v18

    #@c9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@cc
    move-result-object v18

    #@cd
    move-object/from16 v0, v18

    #@cf
    check-cast v0, Landroid/content/ContentProvider;

    #@d1
    move-object v13, v0

    #@d2
    .line 5143
    .local v13, "localProvider":Landroid/content/ContentProvider;
    invoke-virtual {v13}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    #@d5
    move-result-object v16

    #@d6
    .line 5144
    .local v16, "provider":Landroid/content/IContentProvider;
    if-nez v16, :cond_5

    #@d8
    .line 5145
    const-string/jumbo v18, "ActivityThread"

    #@db
    new-instance v19, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v20, "Failed to instantiate class "

    #@e3
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v19

    #@e7
    .line 5146
    move-object/from16 v0, p3

    #@e9
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@eb
    move-object/from16 v20, v0

    #@ed
    .line 5145
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v19

    #@f1
    .line 5146
    const-string/jumbo v20, " from sourceDir "

    #@f4
    .line 5145
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v19

    #@f8
    .line 5147
    move-object/from16 v0, p3

    #@fa
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@fc
    move-object/from16 v20, v0

    #@fe
    move-object/from16 v0, v20

    #@100
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@102
    move-object/from16 v20, v0

    #@104
    .line 5145
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v19

    #@108
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v19

    #@10c
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10f
    .line 5148
    const/16 v18, 0x0

    #@111
    return-object v18

    #@112
    .line 5153
    :cond_5
    move-object/from16 v0, p3

    #@114
    invoke-virtual {v13, v4, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@117
    .line 5170
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    .end local v13    # "localProvider":Landroid/content/ContentProvider;
    :goto_1
    move-object/from16 v0, p0

    #@119
    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@11b
    move-object/from16 v19, v0

    #@11d
    monitor-enter v19

    #@11e
    .line 5173
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@121
    move-result-object v12

    #@122
    .line 5174
    .local v12, "jBinder":Landroid/os/IBinder;
    if-eqz v13, :cond_9

    #@124
    .line 5175
    new-instance v7, Landroid/content/ComponentName;

    #@126
    move-object/from16 v0, p3

    #@128
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@12a
    move-object/from16 v18, v0

    #@12c
    move-object/from16 v0, p3

    #@12e
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@130
    move-object/from16 v20, v0

    #@132
    move-object/from16 v0, v18

    #@134
    move-object/from16 v1, v20

    #@136
    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@139
    .line 5176
    .local v7, "cname":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@13b
    iget-object v0, v0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    #@13d
    move-object/from16 v18, v0

    #@13f
    move-object/from16 v0, v18

    #@141
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@144
    move-result-object v14

    #@145
    check-cast v14, Landroid/app/ActivityThread$ProviderClientRecord;

    #@147
    .line 5177
    .local v14, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v14, :cond_8

    #@149
    .line 5182
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    #@14b
    move-object/from16 v16, v0

    #@14d
    .line 5191
    :goto_2
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@14f
    move-object/from16 v17, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@151
    .end local v7    # "cname":Landroid/content/ComponentName;
    .end local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .local v17, "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    :goto_3
    monitor-exit v19

    #@152
    .line 5227
    return-object v17

    #@153
    .line 5154
    .end local v12    # "jBinder":Landroid/os/IBinder;
    .end local v16    # "provider":Landroid/content/IContentProvider;
    .end local v17    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v10

    #@154
    .line 5155
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@156
    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@158
    move-object/from16 v18, v0

    #@15a
    const/16 v19, 0x0

    #@15c
    move-object/from16 v0, v18

    #@15e
    move-object/from16 v1, v19

    #@160
    invoke-virtual {v0, v1, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@163
    move-result v18

    #@164
    if-nez v18, :cond_6

    #@166
    .line 5156
    new-instance v18, Ljava/lang/RuntimeException;

    #@168
    .line 5157
    new-instance v19, Ljava/lang/StringBuilder;

    #@16a
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@16d
    const-string/jumbo v20, "Unable to get provider "

    #@170
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v19

    #@174
    move-object/from16 v0, p3

    #@176
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@178
    move-object/from16 v20, v0

    #@17a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v19

    #@17e
    .line 5158
    const-string/jumbo v20, ": "

    #@181
    .line 5157
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v19

    #@185
    .line 5158
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@188
    move-result-object v20

    #@189
    .line 5157
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v19

    #@18d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object v19

    #@191
    .line 5156
    move-object/from16 v0, v18

    #@193
    move-object/from16 v1, v19

    #@195
    invoke-direct {v0, v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@198
    throw v18

    #@199
    .line 5160
    :cond_6
    const/16 v18, 0x0

    #@19b
    return-object v18

    #@19c
    .line 5163
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "e":Ljava/lang/Exception;
    .local v13, "localProvider":Landroid/content/ContentProvider;
    :cond_7
    move-object/from16 v0, p2

    #@19e
    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@1a0
    move-object/from16 v16, v0

    #@1a2
    .restart local v16    # "provider":Landroid/content/IContentProvider;
    goto/16 :goto_1

    #@1a4
    .line 5184
    .end local v13    # "localProvider":Landroid/content/ContentProvider;
    .restart local v7    # "cname":Landroid/content/ComponentName;
    .restart local v12    # "jBinder":Landroid/os/IBinder;
    .restart local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_8
    :try_start_3
    new-instance v11, Landroid/app/IActivityManager$ContentProviderHolder;

    #@1a6
    move-object/from16 v0, p3

    #@1a8
    invoke-direct {v11, v0}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1ab
    .line 5185
    .end local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .local v11, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_4
    move-object/from16 v0, v16

    #@1ad
    iput-object v0, v11, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@1af
    .line 5186
    const/16 v18, 0x1

    #@1b1
    move/from16 v0, v18

    #@1b3
    iput-boolean v0, v11, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    #@1b5
    .line 5187
    move-object/from16 v0, p0

    #@1b7
    move-object/from16 v1, v16

    #@1b9
    invoke-direct {v0, v1, v13, v11}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    #@1bc
    move-result-object v14

    #@1bd
    .line 5188
    move-object/from16 v0, p0

    #@1bf
    iget-object v0, v0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    #@1c1
    move-object/from16 v18, v0

    #@1c3
    move-object/from16 v0, v18

    #@1c5
    invoke-virtual {v0, v12, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c8
    .line 5189
    move-object/from16 v0, p0

    #@1ca
    iget-object v0, v0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    #@1cc
    move-object/from16 v18, v0

    #@1ce
    move-object/from16 v0, v18

    #@1d0
    invoke-virtual {v0, v7, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1d3
    move-object/from16 p2, v11

    #@1d5
    .end local v11    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto/16 :goto_2

    #@1d7
    .line 5193
    .end local v7    # "cname":Landroid/content/ComponentName;
    .end local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    #@1d9
    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@1db
    move-object/from16 v18, v0

    #@1dd
    move-object/from16 v0, v18

    #@1df
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e2
    move-result-object v15

    #@1e3
    check-cast v15, Landroid/app/ActivityThread$ProviderRefCount;

    #@1e5
    .line 5194
    .local v15, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v15, :cond_b

    #@1e7
    .line 5202
    if-nez p5, :cond_a

    #@1e9
    .line 5203
    move-object/from16 v0, p0

    #@1eb
    move/from16 v1, p6

    #@1ed
    invoke-direct {v0, v15, v1}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1f0
    .line 5205
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1f3
    move-result-object v18

    #@1f4
    .line 5206
    move-object/from16 v0, p2

    #@1f6
    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@1f8
    move-object/from16 v20, v0

    #@1fa
    .line 5205
    move-object/from16 v0, v18

    #@1fc
    move-object/from16 v1, v20

    #@1fe
    move/from16 v2, p6

    #@200
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@203
    .line 5223
    :cond_a
    :goto_4
    :try_start_7
    iget-object v0, v15, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@205
    move-object/from16 v17, v0

    #@207
    .restart local v17    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto/16 :goto_3

    #@209
    .line 5212
    .end local v17    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_b
    move-object/from16 v0, p0

    #@20b
    move-object/from16 v1, v16

    #@20d
    move-object/from16 v2, p2

    #@20f
    invoke-direct {v0, v1, v13, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    #@212
    move-result-object v6

    #@213
    .line 5214
    .local v6, "client":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz p5, :cond_c

    #@215
    .line 5215
    new-instance v15, Landroid/app/ActivityThread$ProviderRefCount;

    #@217
    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    const/16 v18, 0x3e8

    #@219
    const/16 v20, 0x3e8

    #@21b
    move-object/from16 v0, p2

    #@21d
    move/from16 v1, v18

    #@21f
    move/from16 v2, v20

    #@221
    invoke-direct {v15, v0, v6, v1, v2}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    #@224
    .line 5221
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :goto_5
    move-object/from16 v0, p0

    #@226
    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@228
    move-object/from16 v18, v0

    #@22a
    move-object/from16 v0, v18

    #@22c
    invoke-virtual {v0, v12, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@22f
    goto :goto_4

    #@230
    .line 5170
    .end local v6    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v12    # "jBinder":Landroid/os/IBinder;
    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v18

    #@231
    :goto_6
    monitor-exit v19

    #@232
    throw v18

    #@233
    .line 5217
    .restart local v6    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v12    # "jBinder":Landroid/os/IBinder;
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :cond_c
    if-eqz p6, :cond_d

    #@235
    .line 5218
    :try_start_8
    new-instance v15, Landroid/app/ActivityThread$ProviderRefCount;

    #@237
    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    const/16 v18, 0x1

    #@239
    const/16 v20, 0x0

    #@23b
    move-object/from16 v0, p2

    #@23d
    move/from16 v1, v18

    #@23f
    move/from16 v2, v20

    #@241
    invoke-direct {v15, v0, v6, v1, v2}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    #@244
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    goto :goto_5

    #@245
    .line 5219
    :cond_d
    new-instance v15, Landroid/app/ActivityThread$ProviderRefCount;

    #@247
    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    const/16 v18, 0x0

    #@249
    const/16 v20, 0x1

    #@24b
    move-object/from16 v0, p2

    #@24d
    move/from16 v1, v18

    #@24f
    move/from16 v2, v20

    #@251
    invoke-direct {v15, v0, v6, v1, v2}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@254
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    goto :goto_5

    #@255
    .line 5170
    .end local v6    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v7    # "cname":Landroid/content/ComponentName;
    .restart local v11    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_1
    move-exception v18

    #@256
    move-object/from16 p2, v11

    #@258
    .end local v11    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto :goto_6

    #@259
    .line 5207
    .end local v7    # "cname":Landroid/content/ComponentName;
    .end local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catch_1
    move-exception v9

    #@25a
    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_4

    #@25b
    .line 5128
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "jBinder":Landroid/os/IBinder;
    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v16    # "provider":Landroid/content/IContentProvider;
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v4, "c":Landroid/content/Context;
    .restart local v13    # "localProvider":Landroid/content/ContentProvider;
    :catch_2
    move-exception v8

    #@25c
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method

.method private installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .locals 11
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "localProvider"    # Landroid/content/ContentProvider;
    .param p3, "holder"    # Landroid/app/IActivityManager$ContentProviderHolder;

    #@0
    .prologue
    .line 5075
    iget-object v1, p3, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    #@2
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@4
    const-string/jumbo v3, ";"

    #@7
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 5076
    .local v2, "auths":[Ljava/lang/String;
    iget-object v1, p3, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    #@d
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@14
    move-result v9

    #@15
    .line 5078
    .local v9, "userId":I
    new-instance v0, Landroid/app/ActivityThread$ProviderClientRecord;

    #@17
    move-object v1, p0

    #@18
    move-object v3, p1

    #@19
    move-object v4, p2

    #@1a
    move-object v5, p3

    #@1b
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)V

    #@1e
    .line 5080
    .local v0, "pcr":Landroid/app/ActivityThread$ProviderClientRecord;
    const/4 v1, 0x0

    #@1f
    array-length v3, v2

    #@20
    :goto_0
    if-ge v1, v3, :cond_1

    #@22
    aget-object v6, v2, v1

    #@24
    .line 5081
    .local v6, "auth":Ljava/lang/String;
    new-instance v8, Landroid/app/ActivityThread$ProviderKey;

    #@26
    invoke-direct {v8, v6, v9}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    #@29
    .line 5082
    .local v8, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@2b
    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v7

    #@2f
    check-cast v7, Landroid/app/ActivityThread$ProviderClientRecord;

    #@31
    .line 5083
    .local v7, "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v7, :cond_0

    #@33
    .line 5084
    const-string/jumbo v4, "ActivityThread"

    #@36
    new-instance v5, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v10, "Content provider "

    #@3e
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    iget-object v10, v0, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@44
    iget-object v10, v10, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    #@46
    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@48
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    .line 5085
    const-string/jumbo v10, " already published as "

    #@4f
    .line 5084
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 5080
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@60
    goto :goto_0

    #@61
    .line 5087
    :cond_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@63
    invoke-virtual {v4, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    goto :goto_1

    #@67
    .line 5090
    .end local v6    # "auth":Ljava/lang/String;
    .end local v7    # "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v8    # "key":Landroid/app/ActivityThread$ProviderKey;
    :cond_1
    return-object v0
.end method

.method public static isSystem()Z
    .locals 1

    #@0
    .prologue
    .line 1643
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    #@6
    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v6, 0x40

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    .line 5380
    const-string/jumbo v2, "ActivityThreadMain"

    #@7
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@a
    .line 5381
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    #@d
    .line 5386
    invoke-static {v3}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    #@10
    .line 5388
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    #@13
    .line 5391
    new-instance v2, Landroid/app/ActivityThread$EventLoggingReporter;

    #@15
    invoke-direct {v2, v4}, Landroid/app/ActivityThread$EventLoggingReporter;-><init>(Landroid/app/ActivityThread$EventLoggingReporter;)V

    #@18
    invoke-static {v2}, Llibcore/io/EventLogger;->setReporter(Llibcore/io/EventLogger$Reporter;)V

    #@1b
    .line 5393
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    #@1e
    .line 5396
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@21
    move-result v2

    #@22
    invoke-static {v2}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    #@25
    move-result-object v0

    #@26
    .line 5397
    .local v0, "configDir":Ljava/io/File;
    invoke-static {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    #@29
    .line 5399
    const-string/jumbo v2, "<pre-initialized>"

    #@2c
    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    #@2f
    .line 5401
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    #@32
    .line 5403
    new-instance v1, Landroid/app/ActivityThread;

    #@34
    invoke-direct {v1}, Landroid/app/ActivityThread;-><init>()V

    #@37
    .line 5404
    .local v1, "thread":Landroid/app/ActivityThread;
    invoke-direct {v1, v3}, Landroid/app/ActivityThread;->attach(Z)V

    #@3a
    .line 5406
    sget-object v2, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    #@3c
    if-nez v2, :cond_0

    #@3e
    .line 5407
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@41
    move-result-object v2

    #@42
    sput-object v2, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    #@44
    .line 5416
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@47
    .line 5417
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@4a
    .line 5419
    new-instance v2, Ljava/lang/RuntimeException;

    #@4c
    const-string/jumbo v3, "Main thread loop unexpectedly exited"

    #@4f
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2
.end method

.method private onCoreSettingsChange()V
    .locals 12

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 3660
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    #@4
    const-string/jumbo v1, "debug_view_attributes"

    #@7
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    const/4 v9, 0x1

    #@e
    .line 3661
    .local v9, "debugViewAttributes":Z
    :goto_0
    sget-boolean v0, Landroid/view/View;->mDebugViewAttributes:Z

    #@10
    if-eq v9, v0, :cond_1

    #@12
    .line 3662
    sput-boolean v9, Landroid/view/View;->mDebugViewAttributes:Z

    #@14
    .line 3665
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v11

    #@1e
    .local v11, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v10

    #@28
    check-cast v10, Ljava/util/Map$Entry;

    #@2a
    .line 3666
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Landroid/os/IBinder;

    #@30
    move-object v0, p0

    #@31
    move-object v3, v2

    #@32
    move v5, v4

    #@33
    move-object v6, v2

    #@34
    move-object v7, v2

    #@35
    move v8, v4

    #@36
    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    #@39
    goto :goto_1

    #@3a
    .line 3660
    .end local v9    # "debugViewAttributes":Z
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v9, 0x0

    #@3b
    .restart local v9    # "debugViewAttributes":Z
    goto :goto_0

    #@3c
    .line 3658
    :cond_1
    return-void
.end method

.method private static performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V
    .locals 6
    .param p0, "cb"    # Landroid/content/ComponentCallbacks2;
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4147
    instance-of v3, p0, Landroid/app/Activity;

    #@3
    if-eqz v3, :cond_3

    #@5
    move-object v0, p0

    #@6
    check-cast v0, Landroid/app/Activity;

    #@8
    .line 4148
    :goto_0
    if-eqz v0, :cond_0

    #@a
    .line 4149
    iput-boolean v4, v0, Landroid/app/Activity;->mCalled:Z

    #@c
    .line 4152
    :cond_0
    const/4 v2, 0x0

    #@d
    .line 4153
    .local v2, "shouldChangeConfig":Z
    if-eqz v0, :cond_1

    #@f
    iget-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@11
    if-nez v3, :cond_4

    #@13
    .line 4154
    :cond_1
    const/4 v2, 0x1

    #@14
    .line 4173
    :cond_2
    :goto_1
    if-eqz v2, :cond_6

    #@16
    .line 4174
    invoke-interface {p0, p1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@19
    .line 4176
    if-eqz v0, :cond_6

    #@1b
    .line 4177
    iget-boolean v3, v0, Landroid/app/Activity;->mCalled:Z

    #@1d
    if-nez v3, :cond_5

    #@1f
    .line 4178
    new-instance v3, Landroid/util/SuperNotCalledException;

    #@21
    .line 4179
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "Activity "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    .line 4180
    const-string/jumbo v5, " did not call through to super.onConfigurationChanged()"

    #@38
    .line 4179
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 4178
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@43
    throw v3

    #@44
    .line 4147
    .end local v2    # "shouldChangeConfig":Z
    :cond_3
    const/4 v0, 0x0

    #@45
    .local v0, "activity":Landroid/app/Activity;
    goto :goto_0

    #@46
    .line 4160
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "shouldChangeConfig":Z
    :cond_4
    iget-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@48
    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@4b
    move-result v1

    #@4c
    .line 4161
    .local v1, "diff":I
    if-eqz v1, :cond_2

    #@4e
    .line 4165
    iget-object v3, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@50
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    #@53
    move-result v3

    #@54
    not-int v3, v3

    #@55
    and-int/2addr v3, v1

    #@56
    if-nez v3, :cond_2

    #@58
    .line 4166
    const/4 v2, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 4182
    .end local v1    # "diff":I
    :cond_5
    iput v4, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    #@5c
    .line 4183
    new-instance v3, Landroid/content/res/Configuration;

    #@5e
    invoke-direct {v3, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@61
    iput-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@63
    .line 4143
    :cond_6
    return-void
.end method

.method private performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 3756
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    #@9
    .line 3757
    .local v3, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v0, 0x0

    #@a
    .line 3759
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v3, :cond_7

    #@c
    .line 3760
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@e
    invoke-virtual {v4}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    .line 3761
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@14
    iget v5, v4, Landroid/app/Activity;->mConfigChangeFlags:I

    #@16
    or-int/2addr v5, p3

    #@17
    iput v5, v4, Landroid/app/Activity;->mConfigChangeFlags:I

    #@19
    .line 3762
    if-eqz p2, :cond_0

    #@1b
    .line 3763
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1d
    iput-boolean v7, v4, Landroid/app/Activity;->mFinished:Z

    #@1f
    .line 3765
    :cond_0
    iget-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@21
    if-nez v4, :cond_2

    #@23
    .line 3767
    :try_start_0
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@25
    const/4 v5, 0x0

    #@26
    iput-boolean v5, v4, Landroid/app/Activity;->mCalled:Z

    #@28
    .line 3768
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@2a
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@2c
    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    #@2f
    .line 3769
    const/4 v4, 0x2

    #@30
    new-array v4, v4, [Ljava/lang/Object;

    #@32
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@35
    move-result v5

    #@36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v5

    #@3a
    const/4 v6, 0x0

    #@3b
    aput-object v5, v4, v6

    #@3d
    .line 3770
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@3f
    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    const/4 v6, 0x1

    #@48
    aput-object v5, v4, v6

    #@4a
    .line 3769
    const/16 v5, 0x7545

    #@4c
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@4f
    .line 3771
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@51
    iget-boolean v4, v4, Landroid/app/Activity;->mCalled:Z

    #@53
    if-nez v4, :cond_1

    #@55
    .line 3772
    new-instance v4, Landroid/util/SuperNotCalledException;

    #@57
    .line 3773
    new-instance v5, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v6, "Activity "

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@65
    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 3774
    const-string/jumbo v6, " did not call through to super.onPause()"

    #@70
    .line 3773
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    .line 3772
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v4
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@7c
    .line 3776
    :catch_0
    move-exception v1

    #@7d
    .line 3777
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    #@7e
    .line 3778
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v2

    #@7f
    .line 3779
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@81
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@83
    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@86
    move-result v4

    #@87
    if-nez v4, :cond_1

    #@89
    .line 3780
    new-instance v4, Ljava/lang/RuntimeException;

    #@8b
    .line 3781
    new-instance v5, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v6, "Unable to pause activity "

    #@93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    .line 3782
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@99
    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    #@9c
    move-result-object v6

    #@9d
    .line 3781
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v5

    #@a1
    .line 3783
    const-string/jumbo v6, ": "

    #@a4
    .line 3781
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v5

    #@a8
    .line 3783
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@ab
    move-result-object v6

    #@ac
    .line 3781
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v5

    #@b0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v5

    #@b4
    .line 3780
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b7
    throw v4

    #@b8
    .line 3786
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    iput-boolean v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@ba
    .line 3788
    :cond_2
    iget-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@bc
    if-nez v4, :cond_4

    #@be
    .line 3790
    :try_start_1
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c0
    invoke-virtual {v4}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    #@c3
    .line 3801
    :cond_3
    iput-boolean v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@c5
    .line 3803
    :cond_4
    if-eqz p4, :cond_5

    #@c7
    .line 3806
    :try_start_2
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c9
    invoke-virtual {v4}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    #@cc
    move-result-object v4

    #@cd
    .line 3805
    iput-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    #@cf
    .line 3817
    :cond_5
    :try_start_3
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@d1
    const/4 v5, 0x0

    #@d2
    iput-boolean v5, v4, Landroid/app/Activity;->mCalled:Z

    #@d4
    .line 3818
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@d6
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@d8
    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    #@db
    .line 3819
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@dd
    iget-boolean v4, v4, Landroid/app/Activity;->mCalled:Z

    #@df
    if-nez v4, :cond_6

    #@e1
    .line 3820
    new-instance v4, Landroid/util/SuperNotCalledException;

    #@e3
    .line 3821
    new-instance v5, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v6, "Activity "

    #@eb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v5

    #@ef
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@f1
    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    #@f4
    move-result-object v6

    #@f5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v5

    #@f9
    .line 3822
    const-string/jumbo v6, " did not call through to super.onDestroy()"

    #@fc
    .line 3821
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v5

    #@100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v5

    #@104
    .line 3820
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@107
    throw v4
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    #@108
    .line 3827
    :catch_2
    move-exception v1

    #@109
    .line 3828
    .restart local v1    # "e":Landroid/util/SuperNotCalledException;
    throw v1

    #@10a
    .line 3793
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_3
    move-exception v2

    #@10b
    .line 3794
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@10d
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@10f
    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@112
    move-result v4

    #@113
    if-nez v4, :cond_3

    #@115
    .line 3795
    new-instance v4, Ljava/lang/RuntimeException;

    #@117
    .line 3796
    new-instance v5, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v6, "Unable to stop activity "

    #@11f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v5

    #@123
    .line 3797
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@125
    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    #@128
    move-result-object v6

    #@129
    .line 3796
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v5

    #@12d
    .line 3798
    const-string/jumbo v6, ": "

    #@130
    .line 3796
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v5

    #@134
    .line 3798
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@137
    move-result-object v6

    #@138
    .line 3796
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v5

    #@13c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v5

    #@140
    .line 3795
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@143
    throw v4

    #@144
    .line 3791
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    #@145
    .line 3792
    .restart local v1    # "e":Landroid/util/SuperNotCalledException;
    throw v1

    #@146
    .line 3807
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_5
    move-exception v2

    #@147
    .line 3808
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@149
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@14b
    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@14e
    move-result v4

    #@14f
    if-nez v4, :cond_5

    #@151
    .line 3809
    new-instance v4, Ljava/lang/RuntimeException;

    #@153
    .line 3810
    new-instance v5, Ljava/lang/StringBuilder;

    #@155
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@158
    const-string/jumbo v6, "Unable to retain activity "

    #@15b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v5

    #@15f
    .line 3811
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@161
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@164
    move-result-object v6

    #@165
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@168
    move-result-object v6

    #@169
    .line 3810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v5

    #@16d
    .line 3812
    const-string/jumbo v6, ": "

    #@170
    .line 3810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v5

    #@174
    .line 3812
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@177
    move-result-object v6

    #@178
    .line 3810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v5

    #@17c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17f
    move-result-object v5

    #@180
    .line 3809
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@183
    throw v4

    #@184
    .line 3824
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_4
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@186
    if-eqz v4, :cond_7

    #@188
    .line 3825
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@18a
    invoke-virtual {v4}, Landroid/view/Window;->closeAllPanels()V
    :try_end_4
    .catch Landroid/util/SuperNotCalledException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    #@18d
    .line 3837
    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_7
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@18f
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@192
    .line 3838
    invoke-static {v0}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    #@195
    .line 3839
    return-object v3

    #@196
    .line 3829
    .restart local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :catch_6
    move-exception v2

    #@197
    .line 3830
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@199
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@19b
    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@19e
    move-result v4

    #@19f
    if-nez v4, :cond_7

    #@1a1
    .line 3831
    new-instance v4, Ljava/lang/RuntimeException;

    #@1a3
    .line 3832
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a8
    const-string/jumbo v6, "Unable to destroy activity "

    #@1ab
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v5

    #@1af
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@1b1
    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    #@1b4
    move-result-object v6

    #@1b5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v5

    #@1b9
    .line 3833
    const-string/jumbo v6, ": "

    #@1bc
    .line 3832
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v5

    #@1c0
    .line 3833
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v6

    #@1c4
    .line 3832
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v5

    #@1c8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cb
    move-result-object v5

    #@1cc
    .line 3831
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1cf
    throw v4
.end method

.method private performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 24
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2296
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4
    move-object/from16 v18, v0

    #@6
    .line 2297
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    #@8
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@a
    if-nez v4, :cond_0

    #@c
    .line 2298
    move-object/from16 v0, v18

    #@e
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@10
    move-object/from16 v0, p1

    #@12
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@14
    .line 2299
    const/4 v6, 0x1

    #@15
    .line 2298
    move-object/from16 v0, p0

    #@17
    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    #@1a
    move-result-object v4

    #@1b
    move-object/from16 v0, p1

    #@1d
    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@1f
    .line 2302
    :cond_0
    move-object/from16 v0, p1

    #@21
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@23
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@26
    move-result-object v20

    #@27
    .line 2303
    .local v20, "component":Landroid/content/ComponentName;
    if-nez v20, :cond_1

    #@29
    .line 2304
    move-object/from16 v0, p1

    #@2b
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@2d
    .line 2305
    move-object/from16 v0, p0

    #@2f
    iget-object v5, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@31
    invoke-virtual {v5}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@34
    move-result-object v5

    #@35
    .line 2304
    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@38
    move-result-object v20

    #@39
    .line 2306
    move-object/from16 v0, p1

    #@3b
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@3d
    move-object/from16 v0, v20

    #@3f
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@42
    .line 2309
    :cond_1
    move-object/from16 v0, p1

    #@44
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@46
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@48
    if-eqz v4, :cond_2

    #@4a
    .line 2310
    new-instance v20, Landroid/content/ComponentName;

    #@4c
    .end local v20    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    #@4e
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@50
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@52
    .line 2311
    move-object/from16 v0, p1

    #@54
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@56
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@58
    .line 2310
    move-object/from16 v0, v20

    #@5a
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    .line 2314
    .restart local v20    # "component":Landroid/content/ComponentName;
    :cond_2
    const/4 v2, 0x0

    #@5e
    .line 2316
    .local v2, "activity":Landroid/app/Activity;
    :try_start_0
    move-object/from16 v0, p1

    #@60
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@62
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@65
    move-result-object v19

    #@66
    .line 2317
    .local v19, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    #@68
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@6a
    .line 2318
    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    move-object/from16 v0, p1

    #@70
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@72
    .line 2317
    move-object/from16 v0, v19

    #@74
    invoke-virtual {v4, v0, v5, v6}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    #@77
    move-result-object v2

    #@78
    .line 2319
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@7b
    move-result-object v4

    #@7c
    invoke-static {v4}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    #@7f
    .line 2320
    move-object/from16 v0, p1

    #@81
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@83
    move-object/from16 v0, v19

    #@85
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@88
    .line 2321
    move-object/from16 v0, p1

    #@8a
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@8c
    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@8f
    .line 2322
    move-object/from16 v0, p1

    #@91
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@93
    if-eqz v4, :cond_3

    #@95
    .line 2323
    move-object/from16 v0, p1

    #@97
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@99
    move-object/from16 v0, v19

    #@9b
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@9e
    .line 2334
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v19    # "cl":Ljava/lang/ClassLoader;
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    #@a0
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@a2
    move-object/from16 v0, p0

    #@a4
    iget-object v5, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@a6
    const/4 v6, 0x0

    #@a7
    invoke-virtual {v4, v6, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    #@aa
    move-result-object v8

    #@ab
    .line 2344
    .local v8, "app":Landroid/app/Application;
    if-eqz v2, :cond_d

    #@ad
    .line 2345
    move-object/from16 v0, p0

    #@af
    move-object/from16 v1, p1

    #@b1
    invoke-direct {v0, v1, v2}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/Activity;)Landroid/content/Context;

    #@b4
    move-result-object v3

    #@b5
    .line 2346
    .local v3, "appContext":Landroid/content/Context;
    move-object/from16 v0, p1

    #@b7
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@b9
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@bc
    move-result-object v5

    #@bd
    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@c0
    move-result-object v11

    #@c1
    .line 2347
    .local v11, "title":Ljava/lang/CharSequence;
    new-instance v15, Landroid/content/res/Configuration;

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget-object v4, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@c7
    invoke-direct {v15, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@ca
    .line 2350
    .local v15, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@cd
    move-result-object v5

    #@ce
    move-object/from16 v0, p1

    #@d0
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@d2
    .line 2351
    move-object/from16 v0, p1

    #@d4
    iget v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    #@d6
    move-object/from16 v0, p1

    #@d8
    iget-object v9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@da
    move-object/from16 v0, p1

    #@dc
    iget-object v10, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@de
    move-object/from16 v0, p1

    #@e0
    iget-object v12, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    #@e2
    .line 2352
    move-object/from16 v0, p1

    #@e4
    iget-object v13, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    #@e6
    move-object/from16 v0, p1

    #@e8
    iget-object v14, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@ea
    .line 2353
    move-object/from16 v0, p1

    #@ec
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    #@ee
    move-object/from16 v16, v0

    #@f0
    move-object/from16 v0, p1

    #@f2
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@f4
    move-object/from16 v17, v0

    #@f6
    move-object/from16 v4, p0

    #@f8
    .line 2350
    invoke-virtual/range {v2 .. v17}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;)V

    #@fb
    .line 2355
    if-eqz p2, :cond_4

    #@fd
    .line 2356
    move-object/from16 v0, p2

    #@ff
    iput-object v0, v2, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    #@101
    .line 2358
    :cond_4
    const/4 v4, 0x0

    #@102
    move-object/from16 v0, p1

    #@104
    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@106
    .line 2359
    const/4 v4, 0x0

    #@107
    iput-boolean v4, v2, Landroid/app/Activity;->mStartedActivity:Z

    #@109
    .line 2360
    move-object/from16 v0, p1

    #@10b
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@10d
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    #@110
    move-result v23

    #@111
    .line 2361
    .local v23, "theme":I
    if-eqz v23, :cond_5

    #@113
    .line 2362
    move/from16 v0, v23

    #@115
    invoke-virtual {v2, v0}, Landroid/app/Activity;->setTheme(I)V

    #@118
    .line 2365
    :cond_5
    const/4 v4, 0x0

    #@119
    iput-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    #@11b
    .line 2366
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    #@11e
    move-result v4

    #@11f
    if-eqz v4, :cond_6

    #@121
    .line 2367
    move-object/from16 v0, p0

    #@123
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@125
    move-object/from16 v0, p1

    #@127
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@129
    move-object/from16 v0, p1

    #@12b
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@12d
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@130
    .line 2371
    :goto_0
    iget-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    #@132
    if-nez v4, :cond_7

    #@134
    .line 2372
    new-instance v4, Landroid/util/SuperNotCalledException;

    #@136
    .line 2373
    new-instance v5, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string/jumbo v6, "Activity "

    #@13e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v5

    #@142
    move-object/from16 v0, p1

    #@144
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@146
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@149
    move-result-object v6

    #@14a
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@14d
    move-result-object v6

    #@14e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v5

    #@152
    .line 2374
    const-string/jumbo v6, " did not call through to super.onCreate()"

    #@155
    .line 2373
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v5

    #@159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15c
    move-result-object v5

    #@15d
    .line 2372
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@160
    throw v4
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@161
    .line 2411
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v8    # "app":Landroid/app/Application;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v23    # "theme":I
    :catch_0
    move-exception v21

    #@162
    .line 2412
    .local v21, "e":Landroid/util/SuperNotCalledException;
    throw v21

    #@163
    .line 2325
    .end local v21    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v22

    #@164
    .line 2326
    .local v22, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@166
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@168
    move-object/from16 v0, v22

    #@16a
    invoke-virtual {v4, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@16d
    move-result v4

    #@16e
    if-nez v4, :cond_3

    #@170
    .line 2327
    new-instance v4, Ljava/lang/RuntimeException;

    #@172
    .line 2328
    new-instance v5, Ljava/lang/StringBuilder;

    #@174
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@177
    const-string/jumbo v6, "Unable to instantiate activity "

    #@17a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v5

    #@17e
    move-object/from16 v0, v20

    #@180
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v5

    #@184
    .line 2329
    const-string/jumbo v6, ": "

    #@187
    .line 2328
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v5

    #@18b
    .line 2329
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@18e
    move-result-object v6

    #@18f
    .line 2328
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v5

    #@193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@196
    move-result-object v5

    #@197
    .line 2327
    move-object/from16 v0, v22

    #@199
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19c
    throw v4

    #@19d
    .line 2369
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v3    # "appContext":Landroid/content/Context;
    .restart local v8    # "app":Landroid/app/Application;
    .restart local v11    # "title":Ljava/lang/CharSequence;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v23    # "theme":I
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    #@19f
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@1a1
    move-object/from16 v0, p1

    #@1a3
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@1a5
    invoke-virtual {v4, v2, v5}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/util/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@1a8
    goto :goto_0

    #@1a9
    .line 2414
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v8    # "app":Landroid/app/Application;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v23    # "theme":I
    :catch_2
    move-exception v22

    #@1aa
    .line 2415
    .restart local v22    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@1ac
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@1ae
    move-object/from16 v0, v22

    #@1b0
    invoke-virtual {v4, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@1b3
    move-result v4

    #@1b4
    if-nez v4, :cond_e

    #@1b6
    .line 2416
    new-instance v4, Ljava/lang/RuntimeException;

    #@1b8
    .line 2417
    new-instance v5, Ljava/lang/StringBuilder;

    #@1ba
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1bd
    const-string/jumbo v6, "Unable to start activity "

    #@1c0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v5

    #@1c4
    move-object/from16 v0, v20

    #@1c6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v5

    #@1ca
    .line 2418
    const-string/jumbo v6, ": "

    #@1cd
    .line 2417
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v5

    #@1d1
    .line 2418
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@1d4
    move-result-object v6

    #@1d5
    .line 2417
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v5

    #@1d9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v5

    #@1dd
    .line 2416
    move-object/from16 v0, v22

    #@1df
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1e2
    throw v4

    #@1e3
    .line 2376
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v3    # "appContext":Landroid/content/Context;
    .restart local v8    # "app":Landroid/app/Application;
    .restart local v11    # "title":Ljava/lang/CharSequence;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v23    # "theme":I
    :cond_7
    :try_start_3
    move-object/from16 v0, p1

    #@1e5
    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1e7
    .line 2377
    const/4 v4, 0x1

    #@1e8
    move-object/from16 v0, p1

    #@1ea
    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@1ec
    .line 2378
    move-object/from16 v0, p1

    #@1ee
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1f0
    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    #@1f2
    if-nez v4, :cond_8

    #@1f4
    .line 2379
    invoke-virtual {v2}, Landroid/app/Activity;->performStart()V

    #@1f7
    .line 2380
    const/4 v4, 0x0

    #@1f8
    move-object/from16 v0, p1

    #@1fa
    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@1fc
    .line 2382
    :cond_8
    move-object/from16 v0, p1

    #@1fe
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@200
    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    #@202
    if-nez v4, :cond_a

    #@204
    .line 2383
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    #@207
    move-result v4

    #@208
    if-eqz v4, :cond_b

    #@20a
    .line 2384
    move-object/from16 v0, p1

    #@20c
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@20e
    if-nez v4, :cond_9

    #@210
    move-object/from16 v0, p1

    #@212
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@214
    if-eqz v4, :cond_a

    #@216
    .line 2385
    :cond_9
    move-object/from16 v0, p0

    #@218
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@21a
    move-object/from16 v0, p1

    #@21c
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@21e
    .line 2386
    move-object/from16 v0, p1

    #@220
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@222
    .line 2385
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@225
    .line 2392
    :cond_a
    :goto_1
    move-object/from16 v0, p1

    #@227
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@229
    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    #@22b
    if-nez v4, :cond_d

    #@22d
    .line 2393
    const/4 v4, 0x0

    #@22e
    iput-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    #@230
    .line 2394
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    #@233
    move-result v4

    #@234
    if-eqz v4, :cond_c

    #@236
    .line 2395
    move-object/from16 v0, p0

    #@238
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@23a
    move-object/from16 v0, p1

    #@23c
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@23e
    .line 2396
    move-object/from16 v0, p1

    #@240
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@242
    .line 2395
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@245
    .line 2400
    :goto_2
    iget-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    #@247
    if-nez v4, :cond_d

    #@249
    .line 2401
    new-instance v4, Landroid/util/SuperNotCalledException;

    #@24b
    .line 2402
    new-instance v5, Ljava/lang/StringBuilder;

    #@24d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@250
    const-string/jumbo v6, "Activity "

    #@253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v5

    #@257
    move-object/from16 v0, p1

    #@259
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@25b
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@25e
    move-result-object v6

    #@25f
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@262
    move-result-object v6

    #@263
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v5

    #@267
    .line 2403
    const-string/jumbo v6, " did not call through to super.onPostCreate()"

    #@26a
    .line 2402
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v5

    #@26e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@271
    move-result-object v5

    #@272
    .line 2401
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@275
    throw v4

    #@276
    .line 2388
    :cond_b
    move-object/from16 v0, p1

    #@278
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@27a
    if-eqz v4, :cond_a

    #@27c
    .line 2389
    move-object/from16 v0, p0

    #@27e
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@280
    move-object/from16 v0, p1

    #@282
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@284
    invoke-virtual {v4, v2, v5}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@287
    goto :goto_1

    #@288
    .line 2398
    :cond_c
    move-object/from16 v0, p0

    #@28a
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@28c
    move-object/from16 v0, p1

    #@28e
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@290
    invoke-virtual {v4, v2, v5}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@293
    goto :goto_2

    #@294
    .line 2407
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v23    # "theme":I
    :cond_d
    const/4 v4, 0x1

    #@295
    move-object/from16 v0, p1

    #@297
    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@299
    .line 2409
    move-object/from16 v0, p0

    #@29b
    iget-object v4, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@29d
    move-object/from16 v0, p1

    #@29f
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@2a1
    move-object/from16 v0, p1

    #@2a3
    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    #@2a6
    .line 2422
    .end local v8    # "app":Landroid/app/Application;
    :cond_e
    return-object v2
.end method

.method private performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "info"    # Landroid/app/ActivityThread$StopInfo;
    .param p3, "keepShown"    # Z
    .param p4, "saveState"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 3457
    if-eqz p1, :cond_6

    #@3
    .line 3458
    if-nez p3, :cond_1

    #@5
    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 3459
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@b
    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 3463
    return-void

    #@10
    .line 3465
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@12
    .line 3466
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Performing stop of activity that is not resumed: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 3467
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@20
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 3466
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 3465
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    .line 3468
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "ActivityThread"

    #@36
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    .line 3471
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    if-eqz p2, :cond_2

    #@3f
    .line 3476
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@41
    invoke-virtual {v2}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    #@44
    move-result-object v2

    #@45
    iput-object v2, p2, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 3488
    :cond_2
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@49
    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    #@4b
    if-nez v2, :cond_3

    #@4d
    if-eqz p4, :cond_3

    #@4f
    .line 3489
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@51
    if-nez v2, :cond_3

    #@53
    .line 3490
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@56
    .line 3494
    :cond_3
    if-nez p3, :cond_5

    #@58
    .line 3497
    :try_start_1
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@5a
    invoke-virtual {v2}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@5d
    .line 3506
    :cond_4
    iput-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@5f
    .line 3509
    :cond_5
    iput-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@61
    .line 3455
    :cond_6
    return-void

    #@62
    .line 3477
    :catch_0
    move-exception v0

    #@63
    .line 3478
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@65
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@67
    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@6a
    move-result v2

    #@6b
    if-nez v2, :cond_2

    #@6d
    .line 3479
    new-instance v2, Ljava/lang/RuntimeException;

    #@6f
    .line 3480
    new-instance v3, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v4, "Unable to save state of activity "

    #@77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    .line 3481
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@7d
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    .line 3480
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    .line 3482
    const-string/jumbo v4, ": "

    #@8c
    .line 3480
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    .line 3482
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    .line 3480
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v3

    #@9c
    .line 3479
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9f
    throw v2

    #@a0
    .line 3498
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@a1
    .line 3499
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@a3
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@a5
    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@a8
    move-result v2

    #@a9
    if-nez v2, :cond_4

    #@ab
    .line 3500
    new-instance v2, Ljava/lang/RuntimeException;

    #@ad
    .line 3501
    new-instance v3, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v4, "Unable to stop activity "

    #@b5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v3

    #@b9
    .line 3502
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@bb
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@be
    move-result-object v4

    #@bf
    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@c2
    move-result-object v4

    #@c3
    .line 3501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v3

    #@c7
    .line 3503
    const-string/jumbo v4, ": "

    #@ca
    .line 3501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v3

    #@ce
    .line 3503
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@d1
    move-result-object v4

    #@d2
    .line 3501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v3

    #@d6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v3

    #@da
    .line 3500
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@dd
    throw v2
.end method

.method static varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1950
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 1949
    return-void
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 3843
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    .line 3844
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    #@6
    const-string/jumbo v1, "[Unknown]"

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    goto :goto_0
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move v4, v3

    #@5
    move v5, v3

    #@6
    .line 2258
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    #@9
    .line 2257
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;I)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v5, v4

    #@6
    .line 2262
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    #@9
    .line 2261
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    #@0
    .prologue
    .line 2266
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    #@9
    .line 2265
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;IIZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    #@0
    .prologue
    .line 2273
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 2274
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 2275
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    .line 2276
    iput p3, v0, Landroid/os/Message;->arg1:I

    #@a
    .line 2277
    iput p4, v0, Landroid/os/Message;->arg2:I

    #@c
    .line 2278
    if-eqz p5, :cond_0

    #@e
    .line 2279
    const/4 v1, 0x1

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@12
    .line 2281
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@14
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 2269
    return-void
.end method

.method private setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V
    .locals 5
    .param p1, "info"    # Landroid/app/LoadedApk;
    .param p2, "cacheDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 4399
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 4401
    return-void

    #@7
    .line 4404
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@a
    move-result v2

    #@b
    .line 4405
    .local v2, "uid":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@e
    move-result-object v3

    #@f
    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 4409
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_1

    #@15
    array-length v3, v1

    #@16
    const/4 v4, 0x1

    #@17
    if-ne v3, v4, :cond_1

    #@19
    .line 4410
    invoke-static {p2}, Landroid/view/HardwareRenderer;->setupDiskCache(Ljava/io/File;)V

    #@1c
    .line 4411
    invoke-static {p2}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 4398
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_1
    :goto_0
    return-void

    #@20
    .line 4413
    :catch_0
    move-exception v0

    #@21
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static systemMain()Landroid/app/ActivityThread;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 5322
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 5323
    invoke-static {v2}, Landroid/view/HardwareRenderer;->disable(Z)V

    #@a
    .line 5327
    :goto_0
    new-instance v0, Landroid/app/ActivityThread;

    #@c
    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    #@f
    .line 5328
    .local v0, "thread":Landroid/app/ActivityThread;
    invoke-direct {v0, v2}, Landroid/app/ActivityThread;->attach(Z)V

    #@12
    .line 5329
    return-object v0

    #@13
    .line 5325
    .end local v0    # "thread":Landroid/app/ActivityThread;
    :cond_0
    invoke-static {}, Landroid/view/HardwareRenderer;->enableForegroundTrimming()V

    #@16
    goto :goto_0
.end method

.method private updateDefaultDensity()V
    .locals 3

    #@0
    .prologue
    .line 4419
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4420
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@6
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 4421
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 4418
    :cond_0
    :goto_0
    return-void

    #@f
    .line 4422
    :cond_1
    const-string/jumbo v0, "ActivityThread"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Switching default density from "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 4423
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@20
    .line 4422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 4423
    const-string/jumbo v2, " to "

    #@27
    .line 4422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 4424
    iget v2, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@2d
    .line 4422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 4425
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@3a
    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@3c
    .line 4426
    const/16 v0, 0xa0

    #@3e
    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    #@41
    goto :goto_0
.end method

.method private updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "show"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3514
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@3
    iget-object v0, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@5
    .line 3515
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2

    #@7
    .line 3516
    if-eqz p2, :cond_3

    #@9
    .line 3517
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@b
    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    #@d
    if-nez v1, :cond_0

    #@f
    .line 3518
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@11
    const/4 v2, 0x1

    #@12
    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    #@14
    .line 3519
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@1a
    .line 3520
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1c
    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 3521
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@22
    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    #@25
    .line 3524
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 3525
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@2c
    move-result-object v1

    #@2d
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@2f
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@32
    .line 3526
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@34
    if-eqz v1, :cond_1

    #@36
    .line 3527
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@39
    move-result-object v1

    #@3a
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@3c
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@3f
    .line 3531
    :cond_1
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@41
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@44
    move-result-object v2

    #@45
    invoke-static {v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    #@48
    .line 3532
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@4a
    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@4c
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@53
    move-result v1

    #@54
    invoke-static {v1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    #@57
    .line 3533
    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@59
    .line 3513
    :cond_2
    :goto_0
    return-void

    #@5a
    .line 3536
    :cond_3
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@5c
    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    #@5e
    if-eqz v1, :cond_2

    #@60
    .line 3537
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@62
    const/4 v2, 0x0

    #@63
    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    #@65
    .line 3538
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@67
    add-int/lit8 v1, v1, -0x1

    #@69
    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@6b
    .line 3539
    const/4 v1, 0x4

    #@6c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@6f
    goto :goto_0
.end method


# virtual methods
.method public final acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 4864
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@3
    monitor-enter v6

    #@4
    .line 4865
    :try_start_0
    new-instance v1, Landroid/app/ActivityThread$ProviderKey;

    #@6
    invoke-direct {v1, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    #@9
    .line 4866
    .local v1, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 4867
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-nez v2, :cond_0

    #@13
    monitor-exit v6

    #@14
    .line 4868
    return-object v9

    #@15
    .line 4871
    :cond_0
    :try_start_1
    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    #@17
    .line 4872
    .local v4, "provider":Landroid/content/IContentProvider;
    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v0

    #@1b
    .line 4873
    .local v0, "jBinder":Landroid/os/IBinder;
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    #@1e
    move-result v5

    #@1f
    if-nez v5, :cond_1

    #@21
    .line 4876
    const-string/jumbo v5, "ActivityThread"

    #@24
    new-instance v7, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v8, "Acquiring provider "

    #@2c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    const-string/jumbo v8, " for user "

    #@37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    .line 4877
    const-string/jumbo v8, ": existing object\'s process dead"

    #@42
    .line 4876
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 4878
    const/4 v5, 0x1

    #@4e
    invoke-virtual {p0, v0, v5}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    monitor-exit v6

    #@52
    .line 4879
    return-object v9

    #@53
    .line 4884
    :cond_1
    :try_start_2
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@55
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v3

    #@59
    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    #@5b
    .line 4885
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_2

    #@5d
    .line 4886
    invoke-direct {p0, v3, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    :cond_2
    monitor-exit v6

    #@61
    .line 4888
    return-object v4

    #@62
    .line 4864
    .end local v0    # "jBinder":Landroid/os/IBinder;
    .end local v1    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "provider":Landroid/content/IContentProvider;
    :catchall_0
    move-exception v5

    #@63
    monitor-exit v6

    #@64
    throw v5
.end method

.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4765
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    #@4
    move-result-object v8

    #@5
    .line 4766
    .local v8, "provider":Landroid/content/IContentProvider;
    if-eqz v8, :cond_0

    #@7
    .line 4767
    return-object v8

    #@8
    .line 4776
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 4778
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@c
    move-result-object v0

    #@d
    .line 4779
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@10
    move-result-object v1

    #@11
    .line 4778
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v2

    #@15
    .line 4782
    .end local v2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :goto_0
    if-nez v2, :cond_1

    #@17
    .line 4783
    const-string/jumbo v0, "ActivityThread"

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Failed to find provider info for "

    #@22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 4784
    return-object v4

    #@32
    .line 4789
    :cond_1
    iget-object v3, v2, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    #@34
    .line 4790
    iget-boolean v5, v2, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    #@36
    const/4 v4, 0x1

    #@37
    move-object v0, p0

    #@38
    move-object v1, p1

    #@39
    move v6, p4

    #@3a
    .line 4789
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    #@3d
    move-result-object v2

    #@3e
    .line 4791
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    iget-object v0, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@40
    return-object v0

    #@41
    .line 4780
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catch_0
    move-exception v7

    #@42
    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method final appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "provider"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 5061
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@2
    monitor-enter v3

    #@3
    .line 5062
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 5063
    .local v1, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v1, :cond_0

    #@d
    .line 5065
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@10
    move-result-object v2

    #@11
    .line 5066
    iget-object v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@13
    iget-object v4, v4, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@15
    .line 5065
    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :cond_0
    :goto_0
    monitor-exit v3

    #@19
    .line 5060
    return-void

    #@1a
    .line 5061
    .end local v1    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit v3

    #@1c
    throw v2

    #@1d
    .line 5067
    .restart local v1    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catch_0
    move-exception v0

    #@1e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method final applyCompatConfiguration(I)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "displayDensity"    # I

    #@0
    .prologue
    .line 4195
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@2
    .line 4196
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 4197
    new-instance v1, Landroid/content/res/Configuration;

    #@8
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    #@b
    iput-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@d
    .line 4199
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@f
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@11
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@14
    .line 4200
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@16
    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@18
    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyCompatConfiguration(ILandroid/content/res/Configuration;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 4201
    iget-object v0, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@20
    .line 4203
    :cond_1
    return-object v0
.end method

.method applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1684
    if-nez p2, :cond_0

    #@3
    .line 1685
    return-object v0

    #@4
    .line 1687
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 1688
    iget-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    #@c
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@f
    .line 1689
    iget-object p2, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    #@11
    .line 1690
    invoke-virtual {p3, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    #@14
    .line 1692
    :cond_1
    return-object p2
.end method

.method public final applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 4189
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@2
    monitor-enter v1

    #@3
    .line 4190
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 4188
    return-void

    #@b
    .line 4189
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "allActivities"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4095
    new-instance v6, Ljava/util/ArrayList;

    #@2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 4097
    .local v6, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v10, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@7
    monitor-enter v10

    #@8
    .line 4098
    :try_start_0
    iget-object v9, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v1

    #@e
    .line 4099
    .local v1, "NAPP":I
    const/4 v7, 0x0

    #@f
    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_0

    #@11
    .line 4100
    iget-object v9, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v9

    #@17
    check-cast v9, Landroid/content/ComponentCallbacks2;

    #@19
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 4099
    add-int/lit8 v7, v7, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 4102
    :cond_0
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@21
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    #@24
    move-result v0

    #@25
    .line 4103
    .local v0, "NACT":I
    const/4 v7, 0x0

    #@26
    :goto_1
    if-ge v7, v0, :cond_4

    #@28
    .line 4104
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2a
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    #@30
    .line 4105
    .local v5, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@32
    .line 4106
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_2

    #@34
    .line 4108
    iget v9, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@36
    .line 4109
    iget-object v11, v5, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@38
    invoke-virtual {v11}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@3b
    move-result-object v11

    #@3c
    .line 4107
    invoke-virtual {p0, v9, p2, v11}, Landroid/app/ActivityThread;->applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;

    #@3f
    move-result-object v8

    #@40
    .line 4110
    .local v8, "thisConfig":Landroid/content/res/Configuration;
    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@42
    iget-boolean v9, v9, Landroid/app/Activity;->mFinished:Z

    #@44
    if-nez v9, :cond_1

    #@46
    if-nez p1, :cond_3

    #@48
    iget-boolean v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@4a
    if-eqz v9, :cond_3

    #@4c
    .line 4114
    :cond_1
    if-eqz v8, :cond_2

    #@4e
    .line 4124
    iput-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@50
    .line 4103
    .end local v8    # "thisConfig":Landroid/content/res/Configuration;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@52
    goto :goto_1

    #@53
    .line 4113
    .restart local v8    # "thisConfig":Landroid/content/res/Configuration;
    :cond_3
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    goto :goto_2

    #@57
    .line 4097
    .end local v0    # "NACT":I
    .end local v1    # "NAPP":I
    .end local v4    # "a":Landroid/app/Activity;
    .end local v5    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v7    # "i":I
    .end local v8    # "thisConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v9

    #@58
    monitor-exit v10

    #@59
    throw v9

    #@5a
    .line 4128
    .restart local v0    # "NACT":I
    .restart local v1    # "NAPP":I
    .restart local v7    # "i":I
    :cond_4
    :try_start_1
    iget-object v9, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    #@5c
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    #@5f
    move-result v3

    #@60
    .line 4129
    .local v3, "NSVC":I
    const/4 v7, 0x0

    #@61
    :goto_3
    if-ge v7, v3, :cond_5

    #@63
    .line 4130
    iget-object v9, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    #@65
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@68
    move-result-object v9

    #@69
    check-cast v9, Landroid/content/ComponentCallbacks2;

    #@6b
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6e
    .line 4129
    add-int/lit8 v7, v7, 0x1

    #@70
    goto :goto_3

    #@71
    :cond_5
    monitor-exit v10

    #@72
    .line 4133
    iget-object v10, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@74
    monitor-enter v10

    #@75
    .line 4134
    :try_start_2
    iget-object v9, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    #@77
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    #@7a
    move-result v2

    #@7b
    .line 4135
    .local v2, "NPRV":I
    const/4 v7, 0x0

    #@7c
    :goto_4
    if-ge v7, v2, :cond_6

    #@7e
    .line 4136
    iget-object v9, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    #@80
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@83
    move-result-object v9

    #@84
    check-cast v9, Landroid/app/ActivityThread$ProviderClientRecord;

    #@86
    iget-object v9, v9, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    #@88
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@8b
    .line 4135
    add-int/lit8 v7, v7, 0x1

    #@8d
    goto :goto_4

    #@8e
    :cond_6
    monitor-exit v10

    #@8f
    .line 4140
    return-object v6

    #@90
    .line 4133
    .end local v2    # "NPRV":I
    :catchall_1
    move-exception v9

    #@91
    monitor-exit v10

    #@92
    throw v9
.end method

.method final completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .locals 9
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;

    #@0
    .prologue
    .line 4982
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@2
    monitor-enter v7

    #@3
    .line 4983
    :try_start_0
    iget-boolean v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v6, :cond_0

    #@7
    monitor-exit v7

    #@8
    .line 4989
    return-void

    #@9
    .line 4995
    :cond_0
    const/4 v6, 0x0

    #@a
    :try_start_1
    iput-boolean v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@c
    .line 4997
    iget-object v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@e
    iget-object v6, v6, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@10
    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v3

    #@14
    .line 4998
    .local v3, "jBinder":Landroid/os/IBinder;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;

    #@1c
    .line 4999
    .local v1, "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    if-ne v1, p1, :cond_1

    #@1e
    .line 5000
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 5003
    :cond_1
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@25
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@28
    move-result v6

    #@29
    add-int/lit8 v2, v6, -0x1

    #@2b
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    #@2d
    .line 5004
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@2f
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@32
    move-result-object v5

    #@33
    check-cast v5, Landroid/app/ActivityThread$ProviderClientRecord;

    #@35
    .line 5005
    .local v5, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    #@37
    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@3a
    move-result-object v4

    #@3b
    .line 5006
    .local v4, "myBinder":Landroid/os/IBinder;
    if-ne v4, v3, :cond_2

    #@3d
    .line 5007
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@3f
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    .line 5003
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@44
    goto :goto_0

    #@45
    .end local v4    # "myBinder":Landroid/os/IBinder;
    .end local v5    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_3
    monitor-exit v7

    #@46
    .line 5017
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@49
    move-result-object v6

    #@4a
    .line 5018
    iget-object v7, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@4c
    iget-object v7, v7, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@4e
    const/4 v8, 0x0

    #@4f
    .line 5017
    invoke-interface {v6, v7, v8}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@52
    .line 4981
    :goto_1
    return-void

    #@53
    .line 4982
    .end local v1    # "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v2    # "i":I
    .end local v3    # "jBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v6

    #@54
    monitor-exit v7

    #@55
    throw v6

    #@56
    .line 5019
    .restart local v1    # "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    .restart local v2    # "i":I
    .restart local v3    # "jBinder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@57
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method doGcIfNeeded()V
    .locals 6

    #@0
    .prologue
    .line 1928
    const/4 v2, 0x0

    #@1
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    #@3
    .line 1929
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v0

    #@7
    .line 1932
    .local v0, "now":J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    #@a
    move-result-wide v2

    #@b
    const-wide/16 v4, 0x1388

    #@d
    add-long/2addr v2, v4

    #@e
    cmp-long v2, v2, v0

    #@10
    if-gez v2, :cond_0

    #@12
    .line 1934
    const-string/jumbo v2, "bg"

    #@15
    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    #@18
    .line 1927
    :cond_0
    return-void
.end method

.method ensureJitEnabled()V
    .locals 1

    #@0
    .prologue
    .line 1905
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1906
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    #@7
    .line 1907
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    #@e
    .line 1904
    :cond_0
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4721
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 4722
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@6
    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@c
    iget-boolean v2, v2, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 4723
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@12
    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@14
    if-nez v2, :cond_0

    #@16
    .line 4724
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    #@19
    .line 4729
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@1b
    invoke-interface {v0, v2, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 4720
    :goto_0
    return-void

    #@1f
    .line 4730
    :catch_0
    move-exception v1

    #@20
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2244
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@a
    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    #@0
    .prologue
    .line 1879
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@2
    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    #@0
    .prologue
    .line 1857
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@2
    return-object v0
.end method

.method final getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 1706
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@2
    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    #@0
    .prologue
    .line 1862
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@2
    return-object v0
.end method

.method public getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 5339
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@2
    monitor-enter v1

    #@3
    .line 5340
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 5341
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 5343
    return p2

    #@11
    .line 5339
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    #@0
    .prologue
    .line 1875
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    #@2
    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1763
    and-int/lit8 v0, p3, 0x1

    #@3
    if-eqz v0, :cond_1

    #@5
    const/4 v5, 0x1

    #@6
    .line 1764
    .local v5, "includeCode":Z
    :goto_0
    if-eqz v5, :cond_4

    #@8
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@a
    if-eqz v0, :cond_4

    #@c
    .line 1765
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@e
    const/16 v1, 0x3e8

    #@10
    if-eq v0, v1, :cond_4

    #@12
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@14
    if-eqz v0, :cond_3

    #@16
    .line 1766
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@18
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@1a
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1c
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1e
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    const/4 v4, 0x0

    #@25
    .line 1768
    .local v4, "securityViolation":Z
    :goto_1
    if-eqz v5, :cond_5

    #@27
    const/high16 v0, 0x40000000    # 2.0f

    #@29
    and-int/2addr v0, p3

    #@2a
    if-eqz v0, :cond_5

    #@2c
    const/4 v6, 0x1

    #@2d
    .line 1769
    .local v6, "registerPackage":Z
    :goto_2
    and-int/lit8 v0, p3, 0x3

    #@2f
    .line 1771
    const/4 v1, 0x1

    #@30
    .line 1769
    if-ne v0, v1, :cond_6

    #@32
    .line 1772
    if-eqz v4, :cond_6

    #@34
    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v1, "Requesting code from "

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 1774
    const-string/jumbo v1, " (with uid "

    #@49
    .line 1773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 1774
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4f
    .line 1773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 1774
    const-string/jumbo v1, ")"

    #@56
    .line 1773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v7

    #@5e
    .line 1775
    .local v7, "msg":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@60
    if-eqz v0, :cond_0

    #@62
    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    const-string/jumbo v1, " to be run in process "

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    .line 1777
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@74
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@76
    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 1777
    const-string/jumbo v1, " (with uid "

    #@7d
    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 1778
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@83
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@85
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@87
    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    .line 1778
    const-string/jumbo v1, ")"

    #@8e
    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v7

    #@96
    .line 1780
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    #@98
    invoke-direct {v0, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v0

    #@9c
    .line 1763
    .end local v4    # "securityViolation":Z
    .end local v5    # "includeCode":Z
    .end local v6    # "registerPackage":Z
    .end local v7    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    #@9d
    .restart local v5    # "includeCode":Z
    goto/16 :goto_0

    #@9f
    .line 1766
    :cond_2
    const/4 v4, 0x1

    #@a0
    .restart local v4    # "securityViolation":Z
    goto :goto_1

    #@a1
    .line 1767
    .end local v4    # "securityViolation":Z
    :cond_3
    const/4 v4, 0x1

    #@a2
    .restart local v4    # "securityViolation":Z
    goto :goto_1

    #@a3
    .line 1764
    .end local v4    # "securityViolation":Z
    :cond_4
    const/4 v4, 0x0

    #@a4
    .restart local v4    # "securityViolation":Z
    goto :goto_1

    #@a5
    .line 1768
    :cond_5
    const/4 v6, 0x0

    #@a6
    .restart local v6    # "registerPackage":Z
    goto :goto_2

    #@a7
    :cond_6
    move-object v0, p0

    #@a8
    move-object v1, p1

    #@a9
    move-object v2, p2

    #@aa
    .line 1783
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    #@ad
    move-result-object v0

    #@ae
    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1711
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1716
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@4
    move-result v5

    #@5
    if-eq v5, p4, :cond_1

    #@7
    const/4 v1, 0x1

    #@8
    .line 1717
    .local v1, "differentUser":Z
    :goto_0
    iget-object v6, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@a
    monitor-enter v6

    #@b
    .line 1719
    if-eqz v1, :cond_2

    #@d
    .line 1721
    const/4 v4, 0x0

    #@e
    .line 1728
    :goto_1
    if-eqz v4, :cond_4

    #@10
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/app/LoadedApk;

    #@16
    .line 1732
    :goto_2
    if-eqz v3, :cond_6

    #@18
    iget-object v5, v3, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 1733
    iget-object v5, v3, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@1e
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5}, Landroid/content/res/AssetManager;->isUpToDate()Z

    #@25
    move-result v5

    #@26
    .line 1732
    if-eqz v5, :cond_6

    #@28
    .line 1734
    :cond_0
    invoke-virtual {v3}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_5

    #@2e
    .line 1735
    and-int/lit8 v5, p3, 0x2

    #@30
    if-nez v5, :cond_5

    #@32
    .line 1736
    new-instance v5, Ljava/lang/SecurityException;

    #@34
    .line 1737
    new-instance v7, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v8, "Requesting code from "

    #@3c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v7

    #@44
    .line 1738
    const-string/jumbo v8, " to be run in process "

    #@47
    .line 1737
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v7

    #@4b
    .line 1739
    iget-object v8, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@4d
    iget-object v8, v8, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@4f
    .line 1737
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    .line 1740
    const-string/jumbo v8, "/"

    #@56
    .line 1737
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    .line 1740
    iget-object v8, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@5c
    iget-object v8, v8, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@5e
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@60
    .line 1737
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v7

    #@64
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v7

    #@68
    .line 1736
    invoke-direct {v5, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6c
    .line 1717
    :catchall_0
    move-exception v5

    #@6d
    monitor-exit v6

    #@6e
    throw v5

    #@6f
    .line 1716
    .end local v1    # "differentUser":Z
    :cond_1
    const/4 v1, 0x0

    #@70
    .restart local v1    # "differentUser":Z
    goto :goto_0

    #@71
    .line 1722
    :cond_2
    and-int/lit8 v5, p3, 0x1

    #@73
    if-eqz v5, :cond_3

    #@75
    .line 1723
    :try_start_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@77
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7a
    move-result-object v4

    #@7b
    check-cast v4, Ljava/lang/ref/WeakReference;

    #@7d
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    #@7e
    .line 1725
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_3
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@80
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    move-result-object v4

    #@84
    check-cast v4, Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@86
    .restart local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    #@87
    .line 1728
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    const/4 v3, 0x0

    #@88
    .local v3, "packageInfo":Landroid/app/LoadedApk;
    goto :goto_2

    #@89
    .end local v3    # "packageInfo":Landroid/app/LoadedApk;
    :cond_5
    monitor-exit v6

    #@8a
    .line 1742
    return-object v3

    #@8b
    :cond_6
    monitor-exit v6

    #@8c
    .line 1746
    const/4 v0, 0x0

    #@8d
    .line 1748
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@90
    move-result-object v5

    #@91
    .line 1749
    const/16 v6, 0x400

    #@93
    .line 1748
    invoke-interface {v5, p1, v6, p4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@96
    move-result-object v0

    #@97
    .line 1754
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_3
    if-eqz v0, :cond_7

    #@99
    .line 1755
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    #@9c
    move-result-object v5

    #@9d
    return-object v5

    #@9e
    .line 1758
    :cond_7
    return-object v7

    #@9f
    .line 1750
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    #@a0
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .locals 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1789
    const/4 v3, 0x0

    #@2
    const/4 v5, 0x1

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move v6, v4

    #@7
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1883
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@2
    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1871
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@2
    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public getSystemContext()Landroid/app/ContextImpl;
    .locals 1

    #@0
    .prologue
    .line 1887
    monitor-enter p0

    #@1
    .line 1888
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1889
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    #@b
    .line 1891
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v0

    #@f
    .line 1887
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 8
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "pkgInfo"    # Landroid/app/LoadedApk;

    #@0
    .prologue
    .line 1701
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@2
    .line 1702
    invoke-virtual {p7}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@5
    move-result-object v7

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, p4

    #@a
    move v5, p5

    #@b
    move-object v6, p6

    #@c
    .line 1701
    invoke-virtual/range {v0 .. v7}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method final handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;)V
    .locals 3
    .param p1, "data"    # Landroid/app/ActivityThread$ActivityConfigChangeData;

    #@0
    .prologue
    .line 4264
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->activityToken:Landroid/os/IBinder;

    #@4
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@a
    .line 4265
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@c
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@e
    if-nez v1, :cond_1

    #@10
    .line 4266
    :cond_0
    return-void

    #@11
    .line 4272
    :cond_1
    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@17
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@1a
    .line 4273
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 4274
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    #@20
    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@22
    .line 4275
    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    #@28
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@2b
    .line 4277
    :cond_2
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@2d
    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    #@34
    .line 4279
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@36
    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@38
    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@3a
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@3d
    move-result v1

    #@3e
    invoke-static {v1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    #@41
    .line 4281
    const/4 v1, 0x1

    #@42
    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@44
    .line 4263
    return-void
.end method

.method public handleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2628
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    #@9
    .line 2629
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_1

    #@b
    .line 2630
    const/4 v3, 0x1

    #@c
    iput-boolean v3, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@e
    .line 2631
    iget-object v0, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@10
    .line 2632
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v3, v0, Landroid/app/Activity;->mVisibleBehind:Z

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 2633
    iput-boolean v4, v0, Landroid/app/Activity;->mCalled:Z

    #@16
    .line 2634
    invoke-virtual {v0}, Landroid/app/Activity;->onVisibleBehindCanceled()V

    #@19
    .line 2636
    iget-boolean v3, v0, Landroid/app/Activity;->mCalled:Z

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 2637
    new-instance v3, Landroid/util/SuperNotCalledException;

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "Activity "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 2638
    const-string/jumbo v5, " did not call through to super.onVisibleBehindCanceled()"

    #@36
    .line 2637
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@41
    throw v3

    #@42
    .line 2640
    :cond_0
    iput-boolean v4, v0, Landroid/app/Activity;->mVisibleBehind:Z

    #@44
    .line 2644
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@47
    move-result-object v3

    #@48
    invoke-interface {v3, p1}, Landroid/app/IActivityManager;->backgroundResourcesReleased(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    .line 2627
    :goto_0
    return-void

    #@4c
    .line 2645
    :catch_0
    move-exception v1

    #@4d
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method final handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 4208
    const/4 v2, 0x0

    #@1
    .line 4210
    .local v2, "configDiff":I
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@3
    monitor-enter v5

    #@4
    .line 4211
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 4212
    iget-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@a
    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_0

    #@10
    .line 4213
    iget-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@12
    .line 4214
    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@14
    iput v4, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@16
    .line 4215
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    #@19
    .line 4217
    :cond_0
    const/4 v4, 0x0

    #@1a
    iput-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 4220
    :cond_1
    if-nez p1, :cond_2

    #@1e
    monitor-exit v5

    #@1f
    .line 4221
    return-void

    #@20
    .line 4227
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@22
    invoke-virtual {v4, p1, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    #@25
    .line 4229
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@27
    if-nez v4, :cond_3

    #@29
    .line 4230
    new-instance v4, Landroid/content/res/Configuration;

    #@2b
    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    #@2e
    iput-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@30
    .line 4232
    :cond_3
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@32
    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    move-result v4

    #@36
    if-nez v4, :cond_4

    #@38
    if-nez p2, :cond_4

    #@3a
    monitor-exit v5

    #@3b
    .line 4233
    return-void

    #@3c
    .line 4236
    :cond_4
    :try_start_2
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@3e
    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@41
    move-result v2

    #@42
    .line 4237
    iget v4, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@44
    invoke-virtual {p0, v4}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    move-result-object p1

    #@48
    monitor-exit v5

    #@49
    .line 4240
    const/4 v4, 0x0

    #@4a
    invoke-virtual {p0, v4, p1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    #@4d
    move-result-object v1

    #@4e
    .line 4242
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-static {v2}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    #@51
    .line 4244
    if-eqz v1, :cond_5

    #@53
    .line 4245
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v0

    #@57
    .line 4246
    .local v0, "N":I
    const/4 v3, 0x0

    #@58
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    #@5a
    .line 4247
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v4

    #@5e
    check-cast v4, Landroid/content/ComponentCallbacks2;

    #@60
    invoke-static {v4, p1}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    #@63
    .line 4246
    add-int/lit8 v3, v3, 0x1

    #@65
    goto :goto_0

    #@66
    .line 4210
    .end local v0    # "N":I
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    #@67
    monitor-exit v5

    #@68
    throw v4

    #@69
    .line 4206
    .restart local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    :cond_5
    return-void
.end method

.method final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 4336
    const/4 v0, 0x0

    #@1
    .line 4337
    .local v0, "hasPkgInfo":Z
    if-eqz p2, :cond_3

    #@3
    .line 4338
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@5
    monitor-enter v4

    #@6
    .line 4339
    :try_start_0
    array-length v3, p2

    #@7
    add-int/lit8 v1, v3, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@b
    .line 4341
    if-nez v0, :cond_0

    #@d
    .line 4343
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@f
    aget-object v5, p2, v1

    #@11
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@17
    .line 4344
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_1

    #@19
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 4345
    const/4 v0, 0x1

    #@20
    .line 4353
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@22
    aget-object v5, p2, v1

    #@24
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 4354
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@29
    aget-object v5, p2, v1

    #@2b
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 4339
    add-int/lit8 v1, v1, -0x1

    #@30
    goto :goto_0

    #@31
    .line 4347
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@33
    aget-object v5, p2, v1

    #@35
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@3b
    .line 4348
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_0

    #@3d
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    move-result-object v3

    #@41
    if-eqz v3, :cond_0

    #@43
    .line 4349
    const/4 v0, 0x1

    #@44
    goto :goto_1

    #@45
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    monitor-exit v4

    #@46
    .line 4358
    .end local v1    # "i":I
    :cond_3
    invoke-static {p1, p2, v0}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    #@49
    .line 4335
    return-void

    #@4a
    .line 4338
    :catchall_0
    move-exception v3

    #@4b
    monitor-exit v4

    #@4c
    throw v3
.end method

.method public handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 2657
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v0

    #@4
    .line 2659
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@6
    const/4 v2, 0x1

    #@7
    new-array v2, v2, [Landroid/content/pm/ProviderInfo;

    #@9
    const/4 v3, 0x0

    #@a
    aput-object p1, v2, v3

    #@c
    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    #@f
    move-result-object v2

    #@10
    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 2661
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@16
    .line 2656
    return-void

    #@17
    .line 2660
    :catchall_0
    move-exception v1

    #@18
    .line 2661
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@1b
    .line 2660
    throw v1
.end method

.method final handleLowMemory()V
    .locals 6

    #@0
    .prologue
    .line 4363
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    #@5
    move-result-object v1

    #@6
    .line 4365
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 4366
    .local v0, "N":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@d
    .line 4367
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Landroid/content/ComponentCallbacks2;

    #@13
    invoke-interface {v4}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    #@16
    .line 4366
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 4371
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@1c
    move-result v4

    #@1d
    const/16 v5, 0x3e8

    #@1f
    if-eq v4, v5, :cond_1

    #@21
    .line 4372
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    #@24
    move-result v3

    #@25
    .line 4373
    .local v3, "sqliteReleased":I
    const v4, 0x124fb

    #@28
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    #@2b
    .line 4377
    .end local v3    # "sqliteReleased":I
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    #@2e
    .line 4380
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    #@31
    .line 4382
    const-string/jumbo v4, "mem"

    #@34
    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    #@37
    .line 4362
    return-void
.end method

.method public handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 2650
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 2651
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@a
    .line 2652
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v1, p2}, Landroid/app/Activity;->onBackgroundVisibleBehindChanged(Z)V

    #@f
    .line 2649
    :cond_0
    return-void
.end method

.method final handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 5
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    #@0
    .prologue
    .line 4285
    if-eqz p1, :cond_0

    #@2
    .line 4289
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@4
    invoke-virtual {v2, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    #@7
    .line 4290
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@9
    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 4298
    :try_start_1
    iget-object v2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@e
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@11
    .line 4284
    :goto_0
    return-void

    #@12
    .line 4299
    :catch_0
    move-exception v0

    #@13
    .line 4300
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    #@16
    const-string/jumbo v3, "Failure closing profile fd"

    #@19
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0

    #@1d
    .line 4293
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@1e
    .line 4294
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v2, "ActivityThread"

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "Profiling failed on path "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    iget-object v4, p2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 4295
    const-string/jumbo v4, " -- can the process access this path?"

    #@36
    .line 4294
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    .line 4298
    :try_start_3
    iget-object v2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@43
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@46
    goto :goto_0

    #@47
    .line 4299
    :catch_2
    move-exception v0

    #@48
    .line 4300
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    #@4b
    const-string/jumbo v3, "Failure closing profile fd"

    #@4e
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    goto :goto_0

    #@52
    .line 4296
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    #@53
    .line 4298
    :try_start_4
    iget-object v3, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@55
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@58
    .line 4296
    :goto_1
    throw v2

    #@59
    .line 4299
    :catch_3
    move-exception v0

    #@5a
    .line 4300
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "ActivityThread"

    #@5d
    const-string/jumbo v4, "Failure closing profile fd"

    #@60
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@63
    goto :goto_1

    #@64
    .line 4306
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@66
    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    #@69
    goto :goto_0
.end method

.method public handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .locals 11
    .param p1, "cmd"    # Landroid/app/ActivityThread$RequestAssistContextExtras;

    #@0
    .prologue
    .line 2570
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructure:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2571
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructure:Ljava/lang/ref/WeakReference;

    #@6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, Landroid/app/assist/AssistStructure;

    #@c
    .line 2572
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v3, :cond_0

    #@e
    .line 2573
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    #@11
    .line 2576
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    #@13
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@16
    .line 2577
    .local v2, "data":Landroid/os/Bundle;
    const/4 v3, 0x0

    #@17
    .line 2578
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    new-instance v4, Landroid/app/assist/AssistContent;

    #@19
    invoke-direct {v4}, Landroid/app/assist/AssistContent;-><init>()V

    #@1c
    .line 2579
    .local v4, "content":Landroid/app/assist/AssistContent;
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@1e
    iget-object v10, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    #@20
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v9

    #@24
    check-cast v9, Landroid/app/ActivityThread$ActivityClientRecord;

    #@26
    .line 2580
    .local v9, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v5, 0x0

    #@27
    .line 2581
    .local v5, "referrer":Landroid/net/Uri;
    if-eqz v9, :cond_2

    #@29
    .line 2582
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@2b
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@2e
    move-result-object v1

    #@2f
    iget-object v10, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@31
    invoke-virtual {v1, v10, v2}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@34
    .line 2583
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@36
    invoke-virtual {v1, v2}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    #@39
    .line 2584
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@3b
    invoke-virtual {v1}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    #@3e
    move-result-object v5

    #@3f
    .line 2585
    .local v5, "referrer":Landroid/net/Uri;
    iget v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    #@41
    const/4 v10, 0x1

    #@42
    if-ne v1, v10, :cond_2

    #@44
    .line 2586
    new-instance v3, Landroid/app/assist/AssistStructure;

    #@46
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@48
    invoke-direct {v3, v1}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;)V

    #@4b
    .line 2587
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@4d
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@50
    move-result-object v6

    #@51
    .line 2588
    .local v6, "activityIntent":Landroid/content/Intent;
    if-eqz v6, :cond_4

    #@53
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@55
    if-eqz v1, :cond_1

    #@57
    .line 2589
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@59
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@5c
    move-result-object v1

    #@5d
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@5f
    and-int/lit16 v1, v1, 0x2000

    #@61
    if-nez v1, :cond_4

    #@63
    .line 2591
    :cond_1
    new-instance v8, Landroid/content/Intent;

    #@65
    invoke-direct {v8, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@68
    .line 2592
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    #@6b
    move-result v1

    #@6c
    and-int/lit8 v1, v1, -0x43

    #@6e
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@71
    .line 2594
    invoke-virtual {v8}, Landroid/content/Intent;->removeUnsafeExtras()V

    #@74
    .line 2595
    invoke-virtual {v4, v8}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    #@77
    .line 2599
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@79
    invoke-virtual {v1, v4}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    #@7c
    .line 2602
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    .end local v5    # "referrer":Landroid/net/Uri;
    .end local v6    # "activityIntent":Landroid/content/Intent;
    :cond_2
    if-nez v3, :cond_3

    #@7e
    .line 2603
    new-instance v3, Landroid/app/assist/AssistStructure;

    #@80
    invoke-direct {v3}, Landroid/app/assist/AssistStructure;-><init>()V

    #@83
    .line 2605
    :cond_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@85
    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@88
    iput-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructure:Ljava/lang/ref/WeakReference;

    #@8a
    .line 2606
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@8d
    move-result-object v0

    #@8e
    .line 2608
    .local v0, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    #@90
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@93
    .line 2569
    :goto_1
    return-void

    #@94
    .line 2597
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    .restart local v3    # "structure":Landroid/app/assist/AssistStructure;
    .restart local v5    # "referrer":Landroid/net/Uri;
    .restart local v6    # "activityIntent":Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    #@96
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@99
    invoke-virtual {v4, v1}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    #@9c
    goto :goto_0

    #@9d
    .line 2609
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    .end local v5    # "referrer":Landroid/net/Uri;
    .end local v6    # "activityIntent":Landroid/content/Intent;
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :catch_0
    move-exception v7

    #@9e
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method final handleResumeActivity(Landroid/os/IBinder;ZZZ)V
    .locals 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clearHide"    # Z
    .param p3, "isForward"    # Z
    .param p4, "reallyResume"    # Z

    #@0
    .prologue
    .line 3130
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@3
    .line 3131
    const/4 v9, 0x1

    #@4
    iput-boolean v9, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@6
    .line 3134
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    #@9
    move-result-object v6

    #@a
    .line 3136
    .local v6, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v6, :cond_d

    #@c
    .line 3137
    iget-object v0, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@e
    .line 3144
    .local v0, "a":Landroid/app/Activity;
    if-eqz p3, :cond_6

    #@10
    .line 3145
    const/16 v4, 0x100

    #@12
    .line 3150
    .local v4, "forwardBit":I
    :goto_0
    iget-boolean v9, v0, Landroid/app/Activity;->mStartedActivity:Z

    #@14
    if-eqz v9, :cond_7

    #@16
    const/4 v7, 0x0

    #@17
    .line 3151
    .local v7, "willBeVisible":Z
    :goto_1
    if-nez v7, :cond_0

    #@19
    .line 3153
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1c
    move-result-object v9

    #@1d
    .line 3154
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    #@20
    move-result-object v10

    #@21
    .line 3153
    invoke-interface {v9, v10}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@24
    move-result v7

    #@25
    .line 3158
    .end local v7    # "willBeVisible":Z
    :cond_0
    :goto_2
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@27
    if-nez v9, :cond_1

    #@29
    iget-boolean v9, v0, Landroid/app/Activity;->mFinished:Z

    #@2b
    if-eqz v9, :cond_8

    #@2d
    .line 3175
    :cond_1
    if-nez v7, :cond_2

    #@2f
    .line 3178
    const/4 v9, 0x1

    #@30
    iput-boolean v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    #@32
    .line 3182
    :cond_2
    :goto_3
    invoke-static {v6}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@35
    .line 3186
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@37
    iget-boolean v9, v9, Landroid/app/Activity;->mFinished:Z

    #@39
    if-nez v9, :cond_3

    #@3b
    if-eqz v7, :cond_3

    #@3d
    .line 3187
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@3f
    iget-object v9, v9, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@41
    if-eqz v9, :cond_3

    #@43
    iget-boolean v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    #@45
    if-eqz v9, :cond_9

    #@47
    .line 3221
    :cond_3
    :goto_4
    iget-boolean v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@49
    if-nez v9, :cond_4

    #@4b
    .line 3222
    iget-object v9, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    #@4d
    iput-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    #@4f
    .line 3223
    iput-object v6, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    #@51
    .line 3226
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@54
    move-result-object v9

    #@55
    new-instance v10, Landroid/app/ActivityThread$Idler;

    #@57
    const/4 v11, 0x0

    #@58
    invoke-direct {v10, p0, v11}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$Idler;)V

    #@5b
    invoke-virtual {v9, v10}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@5e
    .line 3228
    :cond_4
    const/4 v9, 0x0

    #@5f
    iput-boolean v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@61
    .line 3231
    if-eqz p4, :cond_5

    #@63
    .line 3233
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@66
    move-result-object v9

    #@67
    invoke-interface {v9, p1}, Landroid/app/IActivityManager;->activityResumed(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@6a
    .line 3127
    .end local v0    # "a":Landroid/app/Activity;
    .end local v4    # "forwardBit":I
    :cond_5
    :goto_5
    return-void

    #@6b
    .line 3145
    .restart local v0    # "a":Landroid/app/Activity;
    :cond_6
    const/4 v4, 0x0

    #@6c
    .restart local v4    # "forwardBit":I
    goto :goto_0

    #@6d
    .line 3150
    :cond_7
    const/4 v7, 0x1

    #@6e
    .restart local v7    # "willBeVisible":Z
    goto :goto_1

    #@6f
    .line 3158
    .end local v7    # "willBeVisible":Z
    :cond_8
    if-eqz v7, :cond_1

    #@71
    .line 3159
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@73
    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@76
    move-result-object v9

    #@77
    iput-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@79
    .line 3160
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@7b
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@7e
    move-result-object v1

    #@7f
    .line 3161
    .local v1, "decor":Landroid/view/View;
    const/4 v9, 0x4

    #@80
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    #@83
    .line 3162
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@86
    move-result-object v8

    #@87
    .line 3163
    .local v8, "wm":Landroid/view/ViewManager;
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@89
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@8c
    move-result-object v5

    #@8d
    .line 3164
    .local v5, "l":Landroid/view/WindowManager$LayoutParams;
    iput-object v1, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@8f
    .line 3165
    const/4 v9, 0x1

    #@90
    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@92
    .line 3166
    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@94
    or-int/2addr v9, v4

    #@95
    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@97
    .line 3167
    iget-boolean v9, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    #@99
    if-eqz v9, :cond_2

    #@9b
    .line 3168
    const/4 v9, 0x1

    #@9c
    iput-boolean v9, v0, Landroid/app/Activity;->mWindowAdded:Z

    #@9e
    .line 3169
    invoke-interface {v8, v1, v5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@a1
    goto :goto_3

    #@a2
    .line 3188
    .end local v1    # "decor":Landroid/view/View;
    .end local v5    # "l":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "wm":Landroid/view/ViewManager;
    :cond_9
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@a4
    if-eqz v9, :cond_b

    #@a6
    .line 3189
    invoke-static {v6}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@a9
    move-result-object v9

    #@aa
    iget-object v10, v6, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@ac
    invoke-virtual {v9, v10}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@af
    .line 3190
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@b1
    if-eqz v9, :cond_a

    #@b3
    .line 3191
    invoke-static {v6}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@b6
    move-result-object v9

    #@b7
    iget-object v10, v6, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@b9
    invoke-virtual {v9, v10}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@bc
    .line 3195
    :cond_a
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@be
    invoke-static {v6}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@c1
    move-result-object v10

    #@c2
    invoke-static {v9, v10}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    #@c5
    .line 3196
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c7
    iget-object v9, v9, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@c9
    invoke-static {v6}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@cc
    move-result-object v10

    #@cd
    invoke-virtual {v9, v10}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@d0
    move-result v9

    #@d1
    invoke-static {v9}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    #@d4
    .line 3197
    const/4 v9, 0x0

    #@d5
    iput-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@d7
    .line 3201
    :cond_b
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@d9
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@dc
    move-result-object v5

    #@dd
    .line 3202
    .restart local v5    # "l":Landroid/view/WindowManager$LayoutParams;
    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@df
    and-int/lit16 v9, v9, 0x100

    #@e1
    if-eq v9, v4, :cond_c

    #@e3
    .line 3205
    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@e5
    and-int/lit16 v9, v9, -0x101

    #@e7
    or-int/2addr v9, v4

    #@e8
    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@ea
    .line 3208
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@ec
    iget-boolean v9, v9, Landroid/app/Activity;->mVisibleFromClient:Z

    #@ee
    if-eqz v9, :cond_c

    #@f0
    .line 3209
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@f3
    move-result-object v8

    #@f4
    .line 3210
    .restart local v8    # "wm":Landroid/view/ViewManager;
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@f6
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@f9
    move-result-object v1

    #@fa
    .line 3211
    .restart local v1    # "decor":Landroid/view/View;
    invoke-interface {v8, v1, v5}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@fd
    .line 3214
    .end local v1    # "decor":Landroid/view/View;
    .end local v8    # "wm":Landroid/view/ViewManager;
    :cond_c
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@ff
    const/4 v10, 0x1

    #@100
    iput-boolean v10, v9, Landroid/app/Activity;->mVisibleFromServer:Z

    #@102
    .line 3215
    iget v9, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@104
    add-int/lit8 v9, v9, 0x1

    #@106
    iput v9, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@108
    .line 3216
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@10a
    iget-boolean v9, v9, Landroid/app/Activity;->mVisibleFromClient:Z

    #@10c
    if-eqz v9, :cond_3

    #@10e
    .line 3217
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@110
    invoke-virtual {v9}, Landroid/app/Activity;->makeVisible()V

    #@113
    goto/16 :goto_4

    #@115
    .line 3242
    .end local v0    # "a":Landroid/app/Activity;
    .end local v4    # "forwardBit":I
    .end local v5    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@118
    move-result-object v9

    #@119
    .line 3243
    const/4 v10, 0x0

    #@11a
    const/4 v11, 0x0

    #@11b
    const/4 v12, 0x0

    #@11c
    .line 3242
    invoke-interface {v9, p1, v10, v11, v12}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@11f
    goto/16 :goto_5

    #@121
    .line 3244
    :catch_0
    move-exception v3

    #@122
    .local v3, "ex":Landroid/os/RemoteException;
    goto/16 :goto_5

    #@124
    .line 3234
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "a":Landroid/app/Activity;
    .restart local v4    # "forwardBit":I
    :catch_1
    move-exception v3

    #@125
    .restart local v3    # "ex":Landroid/os/RemoteException;
    goto/16 :goto_5

    #@127
    .line 3155
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v7    # "willBeVisible":Z
    :catch_2
    move-exception v2

    #@128
    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method public handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    #@0
    .prologue
    .line 2614
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 2615
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@a
    .line 2616
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    #@f
    .line 2613
    :cond_0
    return-void
.end method

.method final handleTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    #@0
    .prologue
    .line 4388
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    invoke-virtual {p0, v3, v4}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    #@5
    move-result-object v1

    #@6
    .line 4390
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 4391
    .local v0, "N":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@d
    .line 4392
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/content/ComponentCallbacks2;

    #@13
    invoke-interface {v3, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    #@16
    .line 4391
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 4395
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    #@20
    .line 4385
    return-void
.end method

.method final handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    #@0
    .prologue
    .line 5025
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@2
    monitor-enter v0

    #@3
    .line 5026
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 5024
    return-void

    #@8
    .line 5025
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method final handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    #@0
    .prologue
    .line 5031
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    #@8
    .line 5032
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_2

    #@a
    .line 5035
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 5036
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@14
    move-result v4

    #@15
    add-int/lit8 v1, v4, -0x1

    #@17
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@19
    .line 5037
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@1b
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    #@21
    .line 5038
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_0

    #@23
    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    #@25
    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@28
    move-result-object v4

    #@29
    if-ne v4, p1, :cond_0

    #@2b
    .line 5039
    const-string/jumbo v4, "ActivityThread"

    #@2e
    new-instance v5, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v6, "Removing dead content provider:"

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    iget-object v6, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    #@3c
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 5040
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@4d
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@50
    .line 5036
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@52
    goto :goto_0

    #@53
    .line 5044
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_1
    if-eqz p2, :cond_2

    #@55
    .line 5051
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@58
    move-result-object v4

    #@59
    .line 5052
    iget-object v5, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@5b
    iget-object v5, v5, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@5d
    .line 5051
    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .line 5030
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    #@61
    .line 5053
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    #@62
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1896
    monitor-enter p0

    #@1
    .line 1897
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    #@8
    .line 1900
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    #@a
    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    #@d
    iput-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 1895
    return-void

    #@11
    .line 1896
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 5333
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_0

    #@2
    .line 5334
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@4
    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    #@7
    .line 5332
    :cond_0
    return-void
.end method

.method public isProfiling()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1866
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@7
    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1867
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@d
    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 1866
    :cond_0
    return v0
.end method

.method public onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 2621
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 2622
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@a
    .line 2623
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v1, p2}, Landroid/app/Activity;->onNewActivityOptions(Landroid/app/ActivityOptions;)V

    #@f
    .line 2620
    :cond_0
    return-void
.end method

.method public final peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeCode"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1793
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@3
    monitor-enter v2

    #@4
    .line 1795
    if-eqz p2, :cond_1

    #@6
    .line 1796
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@e
    .line 1800
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/app/LoadedApk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v2

    #@17
    return-object v1

    #@18
    .line 1798
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@1a
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    #@21
    .line 1793
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

.method public final performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3751
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2550
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 2551
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    #@a
    .line 2552
    iget-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@c
    if-eqz v2, :cond_2

    #@e
    const/4 v1, 0x0

    #@f
    .line 2553
    .local v1, "resumed":Z
    :goto_0
    if-eqz v1, :cond_0

    #@11
    .line 2554
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@13
    const/4 v3, 0x1

    #@14
    iput-boolean v3, v2, Landroid/app/Activity;->mTemporaryPause:Z

    #@16
    .line 2555
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@18
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1a
    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    #@1d
    .line 2557
    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    #@20
    .line 2558
    if-eqz v1, :cond_1

    #@22
    .line 2559
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@24
    invoke-virtual {v2}, Landroid/app/Activity;->performResume()V

    #@27
    .line 2560
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@29
    const/4 v3, 0x0

    #@2a
    iput-boolean v3, v2, Landroid/app/Activity;->mTemporaryPause:Z

    #@2c
    .line 2549
    .end local v1    # "resumed":Z
    :cond_1
    return-void

    #@2d
    .line 2552
    :cond_2
    const/4 v1, 0x1

    #@2e
    .restart local v1    # "resumed":Z
    goto :goto_0
.end method

.method final performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;
    .locals 11
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "saveState"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    .line 3345
    iget-boolean v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@4
    if-eqz v6, :cond_1

    #@6
    .line 3346
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@8
    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    #@a
    if-eqz v6, :cond_0

    #@c
    .line 3350
    return-object v7

    #@d
    .line 3352
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@f
    .line 3353
    new-instance v6, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v8, "Performing pause of activity that is not resumed: "

    #@17
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v6

    #@1b
    .line 3354
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@1d
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@20
    move-result-object v8

    #@21
    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@24
    move-result-object v8

    #@25
    .line 3353
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    .line 3352
    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    .line 3355
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "ActivityThread"

    #@33
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@36
    move-result-object v8

    #@37
    invoke-static {v6, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    .line 3357
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_1
    if-eqz p2, :cond_2

    #@3c
    .line 3358
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@3e
    iput-boolean v10, v6, Landroid/app/Activity;->mFinished:Z

    #@40
    .line 3362
    :cond_2
    :try_start_0
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@42
    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    #@44
    if-nez v6, :cond_3

    #@46
    if-eqz p3, :cond_3

    #@48
    .line 3363
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@4b
    .line 3366
    :cond_3
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@4d
    const/4 v8, 0x0

    #@4e
    iput-boolean v8, v6, Landroid/app/Activity;->mCalled:Z

    #@50
    .line 3367
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@52
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@54
    invoke-virtual {v6, v8}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    #@57
    .line 3368
    const/4 v6, 0x2

    #@58
    new-array v6, v6, [Ljava/lang/Object;

    #@5a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5d
    move-result v8

    #@5e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v8

    #@62
    const/4 v9, 0x0

    #@63
    aput-object v8, v6, v9

    #@65
    .line 3369
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@67
    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    const/4 v9, 0x1

    #@70
    aput-object v8, v6, v9

    #@72
    .line 3368
    const/16 v8, 0x7545

    #@74
    invoke-static {v8, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@77
    .line 3370
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@79
    iget-boolean v6, v6, Landroid/app/Activity;->mCalled:Z

    #@7b
    if-nez v6, :cond_4

    #@7d
    .line 3371
    new-instance v6, Landroid/util/SuperNotCalledException;

    #@7f
    .line 3372
    new-instance v8, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v9, "Activity "

    #@87
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v8

    #@8b
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@8d
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@94
    move-result-object v9

    #@95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v8

    #@99
    .line 3373
    const-string/jumbo v9, " did not call through to super.onPause()"

    #@9c
    .line 3372
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v8

    #@a0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v8

    #@a4
    .line 3371
    invoke-direct {v6, v8}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v6
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@a8
    .line 3376
    :catch_0
    move-exception v0

    #@a9
    .line 3377
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0

    #@aa
    .line 3379
    .end local v0    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v1

    #@ab
    .line 3380
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@ad
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@af
    invoke-virtual {v6, v8, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@b2
    move-result v6

    #@b3
    if-nez v6, :cond_4

    #@b5
    .line 3381
    new-instance v6, Ljava/lang/RuntimeException;

    #@b7
    .line 3382
    new-instance v7, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v8, "Unable to pause activity "

    #@bf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v7

    #@c3
    .line 3383
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@c5
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@c8
    move-result-object v8

    #@c9
    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@cc
    move-result-object v8

    #@cd
    .line 3382
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v7

    #@d1
    .line 3384
    const-string/jumbo v8, ": "

    #@d4
    .line 3382
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v7

    #@d8
    .line 3384
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@db
    move-result-object v8

    #@dc
    .line 3382
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v7

    #@e0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v7

    #@e4
    .line 3381
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e7
    throw v6

    #@e8
    .line 3387
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iput-boolean v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@ea
    .line 3391
    iget-object v8, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@ec
    monitor-enter v8

    #@ed
    .line 3392
    :try_start_1
    iget-object v6, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@ef
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@f1
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f4
    move-result-object v4

    #@f5
    check-cast v4, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f7
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v8

    #@f8
    .line 3394
    if-eqz v4, :cond_5

    #@fa
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@fd
    move-result v5

    #@fe
    .line 3395
    .local v5, "size":I
    :goto_0
    const/4 v3, 0x0

    #@ff
    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_6

    #@101
    .line 3396
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@104
    move-result-object v6

    #@105
    check-cast v6, Landroid/app/OnActivityPausedListener;

    #@107
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@109
    invoke-interface {v6, v8}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    #@10c
    .line 3395
    add-int/lit8 v3, v3, 0x1

    #@10e
    goto :goto_1

    #@10f
    .line 3391
    .end local v3    # "i":I
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    #@110
    monitor-exit v8

    #@111
    throw v6

    #@112
    .line 3394
    .restart local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :cond_5
    const/4 v5, 0x0

    #@113
    .restart local v5    # "size":I
    goto :goto_0

    #@114
    .line 3399
    .restart local v3    # "i":I
    :cond_6
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@116
    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    #@118
    if-nez v6, :cond_7

    #@11a
    if-eqz p3, :cond_7

    #@11c
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@11e
    :goto_2
    return-object v6

    #@11f
    :cond_7
    move-object v6, v7

    #@120
    goto :goto_2
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "saveState"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3339
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@9
    .line 3340
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method final performRestartActivity(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3576
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 3577
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 3578
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@e
    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    #@11
    .line 3579
    const/4 v1, 0x0

    #@12
    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@14
    .line 3575
    :cond_0
    return-void
.end method

.method public final performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clearHide"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3073
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    #@9
    .line 3076
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_0

    #@b
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@d
    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 3110
    :cond_0
    :goto_0
    return-object v1

    #@12
    .line 3077
    :cond_1
    if-eqz p2, :cond_2

    #@14
    .line 3078
    iput-boolean v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    #@16
    .line 3079
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@18
    iput-boolean v3, v2, Landroid/app/Activity;->mStartedActivity:Z

    #@1a
    .line 3082
    :cond_2
    :try_start_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1c
    invoke-virtual {v2}, Landroid/app/Activity;->onStateNotSaved()V

    #@1f
    .line 3083
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@21
    iget-object v2, v2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@23
    invoke-virtual {v2}, Landroid/app/FragmentController;->noteStateNotSaved()V

    #@26
    .line 3084
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@28
    if-eqz v2, :cond_3

    #@2a
    .line 3085
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@2c
    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    #@2f
    .line 3086
    const/4 v2, 0x0

    #@30
    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@32
    .line 3088
    :cond_3
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@34
    if-eqz v2, :cond_4

    #@36
    .line 3089
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@38
    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    #@3b
    .line 3090
    const/4 v2, 0x0

    #@3c
    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@3e
    .line 3092
    :cond_4
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@40
    invoke-virtual {v2}, Landroid/app/Activity;->performResume()V

    #@43
    .line 3094
    const/4 v2, 0x2

    #@44
    new-array v2, v2, [Ljava/lang/Object;

    #@46
    .line 3095
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@49
    move-result v3

    #@4a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v3

    #@4e
    const/4 v4, 0x0

    #@4f
    aput-object v3, v2, v4

    #@51
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@53
    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    const/4 v4, 0x1

    #@5c
    aput-object v3, v2, v4

    #@5e
    .line 3094
    const/16 v3, 0x7546

    #@60
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@63
    .line 3097
    const/4 v2, 0x0

    #@64
    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@66
    .line 3098
    const/4 v2, 0x0

    #@67
    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@69
    .line 3099
    const/4 v2, 0x0

    #@6a
    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@6c
    .line 3100
    const/4 v2, 0x0

    #@6d
    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    goto :goto_0

    #@70
    .line 3101
    :catch_0
    move-exception v0

    #@71
    .line 3102
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@73
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@75
    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@78
    move-result v2

    #@79
    if-nez v2, :cond_0

    #@7b
    .line 3103
    new-instance v2, Ljava/lang/RuntimeException;

    #@7d
    .line 3104
    new-instance v3, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v4, "Unable to resume activity "

    #@85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    .line 3105
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@8b
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@92
    move-result-object v4

    #@93
    .line 3104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v3

    #@97
    .line 3106
    const-string/jumbo v4, ": "

    #@9a
    .line 3104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v3

    #@9e
    .line 3106
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@a1
    move-result-object v4

    #@a2
    .line 3104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v3

    #@a6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v3

    #@aa
    .line 3103
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ad
    throw v2
.end method

.method final performStopActivity(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "saveState"    # Z

    #@0
    .prologue
    .line 3403
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 3404
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {p0, v0, v1, v2, p2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    #@d
    .line 3402
    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    #@0
    .prologue
    .line 3334
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@2
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@4
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    #@7
    .line 3333
    return-void
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    #@0
    .prologue
    .line 2185
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@2
    monitor-enter v2

    #@3
    .line 2186
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/ArrayList;

    #@b
    .line 2187
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v0, :cond_0

    #@d
    .line 2188
    new-instance v0, Ljava/util/ArrayList;

    #@f
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 2189
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 2191
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    .line 2184
    return-void

    #@1c
    .line 2185
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;Z)Z
    .locals 11
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "stable"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 4893
    if-nez p1, :cond_0

    #@4
    .line 4894
    return v5

    #@5
    .line 4897
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v1

    #@9
    .line 4898
    .local v1, "jBinder":Landroid/os/IBinder;
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@b
    monitor-enter v7

    #@c
    .line 4899
    :try_start_0
    iget-object v8, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 4900
    .local v4, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v4, :cond_1

    #@16
    monitor-exit v7

    #@17
    .line 4902
    return v5

    #@18
    .line 4905
    :cond_1
    const/4 v2, 0x0

    #@19
    .line 4906
    .local v2, "lastRef":Z
    if-eqz p2, :cond_7

    #@1b
    .line 4907
    :try_start_1
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    if-nez v8, :cond_2

    #@1f
    monitor-exit v7

    #@20
    .line 4910
    return v5

    #@21
    .line 4912
    :cond_2
    :try_start_2
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    #@23
    add-int/lit8 v8, v8, -0x1

    #@25
    iput v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    #@27
    .line 4913
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    #@29
    if-nez v8, :cond_4

    #@2b
    .line 4920
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    if-nez v8, :cond_6

    #@2f
    const/4 v2, 0x1

    #@30
    .line 4926
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@33
    move-result-object v8

    #@34
    .line 4927
    iget-object v9, v4, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@36
    iget-object v9, v9, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@38
    if-eqz v2, :cond_3

    #@3a
    move v5, v6

    #@3b
    :cond_3
    const/4 v10, -0x1

    #@3c
    .line 4926
    invoke-interface {v8, v9, v10, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3f
    .line 4959
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    #@41
    .line 4960
    :try_start_4
    iget-boolean v5, v4, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@43
    if-nez v5, :cond_a

    #@45
    .line 4970
    const/4 v5, 0x1

    #@46
    iput-boolean v5, v4, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@48
    .line 4971
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@4a
    const/16 v8, 0x83

    #@4c
    invoke-virtual {v5, v8, v4}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4f
    move-result-object v3

    #@50
    .line 4972
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@52
    invoke-virtual {v5, v3}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@55
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    :goto_2
    monitor-exit v7

    #@56
    .line 4977
    return v6

    #@57
    .line 4920
    :cond_6
    const/4 v2, 0x0

    #@58
    goto :goto_0

    #@59
    .line 4933
    :cond_7
    :try_start_5
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5b
    if-nez v8, :cond_8

    #@5d
    monitor-exit v7

    #@5e
    .line 4936
    return v5

    #@5f
    .line 4938
    :cond_8
    :try_start_6
    iget v5, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    #@61
    add-int/lit8 v5, v5, -0x1

    #@63
    iput v5, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    #@65
    .line 4939
    iget v5, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    #@67
    if-nez v5, :cond_4

    #@69
    .line 4943
    iget v5, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@6b
    if-nez v5, :cond_9

    #@6d
    const/4 v2, 0x1

    #@6e
    .line 4944
    :goto_3
    if-nez v2, :cond_4

    #@70
    .line 4950
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@73
    move-result-object v5

    #@74
    .line 4951
    iget-object v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@76
    iget-object v8, v8, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@78
    const/4 v9, 0x0

    #@79
    const/4 v10, -0x1

    #@7a
    .line 4950
    invoke-interface {v5, v8, v9, v10}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@7d
    goto :goto_1

    #@7e
    .line 4952
    :catch_0
    move-exception v0

    #@7f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@80
    .line 4943
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9
    const/4 v2, 0x0

    #@81
    goto :goto_3

    #@82
    .line 4974
    :cond_a
    :try_start_8
    const-string/jumbo v5, "ActivityThread"

    #@85
    new-instance v8, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v9, "Duplicate remove pending of provider "

    #@8d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v8

    #@91
    iget-object v9, v4, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@93
    iget-object v9, v9, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    #@95
    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@97
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v8

    #@9b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v8

    #@9f
    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@a2
    goto :goto_2

    #@a3
    .line 4898
    .end local v2    # "lastRef":Z
    .end local v4    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v5

    #@a4
    monitor-exit v7

    #@a5
    throw v5

    #@a6
    .line 4928
    .restart local v2    # "lastRef":Z
    .restart local v4    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catch_1
    move-exception v0

    #@a7
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public final requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "fromServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3911
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v3, 0x0

    #@1
    .line 3913
    .local v3, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v6, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@3
    monitor-enter v6

    #@4
    .line 3914
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v5

    #@b
    if-ge v1, v5, :cond_b

    #@d
    .line 3915
    iget-object v5, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    #@15
    .line 3916
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@17
    if-ne v5, p1, :cond_9

    #@19
    .line 3917
    move-object v3, v2

    #@1a
    .line 3918
    .local v3, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz p2, :cond_0

    #@1c
    .line 3919
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@1e
    if-eqz v5, :cond_7

    #@20
    .line 3920
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@22
    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@25
    .line 3925
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    #@27
    .line 3926
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@29
    if-eqz v5, :cond_8

    #@2b
    .line 3927
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@2d
    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    :cond_1
    :goto_2
    move-object v4, v3

    #@31
    .line 3936
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v4, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_3
    if-nez v4, :cond_a

    #@33
    .line 3937
    :try_start_1
    new-instance v3, Landroid/app/ActivityThread$ActivityClientRecord;

    #@35
    invoke-direct {v3}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@38
    .line 3938
    .end local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :try_start_2
    iput-object p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@3a
    .line 3939
    iput-object p2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@3c
    .line 3940
    iput-object p3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@3e
    .line 3941
    if-nez p8, :cond_3

    #@40
    .line 3942
    iget-object v5, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@42
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@48
    .line 3943
    .local v0, "existing":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_2

    #@4a
    .line 3944
    iget-boolean v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@4c
    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@4e
    .line 3945
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@50
    iput-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@52
    .line 3947
    :cond_2
    const/4 v5, 0x1

    #@53
    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@55
    .line 3949
    .end local v0    # "existing":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_3
    iget-object v5, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    .line 3950
    const/16 v5, 0x7e

    #@5c
    invoke-direct {p0, v5, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    #@5f
    .line 3953
    :goto_4
    if-eqz p8, :cond_4

    #@61
    .line 3954
    iput-boolean p5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@63
    .line 3955
    const/4 v5, 0x0

    #@64
    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@66
    .line 3957
    :cond_4
    if-eqz p6, :cond_5

    #@68
    .line 3958
    iput-object p6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@6a
    .line 3960
    :cond_5
    if-eqz p7, :cond_6

    #@6c
    .line 3961
    iput-object p7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@6e
    .line 3963
    :cond_6
    iget v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    #@70
    or-int/2addr v5, p4

    #@71
    iput v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@73
    monitor-exit v6

    #@74
    .line 3910
    return-void

    #@75
    .line 3922
    .restart local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_7
    :try_start_3
    iput-object p2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@77
    goto :goto_1

    #@78
    .line 3913
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v5

    #@79
    :goto_5
    monitor-exit v6

    #@7a
    throw v5

    #@7b
    .line 3929
    .restart local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_8
    :try_start_4
    iput-object p3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7d
    goto :goto_2

    #@7e
    .line 3914
    .local v3, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    #@80
    goto :goto_0

    #@81
    .line 3913
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_1
    move-exception v5

    #@82
    move-object v3, v4

    #@83
    .end local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v3, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_5

    #@84
    .end local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_a
    move-object v3, v4

    #@85
    .end local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_4

    #@86
    .local v3, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_b
    move-object v4, v3

    #@87
    .restart local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_3
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2207
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@2
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x400

    #@8
    .line 2206
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    #@b
    move-result-object v0

    #@c
    .line 2208
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    #@e
    .line 2211
    const/4 v1, -0x2

    #@f
    .line 2210
    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    #@12
    .line 2213
    :cond_0
    return-object v0
.end method

.method final scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2286
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    #@5
    .line 2287
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    #@7
    .line 2288
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    #@9
    .line 2289
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    #@b
    .line 2290
    const/16 v1, 0x77

    #@d
    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    #@10
    .line 2285
    return-void
.end method

.method scheduleGcIdler()V
    .locals 2

    #@0
    .prologue
    .line 1912
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1913
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    #@7
    .line 1914
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    #@d
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@10
    .line 1916
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@12
    const/16 v1, 0x78

    #@14
    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    #@17
    .line 1911
    return-void
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2252
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2253
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    #@7
    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    .line 2254
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@f
    invoke-virtual {v1, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    #@12
    .line 2249
    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "state"    # Landroid/os/Bundle;
    .param p7, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;

    #@0
    .prologue
    .line 2219
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    #@5
    .line 2220
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@7
    .line 2221
    const/4 v1, 0x0

    #@8
    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    #@a
    .line 2222
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@c
    .line 2223
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@e
    .line 2224
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    #@10
    .line 2225
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    #@12
    .line 2226
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@14
    .line 2227
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@16
    .line 2240
    const/4 v1, 0x0

    #@17
    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    #@0
    .prologue
    .line 2197
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@2
    monitor-enter v2

    #@3
    .line 2198
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/ArrayList;

    #@b
    .line 2199
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v0, :cond_0

    #@d
    .line 2200
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 2196
    return-void

    #@12
    .line 2197
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method unscheduleGcIdler()V
    .locals 2

    #@0
    .prologue
    .line 1920
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1921
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    #@7
    .line 1922
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    #@d
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@10
    .line 1924
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@12
    const/16 v1, 0x78

    #@14
    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    #@17
    .line 1919
    return-void
.end method
