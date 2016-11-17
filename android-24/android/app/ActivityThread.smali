.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ActivityConfigChangeData;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$DropBoxReporter;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$EventLoggingReporter;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$NewIntentData;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ProviderKey;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$ResultData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$StopInfo;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;
    }
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x4

.field private static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_BROADCAST:Z = false

.field public static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_MEMORY_TRIM:Z = false

.field static final DEBUG_MESSAGES:Z = false

.field private static final DEBUG_ORDER:Z = false

.field private static final DEBUG_PROVIDER:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final DEBUG_SERVICE:Z = false

.field private static final DONT_REPORT:I = 0x2

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s"

.field private static final HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field private static final LOG_AM_ON_PAUSE_CALLED:I = 0x7545

.field private static final LOG_AM_ON_RESUME_CALLED:I = 0x7546

.field private static final LOG_AM_ON_STOP_CALLED:I = 0x7561

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final ONE_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s"

.field private static final REPORT_TO_ACTIVITY:Z = true

.field public static final SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field private static final USER_LEAVING:I = 0x1

.field static final localLOGV:Z

.field private static volatile sCurrentActivityThread:Landroid/app/ActivityThread;

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

.field static volatile sMainThreadHandler:Landroid/os/Handler;

.field static volatile sPackageManager:Landroid/content/pm/IPackageManager;


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

.field mLastAssistStructures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/assist/AssistStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastSessionId:I

.field mLifecycleSeq:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
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

.method static synthetic -wrap0(Landroid/app/ActivityThread;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/ActivityThread;->getLifecycleSeq()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V

    #@3
    return-void
.end method

.method static synthetic -wrap10(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInMultiWindowMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleMultiWindowModeChanged(Landroid/os/IBinder;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$NewIntentData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZI)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z
    .param p6, "seq"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZIZI)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInPipMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handlePictureInPictureModeChanged(Landroid/os/IBinder;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 0
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap20(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V
    .locals 0
    .param p1, "res"    # Landroid/app/ActivityThread$ResultData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic -wrap23(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap24(Landroid/app/ActivityThread;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/ActivityThread;->handleStartBinderTracking()V

    #@3
    return-void
.end method

.method static synthetic -wrap25(Landroid/app/ActivityThread;Landroid/os/IBinder;ZII)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z
    .param p3, "configChanges"    # I
    .param p4, "seq"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZII)V

    #@3
    return-void
.end method

.method static synthetic -wrap26(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    #@3
    return-void
.end method

.method static synthetic -wrap27(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap29(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap30(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap31(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
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

.method static synthetic -wrap33(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
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

.method static synthetic -wrap34(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
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

.method static synthetic -wrap35(Landroid/app/ActivityThread;ILjava/lang/Object;III)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "seq"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;III)V

    #@3
    return-void
.end method

.method static synthetic -wrap36(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/os/LocaleList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newLocaleList"    # Landroid/os/LocaleList;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V
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

.method static synthetic -wrap7(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 167
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@2
    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    #@4
    .line 2958
    new-instance v0, Ljava/lang/ThreadLocal;

    #@6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@9
    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    #@b
    .line 164
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
    .line 1998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 203
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    #@8
    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread;)V

    #@b
    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@d
    .line 204
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    #@13
    .line 205
    new-instance v0, Landroid/app/ActivityThread$H;

    #@15
    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$H;)V

    #@18
    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@1a
    .line 206
    new-instance v0, Landroid/util/ArrayMap;

    #@1c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1f
    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@21
    .line 209
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    #@23
    .line 211
    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@25
    .line 212
    new-instance v0, Ljava/util/ArrayList;

    #@27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2a
    iput-object v0, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    #@2c
    .line 214
    new-instance v0, Landroid/util/ArrayMap;

    #@2e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@31
    iput-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    #@33
    .line 223
    new-instance v0, Ljava/util/ArrayList;

    #@35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@38
    .line 222
    iput-object v0, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    #@3a
    .line 225
    new-instance v0, Landroid/util/ArrayMap;

    #@3c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@3f
    iput-object v0, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    #@41
    .line 229
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    #@43
    .line 230
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    #@45
    .line 231
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    #@47
    .line 232
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    #@49
    .line 233
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    #@4b
    .line 234
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    #@4d
    .line 235
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    #@4f
    .line 236
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    #@51
    .line 237
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    #@53
    .line 238
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@55
    .line 250
    new-instance v0, Landroid/util/ArrayMap;

    #@57
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5a
    .line 249
    iput-object v0, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@5c
    .line 252
    new-instance v0, Landroid/util/ArrayMap;

    #@5e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@61
    .line 251
    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@63
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    #@65
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@68
    .line 253
    iput-object v0, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@6a
    .line 255
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@6c
    .line 261
    iput v2, p0, Landroid/app/ActivityThread;->mLifecycleSeq:I

    #@6e
    .line 291
    new-instance v0, Landroid/util/ArrayMap;

    #@70
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@73
    .line 290
    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@75
    .line 293
    new-instance v0, Landroid/util/ArrayMap;

    #@77
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@7a
    .line 292
    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@7c
    .line 295
    new-instance v0, Landroid/util/ArrayMap;

    #@7e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@81
    .line 294
    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    #@83
    .line 297
    new-instance v0, Landroid/util/ArrayMap;

    #@85
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@88
    .line 296
    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    #@8a
    .line 300
    new-instance v0, Landroid/util/ArrayMap;

    #@8c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8f
    .line 299
    iput-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@91
    .line 302
    new-instance v0, Landroid/app/ActivityThread$GcIdler;

    #@93
    invoke-direct {v0, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    #@96
    iput-object v0, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    #@98
    .line 303
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    #@9a
    .line 307
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    #@9c
    .line 1825
    new-instance v0, Landroid/content/res/Configuration;

    #@9e
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@a1
    iput-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    #@a3
    .line 3566
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    #@a5
    .line 3567
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    #@a7
    .line 3568
    iput-object v1, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    #@a9
    .line 3569
    iput-object v1, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    #@ab
    .line 1999
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    #@ae
    move-result-object v0

    #@af
    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@b1
    .line 1998
    return-void
.end method

.method private attach(Z)V
    .locals 7
    .param p1, "system"    # Z

    #@0
    .prologue
    .line 5889
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    #@2
    .line 5890
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    #@4
    .line 5891
    if-nez p1, :cond_0

    #@6
    .line 5892
    new-instance v4, Landroid/app/ActivityThread$1;

    #@8
    invoke-direct {v4, p0}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;)V

    #@b
    invoke-static {v4}, Landroid/view/ViewRootImpl;->addFirstDrawHandler(Ljava/lang/Runnable;)V

    #@e
    .line 5898
    const-string/jumbo v4, "<pre-initialized>"

    #@11
    .line 5899
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@14
    move-result v5

    #@15
    .line 5898
    invoke-static {v4, v5}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    #@18
    .line 5900
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@1a
    invoke-virtual {v4}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    #@21
    .line 5901
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@24
    move-result-object v3

    #@25
    .line 5903
    .local v3, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@27
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 5908
    new-instance v4, Landroid/app/ActivityThread$2;

    #@2c
    invoke-direct {v4, p0, v3}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V

    #@2f
    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    #@32
    .line 5947
    .end local v3    # "mgr":Landroid/app/IActivityManager;
    :goto_0
    new-instance v4, Landroid/app/ActivityThread$DropBoxReporter;

    #@34
    invoke-direct {v4, p0}, Landroid/app/ActivityThread$DropBoxReporter;-><init>(Landroid/app/ActivityThread;)V

    #@37
    invoke-static {v4}, Llibcore/io/DropBox;->setReporter(Llibcore/io/DropBox$Reporter;)V

    #@3a
    .line 5949
    new-instance v4, Landroid/app/ActivityThread$3;

    #@3c
    invoke-direct {v4, p0}, Landroid/app/ActivityThread$3;-><init>(Landroid/app/ActivityThread;)V

    #@3f
    invoke-static {v4}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    #@42
    .line 5888
    return-void

    #@43
    .line 5904
    .restart local v3    # "mgr":Landroid/app/IActivityManager;
    :catch_0
    move-exception v2

    #@44
    .line 5905
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@47
    move-result-object v4

    #@48
    throw v4

    #@49
    .line 5932
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v3    # "mgr":Landroid/app/IActivityManager;
    :cond_0
    const-string/jumbo v4, "system_process"

    #@4c
    .line 5933
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@4f
    move-result v5

    #@50
    .line 5932
    invoke-static {v4, v5}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    #@53
    .line 5935
    :try_start_1
    new-instance v4, Landroid/app/Instrumentation;

    #@55
    invoke-direct {v4}, Landroid/app/Instrumentation;-><init>()V

    #@58
    iput-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@5a
    .line 5937
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@5d
    move-result-object v4

    #@5e
    iget-object v4, v4, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@60
    .line 5936
    invoke-static {p0, v4}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    #@63
    move-result-object v0

    #@64
    .line 5938
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@66
    const/4 v5, 0x1

    #@67
    const/4 v6, 0x0

    #@68
    invoke-virtual {v4, v5, v6}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    #@6b
    move-result-object v4

    #@6c
    iput-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@6e
    .line 5939
    iget-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@70
    invoke-virtual {v4}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@73
    goto :goto_0

    #@74
    .line 5940
    .end local v0    # "context":Landroid/app/ContextImpl;
    :catch_1
    move-exception v1

    #@75
    .line 5941
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@77
    .line 5942
    new-instance v5, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v6, "Unable to instantiate Application():"

    #@7f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    .line 5941
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@92
    throw v4
.end method

.method private callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    #@0
    .prologue
    .line 4498
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@7
    .line 4499
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    #@d
    .line 4500
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 4501
    new-instance v0, Landroid/os/PersistableBundle;

    #@15
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    #@18
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@1a
    .line 4502
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@1c
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1e
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@20
    .line 4503
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@22
    .line 4502
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@25
    .line 4497
    :goto_0
    return-void

    #@26
    .line 4505
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

.method private static checkAndUpdateLifecycleSeq(ILandroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)Z
    .locals 2
    .param p0, "seq"    # I
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "action"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 3913
    if-nez p1, :cond_0

    #@3
    .line 3914
    return v1

    #@4
    .line 3916
    :cond_0
    iget v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    #@6
    if-ge p0, v0, :cond_1

    #@8
    .line 3919
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 3921
    :cond_1
    iput p0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    #@c
    .line 3922
    return v1
.end method

.method static final cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 5
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p1, "force"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3411
    iget-boolean v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    if-eqz p1, :cond_2

    #@7
    .line 3414
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 3415
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    #@d
    .line 3416
    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    #@f
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@12
    move-result-object v2

    #@13
    .line 3415
    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@16
    .line 3417
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    #@18
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@1f
    move-result-object v0

    #@20
    .line 3418
    .local v0, "wtoken":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    #@22
    .line 3419
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@25
    move-result-object v1

    #@26
    .line 3420
    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@28
    invoke-virtual {v2}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    const-string/jumbo v3, "Activity"

    #@33
    .line 3419
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 3423
    .end local v0    # "wtoken":Landroid/os/IBinder;
    :cond_1
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    #@38
    .line 3424
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    #@3a
    .line 3410
    return-void

    #@3b
    .line 3412
    :cond_2
    return-void
.end method

.method private createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/Activity;)Landroid/content/Context;
    .locals 12
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2656
    const/4 v3, 0x0

    #@2
    .line 2658
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
    .line 2664
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@e
    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@10
    iget-object v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@12
    .line 2663
    invoke-static {p0, v9, v10, v3, v11}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    #@15
    move-result-object v0

    #@16
    .line 2665
    .local v0, "appContext":Landroid/app/ContextImpl;
    invoke-virtual {v0, p2}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    #@19
    .line 2666
    move-object v1, v0

    #@1a
    .line 2668
    .local v1, "baseContext":Landroid/content/Context;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    #@1d
    move-result-object v4

    #@1e
    .line 2672
    .local v4, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const-string/jumbo v9, "debug.second-display.pkg"

    #@21
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    .line 2673
    .local v7, "pkgName":Ljava/lang/String;
    if-eqz v7, :cond_0

    #@27
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    #@2a
    move-result v9

    #@2b
    if-eqz v9, :cond_1

    #@2d
    .line 2684
    :cond_0
    :goto_0
    return-object v1

    #@2e
    .line 2659
    .end local v0    # "appContext":Landroid/app/ContextImpl;
    .end local v1    # "baseContext":Landroid/content/Context;
    .end local v4    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v7    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@2f
    .line 2660
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@32
    move-result-object v8

    #@33
    throw v8

    #@34
    .line 2674
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v0    # "appContext":Landroid/app/ContextImpl;
    .restart local v1    # "baseContext":Landroid/content/Context;
    .restart local v4    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_1
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@36
    iget-object v9, v9, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@38
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@3b
    move-result v9

    #@3c
    .line 2673
    if-eqz v9, :cond_0

    #@3e
    .line 2675
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    #@41
    move-result-object v9

    #@42
    array-length v10, v9

    #@43
    :goto_1
    if-ge v8, v10, :cond_0

    #@45
    aget v6, v9, v8

    #@47
    .line 2676
    .local v6, "id":I
    if-eqz v6, :cond_2

    #@49
    .line 2678
    invoke-virtual {v0, v6}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    #@4c
    move-result-object v8

    #@4d
    invoke-virtual {v4, v6, v8}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    #@50
    move-result-object v2

    #@51
    .line 2679
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v0, v2}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    #@54
    move-result-object v1

    #@55
    goto :goto_0

    #@56
    .line 2675
    .end local v2    # "display":Landroid/view/Display;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@58
    goto :goto_1
.end method

.method private static createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "override"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 4590
    if-nez p1, :cond_0

    #@2
    .line 4591
    return-object p0

    #@3
    .line 4593
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    #@5
    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@8
    .line 4594
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@b
    .line 4595
    return-object v0
.end method

.method private createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    #@0
    .prologue
    .line 3572
    iget-object v5, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    #@2
    .line 3574
    .local v5, "thumbnail":Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    #@4
    .line 3575
    :try_start_0
    iget v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    #@6
    .line 3577
    .local v6, "w":I
    if-gez v6, :cond_4

    #@8
    .line 3578
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@a
    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v4

    #@e
    .line 3579
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x1050002

    #@11
    .line 3580
    .local v7, "wId":I
    const v3, 0x1050001

    #@14
    .line 3581
    .local v3, "hId":I
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@17
    move-result v6

    #@18
    iput v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    #@1a
    .line 3582
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1d
    move-result v2

    #@1e
    .local v2, "h":I
    iput v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    #@20
    .line 3588
    .end local v3    # "hId":I
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v7    # "wId":I
    :goto_0
    if-lez v6, :cond_0

    #@22
    if-lez v2, :cond_0

    #@24
    .line 3589
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
    .line 3590
    sget-object v9, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    #@30
    .line 3589
    invoke-static {v8, v6, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@33
    move-result-object v5

    #@34
    .line 3591
    const/4 v8, 0x0

    #@35
    invoke-virtual {v5, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    #@38
    .line 3595
    .end local v2    # "h":I
    .end local v6    # "w":I
    :cond_0
    if-eqz v5, :cond_3

    #@3a
    .line 3596
    iget-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    #@3c
    .line 3597
    .local v0, "cv":Landroid/graphics/Canvas;
    if-nez v0, :cond_1

    #@3e
    .line 3598
    new-instance v0, Landroid/graphics/Canvas;

    #@40
    .end local v0    # "cv":Landroid/graphics/Canvas;
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    #@43
    .restart local v0    # "cv":Landroid/graphics/Canvas;
    iput-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    #@45
    .line 3601
    :cond_1
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@48
    .line 3602
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@4a
    invoke-virtual {v8, v5, v0}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    #@4d
    move-result v8

    #@4e
    if-nez v8, :cond_2

    #@50
    .line 3603
    iput-object v5, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    #@52
    .line 3604
    const/4 v5, 0x0

    #@53
    .line 3606
    .end local v5    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v8, 0x0

    #@54
    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@57
    .line 3619
    .end local v0    # "cv":Landroid/graphics/Canvas;
    :cond_3
    :goto_1
    return-object v5

    #@58
    .line 3584
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
    .line 3609
    .end local v2    # "h":I
    .end local v5    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v6    # "w":I
    :catch_0
    move-exception v1

    #@5c
    .line 3610
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
    .line 3611
    new-instance v8, Ljava/lang/RuntimeException;

    #@68
    .line 3612
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
    .line 3613
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
    .line 3612
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    .line 3614
    const-string/jumbo v10, ": "

    #@85
    .line 3612
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v9

    #@89
    .line 3614
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@8c
    move-result-object v10

    #@8d
    .line 3612
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v9

    #@95
    .line 3611
    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@98
    throw v8

    #@99
    .line 3616
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
    .line 1783
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
    .line 1809
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@4
    move-result-object v0

    #@5
    .line 1810
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
    .line 1791
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@4
    move-result-object v0

    #@5
    .line 1792
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1793
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 1792
    :cond_0
    return-object v1
.end method

.method public static currentPackageName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1797
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@4
    move-result-object v0

    #@5
    .line 1798
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    #@7
    iget-object v2, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1799
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@d
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@f
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@11
    .line 1798
    :cond_0
    return-object v1
.end method

.method public static currentProcessName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1803
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@4
    move-result-object v0

    #@5
    .line 1804
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    #@7
    iget-object v2, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1805
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@d
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@f
    .line 1804
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
    .line 2777
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 2778
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 2779
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    #@d
    .line 2780
    .local v2, "intent":Lcom/android/internal/content/ReferrerIntent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@f
    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Lcom/android/internal/content/ReferrerIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@16
    .line 2781
    invoke-virtual {v2}, Lcom/android/internal/content/ReferrerIntent;->prepareToEnterProcess()V

    #@19
    .line 2782
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1b
    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@1d
    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    #@20
    .line 2783
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@22
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@24
    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    #@27
    .line 2778
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 2776
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
    .line 4039
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 4040
    .local v0, "N":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@7
    .line 4041
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Landroid/app/ResultInfo;

    #@d
    .line 4043
    .local v3, "ri":Landroid/app/ResultInfo;
    :try_start_0
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 4044
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
    .line 4045
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    #@1e
    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@21
    .line 4049
    :cond_0
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@23
    iget-object v5, v3, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    #@25
    .line 4050
    iget v6, v3, Landroid/app/ResultInfo;->mRequestCode:I

    #@27
    iget v7, v3, Landroid/app/ResultInfo;->mResultCode:I

    #@29
    iget-object v8, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    #@2b
    .line 4049
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 4040
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 4051
    :catch_0
    move-exception v1

    #@32
    .line 4052
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
    .line 4053
    new-instance v4, Ljava/lang/RuntimeException;

    #@3e
    .line 4054
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
    .line 4055
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
    .line 4054
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    .line 4056
    const-string/jumbo v6, ": "

    #@66
    .line 4054
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    .line 4056
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    .line 4054
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    .line 4053
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@79
    throw v4

    #@7a
    .line 4038
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ri":Landroid/app/ResultInfo;
    :cond_2
    return-void
.end method

.method private native dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
.end method

.method public static dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    .locals 26
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
    .line 2107
    if-eqz p2, :cond_3

    #@2
    .line 2112
    const/16 v21, 0x4

    #@4
    move-object/from16 v0, p0

    #@6
    move/from16 v1, v21

    #@8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@b
    const/16 v21, 0x2c

    #@d
    move-object/from16 v0, p0

    #@f
    move/from16 v1, v21

    #@11
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@14
    .line 2113
    move-object/from16 v0, p0

    #@16
    move/from16 v1, p6

    #@18
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1b
    const/16 v21, 0x2c

    #@1d
    move-object/from16 v0, p0

    #@1f
    move/from16 v1, v21

    #@21
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@24
    .line 2114
    move-object/from16 v0, p0

    #@26
    move-object/from16 v1, p7

    #@28
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    const/16 v21, 0x2c

    #@2d
    move-object/from16 v0, p0

    #@2f
    move/from16 v1, v21

    #@31
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@34
    .line 2117
    move-object/from16 v0, p0

    #@36
    move-wide/from16 v1, p8

    #@38
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@3b
    const/16 v21, 0x2c

    #@3d
    move-object/from16 v0, p0

    #@3f
    move/from16 v1, v21

    #@41
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@44
    .line 2118
    move-object/from16 v0, p0

    #@46
    move-wide/from16 v1, p14

    #@48
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@4b
    const/16 v21, 0x2c

    #@4d
    move-object/from16 v0, p0

    #@4f
    move/from16 v1, v21

    #@51
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@54
    .line 2119
    const-string/jumbo v21, "N/A,"

    #@57
    move-object/from16 v0, p0

    #@59
    move-object/from16 v1, v21

    #@5b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    .line 2120
    add-long v22, p8, p14

    #@60
    move-object/from16 v0, p0

    #@62
    move-wide/from16 v1, v22

    #@64
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@67
    const/16 v21, 0x2c

    #@69
    move-object/from16 v0, p0

    #@6b
    move/from16 v1, v21

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@70
    .line 2123
    move-object/from16 v0, p0

    #@72
    move-wide/from16 v1, p10

    #@74
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@77
    const/16 v21, 0x2c

    #@79
    move-object/from16 v0, p0

    #@7b
    move/from16 v1, v21

    #@7d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@80
    .line 2124
    move-object/from16 v0, p0

    #@82
    move-wide/from16 v1, p16

    #@84
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@87
    const/16 v21, 0x2c

    #@89
    move-object/from16 v0, p0

    #@8b
    move/from16 v1, v21

    #@8d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@90
    .line 2125
    const-string/jumbo v21, "N/A,"

    #@93
    move-object/from16 v0, p0

    #@95
    move-object/from16 v1, v21

    #@97
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    .line 2126
    add-long v22, p10, p16

    #@9c
    move-object/from16 v0, p0

    #@9e
    move-wide/from16 v1, v22

    #@a0
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@a3
    const/16 v21, 0x2c

    #@a5
    move-object/from16 v0, p0

    #@a7
    move/from16 v1, v21

    #@a9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@ac
    .line 2129
    move-object/from16 v0, p0

    #@ae
    move-wide/from16 v1, p12

    #@b0
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@b3
    const/16 v21, 0x2c

    #@b5
    move-object/from16 v0, p0

    #@b7
    move/from16 v1, v21

    #@b9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@bc
    .line 2130
    move-object/from16 v0, p0

    #@be
    move-wide/from16 v1, p18

    #@c0
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@c3
    const/16 v21, 0x2c

    #@c5
    move-object/from16 v0, p0

    #@c7
    move/from16 v1, v21

    #@c9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@cc
    .line 2131
    const-string/jumbo v21, "N/A,"

    #@cf
    move-object/from16 v0, p0

    #@d1
    move-object/from16 v1, v21

    #@d3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d6
    .line 2132
    add-long v22, p12, p18

    #@d8
    move-object/from16 v0, p0

    #@da
    move-wide/from16 v1, v22

    #@dc
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    #@df
    const/16 v21, 0x2c

    #@e1
    move-object/from16 v0, p0

    #@e3
    move/from16 v1, v21

    #@e5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@e8
    .line 2135
    move-object/from16 v0, p1

    #@ea
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@ec
    move/from16 v21, v0

    #@ee
    move-object/from16 v0, p0

    #@f0
    move/from16 v1, v21

    #@f2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@f5
    const/16 v21, 0x2c

    #@f7
    move-object/from16 v0, p0

    #@f9
    move/from16 v1, v21

    #@fb
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@fe
    .line 2136
    move-object/from16 v0, p1

    #@100
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@102
    move/from16 v21, v0

    #@104
    move-object/from16 v0, p0

    #@106
    move/from16 v1, v21

    #@108
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@10b
    const/16 v21, 0x2c

    #@10d
    move-object/from16 v0, p0

    #@10f
    move/from16 v1, v21

    #@111
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@114
    .line 2137
    move-object/from16 v0, p1

    #@116
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    #@118
    move/from16 v21, v0

    #@11a
    move-object/from16 v0, p0

    #@11c
    move/from16 v1, v21

    #@11e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@121
    const/16 v21, 0x2c

    #@123
    move-object/from16 v0, p0

    #@125
    move/from16 v1, v21

    #@127
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@12a
    .line 2138
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    #@12d
    move-result v21

    #@12e
    move-object/from16 v0, p0

    #@130
    move/from16 v1, v21

    #@132
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@135
    const/16 v21, 0x2c

    #@137
    move-object/from16 v0, p0

    #@139
    move/from16 v1, v21

    #@13b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@13e
    .line 2141
    move-object/from16 v0, p1

    #@140
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    #@142
    move/from16 v21, v0

    #@144
    move-object/from16 v0, p0

    #@146
    move/from16 v1, v21

    #@148
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@14b
    const/16 v21, 0x2c

    #@14d
    move-object/from16 v0, p0

    #@14f
    move/from16 v1, v21

    #@151
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@154
    .line 2142
    move-object/from16 v0, p1

    #@156
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    #@158
    move/from16 v21, v0

    #@15a
    move-object/from16 v0, p0

    #@15c
    move/from16 v1, v21

    #@15e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@161
    const/16 v21, 0x2c

    #@163
    move-object/from16 v0, p0

    #@165
    move/from16 v1, v21

    #@167
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@16a
    .line 2143
    move-object/from16 v0, p1

    #@16c
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    #@16e
    move/from16 v21, v0

    #@170
    move-object/from16 v0, p0

    #@172
    move/from16 v1, v21

    #@174
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@177
    const/16 v21, 0x2c

    #@179
    move-object/from16 v0, p0

    #@17b
    move/from16 v1, v21

    #@17d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@180
    .line 2144
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    #@183
    move-result v21

    #@184
    move-object/from16 v0, p0

    #@186
    move/from16 v1, v21

    #@188
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@18b
    const/16 v21, 0x2c

    #@18d
    move-object/from16 v0, p0

    #@18f
    move/from16 v1, v21

    #@191
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@194
    .line 2147
    move-object/from16 v0, p1

    #@196
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    #@198
    move/from16 v21, v0

    #@19a
    move-object/from16 v0, p0

    #@19c
    move/from16 v1, v21

    #@19e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1a1
    const/16 v21, 0x2c

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    move/from16 v1, v21

    #@1a7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@1aa
    .line 2148
    move-object/from16 v0, p1

    #@1ac
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    #@1ae
    move/from16 v21, v0

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    move/from16 v1, v21

    #@1b4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1b7
    const/16 v21, 0x2c

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    move/from16 v1, v21

    #@1bd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@1c0
    .line 2149
    move-object/from16 v0, p1

    #@1c2
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    #@1c4
    move/from16 v21, v0

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    move/from16 v1, v21

    #@1ca
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1cd
    const/16 v21, 0x2c

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    move/from16 v1, v21

    #@1d3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@1d6
    .line 2150
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    #@1d9
    move-result v21

    #@1da
    move-object/from16 v0, p0

    #@1dc
    move/from16 v1, v21

    #@1de
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1e1
    const/16 v21, 0x2c

    #@1e3
    move-object/from16 v0, p0

    #@1e5
    move/from16 v1, v21

    #@1e7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@1ea
    .line 2153
    move-object/from16 v0, p1

    #@1ec
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    #@1ee
    move/from16 v21, v0

    #@1f0
    move-object/from16 v0, p0

    #@1f2
    move/from16 v1, v21

    #@1f4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@1f7
    const/16 v21, 0x2c

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    move/from16 v1, v21

    #@1fd
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@200
    .line 2154
    move-object/from16 v0, p1

    #@202
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    #@204
    move/from16 v21, v0

    #@206
    move-object/from16 v0, p0

    #@208
    move/from16 v1, v21

    #@20a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@20d
    const/16 v21, 0x2c

    #@20f
    move-object/from16 v0, p0

    #@211
    move/from16 v1, v21

    #@213
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@216
    .line 2155
    move-object/from16 v0, p1

    #@218
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    #@21a
    move/from16 v21, v0

    #@21c
    move-object/from16 v0, p0

    #@21e
    move/from16 v1, v21

    #@220
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@223
    const/16 v21, 0x2c

    #@225
    move-object/from16 v0, p0

    #@227
    move/from16 v1, v21

    #@229
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@22c
    .line 2156
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    #@22f
    move-result v21

    #@230
    move-object/from16 v0, p0

    #@232
    move/from16 v1, v21

    #@234
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@237
    const/16 v21, 0x2c

    #@239
    move-object/from16 v0, p0

    #@23b
    move/from16 v1, v21

    #@23d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@240
    .line 2159
    move-object/from16 v0, p1

    #@242
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@244
    move/from16 v21, v0

    #@246
    move-object/from16 v0, p0

    #@248
    move/from16 v1, v21

    #@24a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@24d
    const/16 v21, 0x2c

    #@24f
    move-object/from16 v0, p0

    #@251
    move/from16 v1, v21

    #@253
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@256
    .line 2160
    move-object/from16 v0, p1

    #@258
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@25a
    move/from16 v21, v0

    #@25c
    move-object/from16 v0, p0

    #@25e
    move/from16 v1, v21

    #@260
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@263
    const/16 v21, 0x2c

    #@265
    move-object/from16 v0, p0

    #@267
    move/from16 v1, v21

    #@269
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@26c
    .line 2161
    move-object/from16 v0, p1

    #@26e
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@270
    move/from16 v21, v0

    #@272
    move-object/from16 v0, p0

    #@274
    move/from16 v1, v21

    #@276
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@279
    const/16 v21, 0x2c

    #@27b
    move-object/from16 v0, p0

    #@27d
    move/from16 v1, v21

    #@27f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@282
    .line 2162
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    #@285
    move-result v21

    #@286
    move-object/from16 v0, p0

    #@288
    move/from16 v1, v21

    #@28a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@28d
    const/16 v21, 0x2c

    #@28f
    move-object/from16 v0, p0

    #@291
    move/from16 v1, v21

    #@293
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@296
    .line 2165
    move-object/from16 v0, p1

    #@298
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@29a
    move/from16 v21, v0

    #@29c
    move-object/from16 v0, p0

    #@29e
    move/from16 v1, v21

    #@2a0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2a3
    const/16 v21, 0x2c

    #@2a5
    move-object/from16 v0, p0

    #@2a7
    move/from16 v1, v21

    #@2a9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@2ac
    .line 2166
    move-object/from16 v0, p1

    #@2ae
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@2b0
    move/from16 v21, v0

    #@2b2
    move-object/from16 v0, p0

    #@2b4
    move/from16 v1, v21

    #@2b6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2b9
    const/16 v21, 0x2c

    #@2bb
    move-object/from16 v0, p0

    #@2bd
    move/from16 v1, v21

    #@2bf
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@2c2
    .line 2167
    move-object/from16 v0, p1

    #@2c4
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    #@2c6
    move/from16 v21, v0

    #@2c8
    move-object/from16 v0, p0

    #@2ca
    move/from16 v1, v21

    #@2cc
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2cf
    const/16 v21, 0x2c

    #@2d1
    move-object/from16 v0, p0

    #@2d3
    move/from16 v1, v21

    #@2d5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@2d8
    .line 2168
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    #@2db
    move-result v21

    #@2dc
    move-object/from16 v0, p0

    #@2de
    move/from16 v1, v21

    #@2e0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2e3
    const/16 v21, 0x2c

    #@2e5
    move-object/from16 v0, p0

    #@2e7
    move/from16 v1, v21

    #@2e9
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@2ec
    .line 2171
    move-object/from16 v0, p1

    #@2ee
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    #@2f0
    move/from16 v21, v0

    #@2f2
    move-object/from16 v0, p0

    #@2f4
    move/from16 v1, v21

    #@2f6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2f9
    const/16 v21, 0x2c

    #@2fb
    move-object/from16 v0, p0

    #@2fd
    move/from16 v1, v21

    #@2ff
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@302
    .line 2172
    move-object/from16 v0, p1

    #@304
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    #@306
    move/from16 v21, v0

    #@308
    move-object/from16 v0, p0

    #@30a
    move/from16 v1, v21

    #@30c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@30f
    const/16 v21, 0x2c

    #@311
    move-object/from16 v0, p0

    #@313
    move/from16 v1, v21

    #@315
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@318
    .line 2173
    move-object/from16 v0, p1

    #@31a
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    #@31c
    move/from16 v21, v0

    #@31e
    move-object/from16 v0, p0

    #@320
    move/from16 v1, v21

    #@322
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@325
    const/16 v21, 0x2c

    #@327
    move-object/from16 v0, p0

    #@329
    move/from16 v1, v21

    #@32b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@32e
    .line 2174
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    #@331
    move-result v21

    #@332
    move-object/from16 v0, p0

    #@334
    move/from16 v1, v21

    #@336
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@339
    const/16 v21, 0x2c

    #@33b
    move-object/from16 v0, p0

    #@33d
    move/from16 v1, v21

    #@33f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@342
    .line 2177
    move-object/from16 v0, p1

    #@344
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@346
    move/from16 v21, v0

    #@348
    if-eqz v21, :cond_0

    #@34a
    .line 2178
    move-object/from16 v0, p1

    #@34c
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    #@34e
    move/from16 v21, v0

    #@350
    move-object/from16 v0, p0

    #@352
    move/from16 v1, v21

    #@354
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@357
    const/16 v21, 0x2c

    #@359
    move-object/from16 v0, p0

    #@35b
    move/from16 v1, v21

    #@35d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@360
    .line 2179
    move-object/from16 v0, p1

    #@362
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    #@364
    move/from16 v21, v0

    #@366
    move-object/from16 v0, p0

    #@368
    move/from16 v1, v21

    #@36a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@36d
    const/16 v21, 0x2c

    #@36f
    move-object/from16 v0, p0

    #@371
    move/from16 v1, v21

    #@373
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@376
    .line 2180
    move-object/from16 v0, p1

    #@378
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    #@37a
    move/from16 v21, v0

    #@37c
    move-object/from16 v0, p0

    #@37e
    move/from16 v1, v21

    #@380
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@383
    const/16 v21, 0x2c

    #@385
    move-object/from16 v0, p0

    #@387
    move/from16 v1, v21

    #@389
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@38c
    .line 2181
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    #@38f
    move-result v21

    #@390
    move-object/from16 v0, p0

    #@392
    move/from16 v1, v21

    #@394
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@397
    const/16 v21, 0x2c

    #@399
    move-object/from16 v0, p0

    #@39b
    move/from16 v1, v21

    #@39d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@3a0
    .line 2190
    :goto_0
    const/4 v4, 0x0

    #@3a1
    .local v4, "i":I
    :goto_1
    const/16 v21, 0x11

    #@3a3
    move/from16 v0, v21

    #@3a5
    if-ge v4, v0, :cond_2

    #@3a7
    .line 2191
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    #@3aa
    move-result-object v21

    #@3ab
    move-object/from16 v0, p0

    #@3ad
    move-object/from16 v1, v21

    #@3af
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b2
    const/16 v21, 0x2c

    #@3b4
    move-object/from16 v0, p0

    #@3b6
    move/from16 v1, v21

    #@3b8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@3bb
    .line 2192
    move-object/from16 v0, p1

    #@3bd
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    #@3c0
    move-result v21

    #@3c1
    move-object/from16 v0, p0

    #@3c3
    move/from16 v1, v21

    #@3c5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@3c8
    const/16 v21, 0x2c

    #@3ca
    move-object/from16 v0, p0

    #@3cc
    move/from16 v1, v21

    #@3ce
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@3d1
    .line 2193
    move-object/from16 v0, p1

    #@3d3
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    #@3d6
    move-result v21

    #@3d7
    move-object/from16 v0, p0

    #@3d9
    move/from16 v1, v21

    #@3db
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@3de
    const/16 v21, 0x2c

    #@3e0
    move-object/from16 v0, p0

    #@3e2
    move/from16 v1, v21

    #@3e4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@3e7
    .line 2194
    move-object/from16 v0, p1

    #@3e9
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    #@3ec
    move-result v21

    #@3ed
    move-object/from16 v0, p0

    #@3ef
    move/from16 v1, v21

    #@3f1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@3f4
    const/16 v21, 0x2c

    #@3f6
    move-object/from16 v0, p0

    #@3f8
    move/from16 v1, v21

    #@3fa
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@3fd
    .line 2195
    move-object/from16 v0, p1

    #@3ff
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    #@402
    move-result v21

    #@403
    move-object/from16 v0, p0

    #@405
    move/from16 v1, v21

    #@407
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@40a
    const/16 v21, 0x2c

    #@40c
    move-object/from16 v0, p0

    #@40e
    move/from16 v1, v21

    #@410
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@413
    .line 2196
    move-object/from16 v0, p1

    #@415
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    #@418
    move-result v21

    #@419
    move-object/from16 v0, p0

    #@41b
    move/from16 v1, v21

    #@41d
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@420
    const/16 v21, 0x2c

    #@422
    move-object/from16 v0, p0

    #@424
    move/from16 v1, v21

    #@426
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@429
    .line 2197
    move-object/from16 v0, p1

    #@42b
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    #@42e
    move-result v21

    #@42f
    move-object/from16 v0, p0

    #@431
    move/from16 v1, v21

    #@433
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@436
    const/16 v21, 0x2c

    #@438
    move-object/from16 v0, p0

    #@43a
    move/from16 v1, v21

    #@43c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@43f
    .line 2198
    move-object/from16 v0, p1

    #@441
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    #@444
    move-result v21

    #@445
    move-object/from16 v0, p0

    #@447
    move/from16 v1, v21

    #@449
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@44c
    const/16 v21, 0x2c

    #@44e
    move-object/from16 v0, p0

    #@450
    move/from16 v1, v21

    #@452
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@455
    .line 2199
    move-object/from16 v0, p1

    #@457
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@459
    move/from16 v21, v0

    #@45b
    if-eqz v21, :cond_1

    #@45d
    .line 2200
    move-object/from16 v0, p1

    #@45f
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    #@462
    move-result v21

    #@463
    move-object/from16 v0, p0

    #@465
    move/from16 v1, v21

    #@467
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@46a
    const/16 v21, 0x2c

    #@46c
    move-object/from16 v0, p0

    #@46e
    move/from16 v1, v21

    #@470
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@473
    .line 2190
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@475
    goto/16 :goto_1

    #@477
    .line 2183
    .end local v4    # "i":I
    :cond_0
    const-string/jumbo v21, "N/A,"

    #@47a
    move-object/from16 v0, p0

    #@47c
    move-object/from16 v1, v21

    #@47e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@481
    .line 2184
    const-string/jumbo v21, "N/A,"

    #@484
    move-object/from16 v0, p0

    #@486
    move-object/from16 v1, v21

    #@488
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48b
    .line 2185
    const-string/jumbo v21, "N/A,"

    #@48e
    move-object/from16 v0, p0

    #@490
    move-object/from16 v1, v21

    #@492
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@495
    .line 2186
    const-string/jumbo v21, "N/A,"

    #@498
    move-object/from16 v0, p0

    #@49a
    move-object/from16 v1, v21

    #@49c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49f
    goto/16 :goto_0

    #@4a1
    .line 2202
    .restart local v4    # "i":I
    :cond_1
    const-string/jumbo v21, "N/A,"

    #@4a4
    move-object/from16 v0, p0

    #@4a6
    move-object/from16 v1, v21

    #@4a8
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ab
    goto :goto_2

    #@4ac
    .line 2205
    :cond_2
    return-void

    #@4ad
    .line 2208
    .end local v4    # "i":I
    :cond_3
    if-nez p5, :cond_1f

    #@4af
    .line 2209
    if-eqz p3, :cond_9

    #@4b1
    .line 2210
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@4b4
    const/16 v21, 0xb

    #@4b6
    move/from16 v0, v21

    #@4b8
    new-array v0, v0, [Ljava/lang/Object;

    #@4ba
    move-object/from16 v23, v0

    #@4bc
    const-string/jumbo v21, ""

    #@4bf
    const/16 v24, 0x0

    #@4c1
    aput-object v21, v23, v24

    #@4c3
    const-string/jumbo v21, "Pss"

    #@4c6
    const/16 v24, 0x1

    #@4c8
    aput-object v21, v23, v24

    #@4ca
    const-string/jumbo v21, "Pss"

    #@4cd
    const/16 v24, 0x2

    #@4cf
    aput-object v21, v23, v24

    #@4d1
    const-string/jumbo v21, "Shared"

    #@4d4
    const/16 v24, 0x3

    #@4d6
    aput-object v21, v23, v24

    #@4d8
    const-string/jumbo v21, "Private"

    #@4db
    const/16 v24, 0x4

    #@4dd
    aput-object v21, v23, v24

    #@4df
    .line 2211
    const-string/jumbo v21, "Shared"

    #@4e2
    const/16 v24, 0x5

    #@4e4
    aput-object v21, v23, v24

    #@4e6
    const-string/jumbo v21, "Private"

    #@4e9
    const/16 v24, 0x6

    #@4eb
    aput-object v21, v23, v24

    #@4ed
    move-object/from16 v0, p1

    #@4ef
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@4f1
    move/from16 v21, v0

    #@4f3
    if-eqz v21, :cond_6

    #@4f5
    const-string/jumbo v21, "SwapPss"

    #@4f8
    :goto_3
    const/16 v24, 0x7

    #@4fa
    aput-object v21, v23, v24

    #@4fc
    .line 2212
    const-string/jumbo v21, "Heap"

    #@4ff
    const/16 v24, 0x8

    #@501
    aput-object v21, v23, v24

    #@503
    const-string/jumbo v21, "Heap"

    #@506
    const/16 v24, 0x9

    #@508
    aput-object v21, v23, v24

    #@50a
    const-string/jumbo v21, "Heap"

    #@50d
    const/16 v24, 0xa

    #@50f
    aput-object v21, v23, v24

    #@511
    .line 2210
    move-object/from16 v0, p0

    #@513
    move-object/from16 v1, v22

    #@515
    move-object/from16 v2, v23

    #@517
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@51a
    .line 2213
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@51d
    const/16 v22, 0xb

    #@51f
    move/from16 v0, v22

    #@521
    new-array v0, v0, [Ljava/lang/Object;

    #@523
    move-object/from16 v22, v0

    #@525
    const-string/jumbo v23, ""

    #@528
    const/16 v24, 0x0

    #@52a
    aput-object v23, v22, v24

    #@52c
    const-string/jumbo v23, "Total"

    #@52f
    const/16 v24, 0x1

    #@531
    aput-object v23, v22, v24

    #@533
    const-string/jumbo v23, "Clean"

    #@536
    const/16 v24, 0x2

    #@538
    aput-object v23, v22, v24

    #@53a
    const-string/jumbo v23, "Dirty"

    #@53d
    const/16 v24, 0x3

    #@53f
    aput-object v23, v22, v24

    #@541
    const-string/jumbo v23, "Dirty"

    #@544
    const/16 v24, 0x4

    #@546
    aput-object v23, v22, v24

    #@548
    .line 2214
    const-string/jumbo v23, "Clean"

    #@54b
    const/16 v24, 0x5

    #@54d
    aput-object v23, v22, v24

    #@54f
    const-string/jumbo v23, "Clean"

    #@552
    const/16 v24, 0x6

    #@554
    aput-object v23, v22, v24

    #@556
    const-string/jumbo v23, "Dirty"

    #@559
    const/16 v24, 0x7

    #@55b
    aput-object v23, v22, v24

    #@55d
    .line 2215
    const-string/jumbo v23, "Size"

    #@560
    const/16 v24, 0x8

    #@562
    aput-object v23, v22, v24

    #@564
    const-string/jumbo v23, "Alloc"

    #@567
    const/16 v24, 0x9

    #@569
    aput-object v23, v22, v24

    #@56b
    const-string/jumbo v23, "Free"

    #@56e
    const/16 v24, 0xa

    #@570
    aput-object v23, v22, v24

    #@572
    .line 2213
    move-object/from16 v0, p0

    #@574
    move-object/from16 v1, v21

    #@576
    move-object/from16 v2, v22

    #@578
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@57b
    .line 2216
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@57e
    const/16 v22, 0xb

    #@580
    move/from16 v0, v22

    #@582
    new-array v0, v0, [Ljava/lang/Object;

    #@584
    move-object/from16 v22, v0

    #@586
    const-string/jumbo v23, ""

    #@589
    const/16 v24, 0x0

    #@58b
    aput-object v23, v22, v24

    #@58d
    const-string/jumbo v23, "------"

    #@590
    const/16 v24, 0x1

    #@592
    aput-object v23, v22, v24

    #@594
    const-string/jumbo v23, "------"

    #@597
    const/16 v24, 0x2

    #@599
    aput-object v23, v22, v24

    #@59b
    const-string/jumbo v23, "------"

    #@59e
    const/16 v24, 0x3

    #@5a0
    aput-object v23, v22, v24

    #@5a2
    const-string/jumbo v23, "------"

    #@5a5
    const/16 v24, 0x4

    #@5a7
    aput-object v23, v22, v24

    #@5a9
    .line 2217
    const-string/jumbo v23, "------"

    #@5ac
    const/16 v24, 0x5

    #@5ae
    aput-object v23, v22, v24

    #@5b0
    const-string/jumbo v23, "------"

    #@5b3
    const/16 v24, 0x6

    #@5b5
    aput-object v23, v22, v24

    #@5b7
    const-string/jumbo v23, "------"

    #@5ba
    const/16 v24, 0x7

    #@5bc
    aput-object v23, v22, v24

    #@5be
    const-string/jumbo v23, "------"

    #@5c1
    const/16 v24, 0x8

    #@5c3
    aput-object v23, v22, v24

    #@5c5
    const-string/jumbo v23, "------"

    #@5c8
    const/16 v24, 0x9

    #@5ca
    aput-object v23, v22, v24

    #@5cc
    const-string/jumbo v23, "------"

    #@5cf
    const/16 v24, 0xa

    #@5d1
    aput-object v23, v22, v24

    #@5d3
    .line 2216
    move-object/from16 v0, p0

    #@5d5
    move-object/from16 v1, v21

    #@5d7
    move-object/from16 v2, v22

    #@5d9
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@5dc
    .line 2218
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@5df
    const/16 v21, 0xb

    #@5e1
    move/from16 v0, v21

    #@5e3
    new-array v0, v0, [Ljava/lang/Object;

    #@5e5
    move-object/from16 v23, v0

    #@5e7
    const-string/jumbo v21, "Native Heap"

    #@5ea
    const/16 v24, 0x0

    #@5ec
    aput-object v21, v23, v24

    #@5ee
    move-object/from16 v0, p1

    #@5f0
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@5f2
    move/from16 v21, v0

    #@5f4
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f7
    move-result-object v21

    #@5f8
    const/16 v24, 0x1

    #@5fa
    aput-object v21, v23, v24

    #@5fc
    .line 2219
    move-object/from16 v0, p1

    #@5fe
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    #@600
    move/from16 v21, v0

    #@602
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@605
    move-result-object v21

    #@606
    const/16 v24, 0x2

    #@608
    aput-object v21, v23, v24

    #@60a
    move-object/from16 v0, p1

    #@60c
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    #@60e
    move/from16 v21, v0

    #@610
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@613
    move-result-object v21

    #@614
    const/16 v24, 0x3

    #@616
    aput-object v21, v23, v24

    #@618
    .line 2220
    move-object/from16 v0, p1

    #@61a
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@61c
    move/from16 v21, v0

    #@61e
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@621
    move-result-object v21

    #@622
    const/16 v24, 0x4

    #@624
    aput-object v21, v23, v24

    #@626
    move-object/from16 v0, p1

    #@628
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    #@62a
    move/from16 v21, v0

    #@62c
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62f
    move-result-object v21

    #@630
    const/16 v24, 0x5

    #@632
    aput-object v21, v23, v24

    #@634
    .line 2221
    move-object/from16 v0, p1

    #@636
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@638
    move/from16 v21, v0

    #@63a
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63d
    move-result-object v21

    #@63e
    const/16 v24, 0x6

    #@640
    aput-object v21, v23, v24

    #@642
    move-object/from16 v0, p1

    #@644
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@646
    move/from16 v21, v0

    #@648
    if-eqz v21, :cond_7

    #@64a
    .line 2222
    move-object/from16 v0, p1

    #@64c
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    #@64e
    move/from16 v21, v0

    #@650
    .line 2221
    :goto_4
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@653
    move-result-object v21

    #@654
    const/16 v24, 0x7

    #@656
    aput-object v21, v23, v24

    #@658
    .line 2223
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@65b
    move-result-object v21

    #@65c
    const/16 v24, 0x8

    #@65e
    aput-object v21, v23, v24

    #@660
    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@663
    move-result-object v21

    #@664
    const/16 v24, 0x9

    #@666
    aput-object v21, v23, v24

    #@668
    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@66b
    move-result-object v21

    #@66c
    const/16 v24, 0xa

    #@66e
    aput-object v21, v23, v24

    #@670
    .line 2218
    move-object/from16 v0, p0

    #@672
    move-object/from16 v1, v22

    #@674
    move-object/from16 v2, v23

    #@676
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@679
    .line 2224
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@67c
    const/16 v21, 0xb

    #@67e
    move/from16 v0, v21

    #@680
    new-array v0, v0, [Ljava/lang/Object;

    #@682
    move-object/from16 v23, v0

    #@684
    const-string/jumbo v21, "Dalvik Heap"

    #@687
    const/16 v24, 0x0

    #@689
    aput-object v21, v23, v24

    #@68b
    move-object/from16 v0, p1

    #@68d
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@68f
    move/from16 v21, v0

    #@691
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@694
    move-result-object v21

    #@695
    const/16 v24, 0x1

    #@697
    aput-object v21, v23, v24

    #@699
    .line 2225
    move-object/from16 v0, p1

    #@69b
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    #@69d
    move/from16 v21, v0

    #@69f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6a2
    move-result-object v21

    #@6a3
    const/16 v24, 0x2

    #@6a5
    aput-object v21, v23, v24

    #@6a7
    move-object/from16 v0, p1

    #@6a9
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    #@6ab
    move/from16 v21, v0

    #@6ad
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6b0
    move-result-object v21

    #@6b1
    const/16 v24, 0x3

    #@6b3
    aput-object v21, v23, v24

    #@6b5
    .line 2226
    move-object/from16 v0, p1

    #@6b7
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@6b9
    move/from16 v21, v0

    #@6bb
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6be
    move-result-object v21

    #@6bf
    const/16 v24, 0x4

    #@6c1
    aput-object v21, v23, v24

    #@6c3
    move-object/from16 v0, p1

    #@6c5
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    #@6c7
    move/from16 v21, v0

    #@6c9
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6cc
    move-result-object v21

    #@6cd
    const/16 v24, 0x5

    #@6cf
    aput-object v21, v23, v24

    #@6d1
    .line 2227
    move-object/from16 v0, p1

    #@6d3
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@6d5
    move/from16 v21, v0

    #@6d7
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6da
    move-result-object v21

    #@6db
    const/16 v24, 0x6

    #@6dd
    aput-object v21, v23, v24

    #@6df
    move-object/from16 v0, p1

    #@6e1
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@6e3
    move/from16 v21, v0

    #@6e5
    if-eqz v21, :cond_8

    #@6e7
    .line 2228
    move-object/from16 v0, p1

    #@6e9
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    #@6eb
    move/from16 v21, v0

    #@6ed
    .line 2227
    :goto_5
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f0
    move-result-object v21

    #@6f1
    const/16 v24, 0x7

    #@6f3
    aput-object v21, v23, v24

    #@6f5
    .line 2229
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6f8
    move-result-object v21

    #@6f9
    const/16 v24, 0x8

    #@6fb
    aput-object v21, v23, v24

    #@6fd
    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@700
    move-result-object v21

    #@701
    const/16 v24, 0x9

    #@703
    aput-object v21, v23, v24

    #@705
    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@708
    move-result-object v21

    #@709
    const/16 v24, 0xa

    #@70b
    aput-object v21, v23, v24

    #@70d
    .line 2224
    move-object/from16 v0, p0

    #@70f
    move-object/from16 v1, v22

    #@711
    move-object/from16 v2, v23

    #@713
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@716
    .line 2252
    :goto_6
    move-object/from16 v0, p1

    #@718
    iget v15, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    #@71a
    .line 2253
    .local v15, "otherPss":I
    move-object/from16 v0, p1

    #@71c
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    #@71e
    move/from16 v18, v0

    #@720
    .line 2254
    .local v18, "otherSwappablePss":I
    move-object/from16 v0, p1

    #@722
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    #@724
    move/from16 v17, v0

    #@726
    .line 2255
    .local v17, "otherSharedDirty":I
    move-object/from16 v0, p1

    #@728
    iget v14, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@72a
    .line 2256
    .local v14, "otherPrivateDirty":I
    move-object/from16 v0, p1

    #@72c
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    #@72e
    move/from16 v16, v0

    #@730
    .line 2257
    .local v16, "otherSharedClean":I
    move-object/from16 v0, p1

    #@732
    iget v13, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    #@734
    .line 2258
    .local v13, "otherPrivateClean":I
    move-object/from16 v0, p1

    #@736
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    #@738
    move/from16 v19, v0

    #@73a
    .line 2259
    .local v19, "otherSwappedOut":I
    move-object/from16 v0, p1

    #@73c
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    #@73e
    move/from16 v20, v0

    #@740
    .line 2261
    .local v20, "otherSwappedOutPss":I
    const/4 v4, 0x0

    #@741
    .restart local v4    # "i":I
    :goto_7
    const/16 v21, 0x11

    #@743
    move/from16 v0, v21

    #@745
    if-ge v4, v0, :cond_12

    #@747
    .line 2262
    move-object/from16 v0, p1

    #@749
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    #@74c
    move-result v7

    #@74d
    .line 2263
    .local v7, "myPss":I
    move-object/from16 v0, p1

    #@74f
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    #@752
    move-result v10

    #@753
    .line 2264
    .local v10, "mySwappablePss":I
    move-object/from16 v0, p1

    #@755
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    #@758
    move-result v9

    #@759
    .line 2265
    .local v9, "mySharedDirty":I
    move-object/from16 v0, p1

    #@75b
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    #@75e
    move-result v6

    #@75f
    .line 2266
    .local v6, "myPrivateDirty":I
    move-object/from16 v0, p1

    #@761
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    #@764
    move-result v8

    #@765
    .line 2267
    .local v8, "mySharedClean":I
    move-object/from16 v0, p1

    #@767
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    #@76a
    move-result v5

    #@76b
    .line 2268
    .local v5, "myPrivateClean":I
    move-object/from16 v0, p1

    #@76d
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    #@770
    move-result v11

    #@771
    .line 2269
    .local v11, "mySwappedOut":I
    move-object/from16 v0, p1

    #@773
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    #@776
    move-result v12

    #@777
    .line 2270
    .local v12, "mySwappedOutPss":I
    if-nez v7, :cond_4

    #@779
    if-eqz v9, :cond_d

    #@77b
    .line 2273
    :cond_4
    :goto_8
    if-eqz p3, :cond_10

    #@77d
    .line 2274
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@780
    const/16 v21, 0xb

    #@782
    move/from16 v0, v21

    #@784
    new-array v0, v0, [Ljava/lang/Object;

    #@786
    move-object/from16 v23, v0

    #@788
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    #@78b
    move-result-object v21

    #@78c
    const/16 v24, 0x0

    #@78e
    aput-object v21, v23, v24

    #@790
    .line 2275
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@793
    move-result-object v21

    #@794
    const/16 v24, 0x1

    #@796
    aput-object v21, v23, v24

    #@798
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79b
    move-result-object v21

    #@79c
    const/16 v24, 0x2

    #@79e
    aput-object v21, v23, v24

    #@7a0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7a3
    move-result-object v21

    #@7a4
    const/16 v24, 0x3

    #@7a6
    aput-object v21, v23, v24

    #@7a8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7ab
    move-result-object v21

    #@7ac
    const/16 v24, 0x4

    #@7ae
    aput-object v21, v23, v24

    #@7b0
    .line 2276
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b3
    move-result-object v21

    #@7b4
    const/16 v24, 0x5

    #@7b6
    aput-object v21, v23, v24

    #@7b8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7bb
    move-result-object v21

    #@7bc
    const/16 v24, 0x6

    #@7be
    aput-object v21, v23, v24

    #@7c0
    .line 2277
    move-object/from16 v0, p1

    #@7c2
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@7c4
    move/from16 v21, v0

    #@7c6
    if-eqz v21, :cond_f

    #@7c8
    move/from16 v21, v12

    #@7ca
    :goto_9
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7cd
    move-result-object v21

    #@7ce
    const/16 v24, 0x7

    #@7d0
    aput-object v21, v23, v24

    #@7d2
    .line 2278
    const-string/jumbo v21, ""

    #@7d5
    const/16 v24, 0x8

    #@7d7
    aput-object v21, v23, v24

    #@7d9
    const-string/jumbo v21, ""

    #@7dc
    const/16 v24, 0x9

    #@7de
    aput-object v21, v23, v24

    #@7e0
    const-string/jumbo v21, ""

    #@7e3
    const/16 v24, 0xa

    #@7e5
    aput-object v21, v23, v24

    #@7e7
    .line 2274
    move-object/from16 v0, p0

    #@7e9
    move-object/from16 v1, v22

    #@7eb
    move-object/from16 v2, v23

    #@7ed
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@7f0
    .line 2286
    :goto_a
    sub-int/2addr v15, v7

    #@7f1
    .line 2287
    sub-int v18, v18, v10

    #@7f3
    .line 2288
    sub-int v17, v17, v9

    #@7f5
    .line 2289
    sub-int/2addr v14, v6

    #@7f6
    .line 2290
    sub-int v16, v16, v8

    #@7f8
    .line 2291
    sub-int/2addr v13, v5

    #@7f9
    .line 2292
    sub-int v19, v19, v11

    #@7fb
    .line 2293
    sub-int v20, v20, v12

    #@7fd
    .line 2261
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@7ff
    goto/16 :goto_7

    #@801
    .line 2211
    .end local v4    # "i":I
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "mySwappedOutPss":I
    .end local v13    # "otherPrivateClean":I
    .end local v14    # "otherPrivateDirty":I
    .end local v15    # "otherPss":I
    .end local v16    # "otherSharedClean":I
    .end local v17    # "otherSharedDirty":I
    .end local v18    # "otherSwappablePss":I
    .end local v19    # "otherSwappedOut":I
    .end local v20    # "otherSwappedOutPss":I
    :cond_6
    const-string/jumbo v21, "Swap"

    #@804
    goto/16 :goto_3

    #@806
    .line 2222
    :cond_7
    move-object/from16 v0, p1

    #@808
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    #@80a
    move/from16 v21, v0

    #@80c
    goto/16 :goto_4

    #@80e
    .line 2228
    :cond_8
    move-object/from16 v0, p1

    #@810
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    #@812
    move/from16 v21, v0

    #@814
    goto/16 :goto_5

    #@816
    .line 2231
    :cond_9
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@819
    const/16 v21, 0x8

    #@81b
    move/from16 v0, v21

    #@81d
    new-array v0, v0, [Ljava/lang/Object;

    #@81f
    move-object/from16 v23, v0

    #@821
    const-string/jumbo v21, ""

    #@824
    const/16 v24, 0x0

    #@826
    aput-object v21, v23, v24

    #@828
    const-string/jumbo v21, "Pss"

    #@82b
    const/16 v24, 0x1

    #@82d
    aput-object v21, v23, v24

    #@82f
    const-string/jumbo v21, "Private"

    #@832
    const/16 v24, 0x2

    #@834
    aput-object v21, v23, v24

    #@836
    .line 2232
    const-string/jumbo v21, "Private"

    #@839
    const/16 v24, 0x3

    #@83b
    aput-object v21, v23, v24

    #@83d
    move-object/from16 v0, p1

    #@83f
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@841
    move/from16 v21, v0

    #@843
    if-eqz v21, :cond_a

    #@845
    const-string/jumbo v21, "SwapPss"

    #@848
    :goto_b
    const/16 v24, 0x4

    #@84a
    aput-object v21, v23, v24

    #@84c
    .line 2233
    const-string/jumbo v21, "Heap"

    #@84f
    const/16 v24, 0x5

    #@851
    aput-object v21, v23, v24

    #@853
    const-string/jumbo v21, "Heap"

    #@856
    const/16 v24, 0x6

    #@858
    aput-object v21, v23, v24

    #@85a
    const-string/jumbo v21, "Heap"

    #@85d
    const/16 v24, 0x7

    #@85f
    aput-object v21, v23, v24

    #@861
    .line 2231
    move-object/from16 v0, p0

    #@863
    move-object/from16 v1, v22

    #@865
    move-object/from16 v2, v23

    #@867
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@86a
    .line 2234
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@86d
    const/16 v22, 0x8

    #@86f
    move/from16 v0, v22

    #@871
    new-array v0, v0, [Ljava/lang/Object;

    #@873
    move-object/from16 v22, v0

    #@875
    const-string/jumbo v23, ""

    #@878
    const/16 v24, 0x0

    #@87a
    aput-object v23, v22, v24

    #@87c
    const-string/jumbo v23, "Total"

    #@87f
    const/16 v24, 0x1

    #@881
    aput-object v23, v22, v24

    #@883
    const-string/jumbo v23, "Dirty"

    #@886
    const/16 v24, 0x2

    #@888
    aput-object v23, v22, v24

    #@88a
    .line 2235
    const-string/jumbo v23, "Clean"

    #@88d
    const/16 v24, 0x3

    #@88f
    aput-object v23, v22, v24

    #@891
    const-string/jumbo v23, "Dirty"

    #@894
    const/16 v24, 0x4

    #@896
    aput-object v23, v22, v24

    #@898
    const-string/jumbo v23, "Size"

    #@89b
    const/16 v24, 0x5

    #@89d
    aput-object v23, v22, v24

    #@89f
    const-string/jumbo v23, "Alloc"

    #@8a2
    const/16 v24, 0x6

    #@8a4
    aput-object v23, v22, v24

    #@8a6
    const-string/jumbo v23, "Free"

    #@8a9
    const/16 v24, 0x7

    #@8ab
    aput-object v23, v22, v24

    #@8ad
    .line 2234
    move-object/from16 v0, p0

    #@8af
    move-object/from16 v1, v21

    #@8b1
    move-object/from16 v2, v22

    #@8b3
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@8b6
    .line 2236
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@8b9
    const/16 v22, 0x9

    #@8bb
    move/from16 v0, v22

    #@8bd
    new-array v0, v0, [Ljava/lang/Object;

    #@8bf
    move-object/from16 v22, v0

    #@8c1
    const-string/jumbo v23, ""

    #@8c4
    const/16 v24, 0x0

    #@8c6
    aput-object v23, v22, v24

    #@8c8
    const-string/jumbo v23, "------"

    #@8cb
    const/16 v24, 0x1

    #@8cd
    aput-object v23, v22, v24

    #@8cf
    const-string/jumbo v23, "------"

    #@8d2
    const/16 v24, 0x2

    #@8d4
    aput-object v23, v22, v24

    #@8d6
    const-string/jumbo v23, "------"

    #@8d9
    const/16 v24, 0x3

    #@8db
    aput-object v23, v22, v24

    #@8dd
    .line 2237
    const-string/jumbo v23, "------"

    #@8e0
    const/16 v24, 0x4

    #@8e2
    aput-object v23, v22, v24

    #@8e4
    const-string/jumbo v23, "------"

    #@8e7
    const/16 v24, 0x5

    #@8e9
    aput-object v23, v22, v24

    #@8eb
    const-string/jumbo v23, "------"

    #@8ee
    const/16 v24, 0x6

    #@8f0
    aput-object v23, v22, v24

    #@8f2
    const-string/jumbo v23, "------"

    #@8f5
    const/16 v24, 0x7

    #@8f7
    aput-object v23, v22, v24

    #@8f9
    const-string/jumbo v23, "------"

    #@8fc
    const/16 v24, 0x8

    #@8fe
    aput-object v23, v22, v24

    #@900
    .line 2236
    move-object/from16 v0, p0

    #@902
    move-object/from16 v1, v21

    #@904
    move-object/from16 v2, v22

    #@906
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@909
    .line 2238
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@90c
    const/16 v21, 0x8

    #@90e
    move/from16 v0, v21

    #@910
    new-array v0, v0, [Ljava/lang/Object;

    #@912
    move-object/from16 v23, v0

    #@914
    const-string/jumbo v21, "Native Heap"

    #@917
    const/16 v24, 0x0

    #@919
    aput-object v21, v23, v24

    #@91b
    move-object/from16 v0, p1

    #@91d
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@91f
    move/from16 v21, v0

    #@921
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@924
    move-result-object v21

    #@925
    const/16 v24, 0x1

    #@927
    aput-object v21, v23, v24

    #@929
    .line 2239
    move-object/from16 v0, p1

    #@92b
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@92d
    move/from16 v21, v0

    #@92f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@932
    move-result-object v21

    #@933
    const/16 v24, 0x2

    #@935
    aput-object v21, v23, v24

    #@937
    .line 2240
    move-object/from16 v0, p1

    #@939
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@93b
    move/from16 v21, v0

    #@93d
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@940
    move-result-object v21

    #@941
    const/16 v24, 0x3

    #@943
    aput-object v21, v23, v24

    #@945
    .line 2241
    move-object/from16 v0, p1

    #@947
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@949
    move/from16 v21, v0

    #@94b
    if-eqz v21, :cond_b

    #@94d
    move-object/from16 v0, p1

    #@94f
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    #@951
    move/from16 v21, v0

    #@953
    :goto_c
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@956
    move-result-object v21

    #@957
    const/16 v24, 0x4

    #@959
    aput-object v21, v23, v24

    #@95b
    .line 2243
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@95e
    move-result-object v21

    #@95f
    const/16 v24, 0x5

    #@961
    aput-object v21, v23, v24

    #@963
    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@966
    move-result-object v21

    #@967
    const/16 v24, 0x6

    #@969
    aput-object v21, v23, v24

    #@96b
    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@96e
    move-result-object v21

    #@96f
    const/16 v24, 0x7

    #@971
    aput-object v21, v23, v24

    #@973
    .line 2238
    move-object/from16 v0, p0

    #@975
    move-object/from16 v1, v22

    #@977
    move-object/from16 v2, v23

    #@979
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@97c
    .line 2244
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@97f
    const/16 v21, 0x8

    #@981
    move/from16 v0, v21

    #@983
    new-array v0, v0, [Ljava/lang/Object;

    #@985
    move-object/from16 v23, v0

    #@987
    const-string/jumbo v21, "Dalvik Heap"

    #@98a
    const/16 v24, 0x0

    #@98c
    aput-object v21, v23, v24

    #@98e
    move-object/from16 v0, p1

    #@990
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@992
    move/from16 v21, v0

    #@994
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@997
    move-result-object v21

    #@998
    const/16 v24, 0x1

    #@99a
    aput-object v21, v23, v24

    #@99c
    .line 2245
    move-object/from16 v0, p1

    #@99e
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@9a0
    move/from16 v21, v0

    #@9a2
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9a5
    move-result-object v21

    #@9a6
    const/16 v24, 0x2

    #@9a8
    aput-object v21, v23, v24

    #@9aa
    .line 2246
    move-object/from16 v0, p1

    #@9ac
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@9ae
    move/from16 v21, v0

    #@9b0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9b3
    move-result-object v21

    #@9b4
    const/16 v24, 0x3

    #@9b6
    aput-object v21, v23, v24

    #@9b8
    .line 2247
    move-object/from16 v0, p1

    #@9ba
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@9bc
    move/from16 v21, v0

    #@9be
    if-eqz v21, :cond_c

    #@9c0
    move-object/from16 v0, p1

    #@9c2
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    #@9c4
    move/from16 v21, v0

    #@9c6
    :goto_d
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9c9
    move-result-object v21

    #@9ca
    const/16 v24, 0x4

    #@9cc
    aput-object v21, v23, v24

    #@9ce
    .line 2249
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9d1
    move-result-object v21

    #@9d2
    const/16 v24, 0x5

    #@9d4
    aput-object v21, v23, v24

    #@9d6
    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9d9
    move-result-object v21

    #@9da
    const/16 v24, 0x6

    #@9dc
    aput-object v21, v23, v24

    #@9de
    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9e1
    move-result-object v21

    #@9e2
    const/16 v24, 0x7

    #@9e4
    aput-object v21, v23, v24

    #@9e6
    .line 2244
    move-object/from16 v0, p0

    #@9e8
    move-object/from16 v1, v22

    #@9ea
    move-object/from16 v2, v23

    #@9ec
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9ef
    goto/16 :goto_6

    #@9f1
    .line 2232
    :cond_a
    const-string/jumbo v21, "Swap"

    #@9f4
    goto/16 :goto_b

    #@9f6
    .line 2242
    :cond_b
    move-object/from16 v0, p1

    #@9f8
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    #@9fa
    move/from16 v21, v0

    #@9fc
    goto/16 :goto_c

    #@9fe
    .line 2248
    :cond_c
    move-object/from16 v0, p1

    #@a00
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    #@a02
    move/from16 v21, v0

    #@a04
    goto :goto_d

    #@a05
    .line 2270
    .restart local v4    # "i":I
    .restart local v5    # "myPrivateClean":I
    .restart local v6    # "myPrivateDirty":I
    .restart local v7    # "myPss":I
    .restart local v8    # "mySharedClean":I
    .restart local v9    # "mySharedDirty":I
    .restart local v10    # "mySwappablePss":I
    .restart local v11    # "mySwappedOut":I
    .restart local v12    # "mySwappedOutPss":I
    .restart local v13    # "otherPrivateClean":I
    .restart local v14    # "otherPrivateDirty":I
    .restart local v15    # "otherPss":I
    .restart local v16    # "otherSharedClean":I
    .restart local v17    # "otherSharedDirty":I
    .restart local v18    # "otherSwappablePss":I
    .restart local v19    # "otherSwappedOut":I
    .restart local v20    # "otherSwappedOutPss":I
    :cond_d
    if-nez v6, :cond_4

    #@a07
    .line 2271
    if-nez v8, :cond_4

    #@a09
    if-nez v5, :cond_4

    #@a0b
    .line 2272
    move-object/from16 v0, p1

    #@a0d
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@a0f
    move/from16 v21, v0

    #@a11
    if-eqz v21, :cond_e

    #@a13
    move/from16 v21, v12

    #@a15
    :goto_e
    if-eqz v21, :cond_5

    #@a17
    goto/16 :goto_8

    #@a19
    :cond_e
    move/from16 v21, v11

    #@a1b
    goto :goto_e

    #@a1c
    :cond_f
    move/from16 v21, v11

    #@a1e
    .line 2277
    goto/16 :goto_9

    #@a20
    .line 2280
    :cond_10
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@a23
    const/16 v21, 0x8

    #@a25
    move/from16 v0, v21

    #@a27
    new-array v0, v0, [Ljava/lang/Object;

    #@a29
    move-object/from16 v23, v0

    #@a2b
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    #@a2e
    move-result-object v21

    #@a2f
    const/16 v24, 0x0

    #@a31
    aput-object v21, v23, v24

    #@a33
    .line 2281
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a36
    move-result-object v21

    #@a37
    const/16 v24, 0x1

    #@a39
    aput-object v21, v23, v24

    #@a3b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3e
    move-result-object v21

    #@a3f
    const/16 v24, 0x2

    #@a41
    aput-object v21, v23, v24

    #@a43
    .line 2282
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a46
    move-result-object v21

    #@a47
    const/16 v24, 0x3

    #@a49
    aput-object v21, v23, v24

    #@a4b
    .line 2283
    move-object/from16 v0, p1

    #@a4d
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@a4f
    move/from16 v21, v0

    #@a51
    if-eqz v21, :cond_11

    #@a53
    move/from16 v21, v12

    #@a55
    :goto_f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a58
    move-result-object v21

    #@a59
    const/16 v24, 0x4

    #@a5b
    aput-object v21, v23, v24

    #@a5d
    .line 2284
    const-string/jumbo v21, ""

    #@a60
    const/16 v24, 0x5

    #@a62
    aput-object v21, v23, v24

    #@a64
    const-string/jumbo v21, ""

    #@a67
    const/16 v24, 0x6

    #@a69
    aput-object v21, v23, v24

    #@a6b
    const-string/jumbo v21, ""

    #@a6e
    const/16 v24, 0x7

    #@a70
    aput-object v21, v23, v24

    #@a72
    .line 2280
    move-object/from16 v0, p0

    #@a74
    move-object/from16 v1, v22

    #@a76
    move-object/from16 v2, v23

    #@a78
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@a7b
    goto/16 :goto_a

    #@a7d
    :cond_11
    move/from16 v21, v11

    #@a7f
    .line 2283
    goto :goto_f

    #@a80
    .line 2297
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "mySwappedOutPss":I
    :cond_12
    if-eqz p3, :cond_17

    #@a82
    .line 2298
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@a85
    const/16 v22, 0xb

    #@a87
    move/from16 v0, v22

    #@a89
    new-array v0, v0, [Ljava/lang/Object;

    #@a8b
    move-object/from16 v22, v0

    #@a8d
    const-string/jumbo v23, "Unknown"

    #@a90
    const/16 v24, 0x0

    #@a92
    aput-object v23, v22, v24

    #@a94
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a97
    move-result-object v23

    #@a98
    const/16 v24, 0x1

    #@a9a
    aput-object v23, v22, v24

    #@a9c
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9f
    move-result-object v23

    #@aa0
    const/16 v24, 0x2

    #@aa2
    aput-object v23, v22, v24

    #@aa4
    .line 2299
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@aa7
    move-result-object v23

    #@aa8
    const/16 v24, 0x3

    #@aaa
    aput-object v23, v22, v24

    #@aac
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@aaf
    move-result-object v23

    #@ab0
    const/16 v24, 0x4

    #@ab2
    aput-object v23, v22, v24

    #@ab4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ab7
    move-result-object v23

    #@ab8
    const/16 v24, 0x5

    #@aba
    aput-object v23, v22, v24

    #@abc
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@abf
    move-result-object v23

    #@ac0
    const/16 v24, 0x6

    #@ac2
    aput-object v23, v22, v24

    #@ac4
    .line 2300
    move-object/from16 v0, p1

    #@ac6
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@ac8
    move/from16 v23, v0

    #@aca
    if-eqz v23, :cond_15

    #@acc
    .end local v20    # "otherSwappedOutPss":I
    :goto_10
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@acf
    move-result-object v23

    #@ad0
    const/16 v24, 0x7

    #@ad2
    aput-object v23, v22, v24

    #@ad4
    .line 2301
    const-string/jumbo v23, ""

    #@ad7
    const/16 v24, 0x8

    #@ad9
    aput-object v23, v22, v24

    #@adb
    const-string/jumbo v23, ""

    #@ade
    const/16 v24, 0x9

    #@ae0
    aput-object v23, v22, v24

    #@ae2
    const-string/jumbo v23, ""

    #@ae5
    const/16 v24, 0xa

    #@ae7
    aput-object v23, v22, v24

    #@ae9
    .line 2298
    move-object/from16 v0, p0

    #@aeb
    move-object/from16 v1, v21

    #@aed
    move-object/from16 v2, v22

    #@aef
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@af2
    .line 2302
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@af5
    const/16 v21, 0xb

    #@af7
    move/from16 v0, v21

    #@af9
    new-array v0, v0, [Ljava/lang/Object;

    #@afb
    move-object/from16 v23, v0

    #@afd
    const-string/jumbo v21, "TOTAL"

    #@b00
    const/16 v24, 0x0

    #@b02
    aput-object v21, v23, v24

    #@b04
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    #@b07
    move-result v21

    #@b08
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b0b
    move-result-object v21

    #@b0c
    const/16 v24, 0x1

    #@b0e
    aput-object v21, v23, v24

    #@b10
    .line 2303
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    #@b13
    move-result v21

    #@b14
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b17
    move-result-object v21

    #@b18
    const/16 v24, 0x2

    #@b1a
    aput-object v21, v23, v24

    #@b1c
    .line 2304
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    #@b1f
    move-result v21

    #@b20
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b23
    move-result-object v21

    #@b24
    const/16 v24, 0x3

    #@b26
    aput-object v21, v23, v24

    #@b28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    #@b2b
    move-result v21

    #@b2c
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b2f
    move-result-object v21

    #@b30
    const/16 v24, 0x4

    #@b32
    aput-object v21, v23, v24

    #@b34
    .line 2305
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    #@b37
    move-result v21

    #@b38
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b3b
    move-result-object v21

    #@b3c
    const/16 v24, 0x5

    #@b3e
    aput-object v21, v23, v24

    #@b40
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    #@b43
    move-result v21

    #@b44
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b47
    move-result-object v21

    #@b48
    const/16 v24, 0x6

    #@b4a
    aput-object v21, v23, v24

    #@b4c
    .line 2306
    move-object/from16 v0, p1

    #@b4e
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@b50
    move/from16 v21, v0

    #@b52
    if-eqz v21, :cond_16

    #@b54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    #@b57
    move-result v21

    #@b58
    :goto_11
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b5b
    move-result-object v21

    #@b5c
    const/16 v24, 0x7

    #@b5e
    aput-object v21, v23, v24

    #@b60
    .line 2308
    add-long v24, p8, p14

    #@b62
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b65
    move-result-object v21

    #@b66
    const/16 v24, 0x8

    #@b68
    aput-object v21, v23, v24

    #@b6a
    add-long v24, p10, p16

    #@b6c
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b6f
    move-result-object v21

    #@b70
    const/16 v24, 0x9

    #@b72
    aput-object v21, v23, v24

    #@b74
    .line 2309
    add-long v24, p12, p18

    #@b76
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b79
    move-result-object v21

    #@b7a
    const/16 v24, 0xa

    #@b7c
    aput-object v21, v23, v24

    #@b7e
    .line 2302
    move-object/from16 v0, p0

    #@b80
    move-object/from16 v1, v22

    #@b82
    move-object/from16 v2, v23

    #@b84
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@b87
    .line 2324
    :goto_12
    if-eqz p4, :cond_1f

    #@b89
    .line 2325
    const-string/jumbo v21, " "

    #@b8c
    move-object/from16 v0, p0

    #@b8e
    move-object/from16 v1, v21

    #@b90
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b93
    .line 2326
    const-string/jumbo v21, " Dalvik Details"

    #@b96
    move-object/from16 v0, p0

    #@b98
    move-object/from16 v1, v21

    #@b9a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b9d
    .line 2328
    const/16 v4, 0x11

    #@b9f
    .line 2329
    :goto_13
    const/16 v21, 0x19

    #@ba1
    .line 2328
    move/from16 v0, v21

    #@ba3
    if-ge v4, v0, :cond_1f

    #@ba5
    .line 2330
    move-object/from16 v0, p1

    #@ba7
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    #@baa
    move-result v7

    #@bab
    .line 2331
    .restart local v7    # "myPss":I
    move-object/from16 v0, p1

    #@bad
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    #@bb0
    move-result v10

    #@bb1
    .line 2332
    .restart local v10    # "mySwappablePss":I
    move-object/from16 v0, p1

    #@bb3
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    #@bb6
    move-result v9

    #@bb7
    .line 2333
    .restart local v9    # "mySharedDirty":I
    move-object/from16 v0, p1

    #@bb9
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    #@bbc
    move-result v6

    #@bbd
    .line 2334
    .restart local v6    # "myPrivateDirty":I
    move-object/from16 v0, p1

    #@bbf
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    #@bc2
    move-result v8

    #@bc3
    .line 2335
    .restart local v8    # "mySharedClean":I
    move-object/from16 v0, p1

    #@bc5
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    #@bc8
    move-result v5

    #@bc9
    .line 2336
    .restart local v5    # "myPrivateClean":I
    move-object/from16 v0, p1

    #@bcb
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    #@bce
    move-result v11

    #@bcf
    .line 2337
    .restart local v11    # "mySwappedOut":I
    move-object/from16 v0, p1

    #@bd1
    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    #@bd4
    move-result v12

    #@bd5
    .line 2338
    .restart local v12    # "mySwappedOutPss":I
    if-nez v7, :cond_13

    #@bd7
    if-eqz v9, :cond_1a

    #@bd9
    .line 2341
    :cond_13
    :goto_14
    if-eqz p3, :cond_1d

    #@bdb
    .line 2342
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    #@bde
    const/16 v22, 0xb

    #@be0
    move/from16 v0, v22

    #@be2
    new-array v0, v0, [Ljava/lang/Object;

    #@be4
    move-object/from16 v22, v0

    #@be6
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    #@be9
    move-result-object v23

    #@bea
    const/16 v24, 0x0

    #@bec
    aput-object v23, v22, v24

    #@bee
    .line 2343
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bf1
    move-result-object v23

    #@bf2
    const/16 v24, 0x1

    #@bf4
    aput-object v23, v22, v24

    #@bf6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bf9
    move-result-object v23

    #@bfa
    const/16 v24, 0x2

    #@bfc
    aput-object v23, v22, v24

    #@bfe
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c01
    move-result-object v23

    #@c02
    const/16 v24, 0x3

    #@c04
    aput-object v23, v22, v24

    #@c06
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c09
    move-result-object v23

    #@c0a
    const/16 v24, 0x4

    #@c0c
    aput-object v23, v22, v24

    #@c0e
    .line 2344
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c11
    move-result-object v23

    #@c12
    const/16 v24, 0x5

    #@c14
    aput-object v23, v22, v24

    #@c16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c19
    move-result-object v23

    #@c1a
    const/16 v24, 0x6

    #@c1c
    aput-object v23, v22, v24

    #@c1e
    .line 2345
    move-object/from16 v0, p1

    #@c20
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@c22
    move/from16 v23, v0

    #@c24
    if-eqz v23, :cond_1c

    #@c26
    .end local v12    # "mySwappedOutPss":I
    :goto_15
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c29
    move-result-object v23

    #@c2a
    const/16 v24, 0x7

    #@c2c
    aput-object v23, v22, v24

    #@c2e
    .line 2346
    const-string/jumbo v23, ""

    #@c31
    const/16 v24, 0x8

    #@c33
    aput-object v23, v22, v24

    #@c35
    const-string/jumbo v23, ""

    #@c38
    const/16 v24, 0x9

    #@c3a
    aput-object v23, v22, v24

    #@c3c
    const-string/jumbo v23, ""

    #@c3f
    const/16 v24, 0xa

    #@c41
    aput-object v23, v22, v24

    #@c43
    .line 2342
    move-object/from16 v0, p0

    #@c45
    move-object/from16 v1, v21

    #@c47
    move-object/from16 v2, v22

    #@c49
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c4c
    .line 2329
    :cond_14
    :goto_16
    add-int/lit8 v4, v4, 0x1

    #@c4e
    goto/16 :goto_13

    #@c50
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .restart local v20    # "otherSwappedOutPss":I
    :cond_15
    move/from16 v20, v19

    #@c52
    .line 2300
    goto/16 :goto_10

    #@c54
    .line 2307
    .end local v20    # "otherSwappedOutPss":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    #@c57
    move-result v21

    #@c58
    goto/16 :goto_11

    #@c5a
    .line 2311
    .restart local v20    # "otherSwappedOutPss":I
    :cond_17
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@c5d
    const/16 v22, 0x8

    #@c5f
    move/from16 v0, v22

    #@c61
    new-array v0, v0, [Ljava/lang/Object;

    #@c63
    move-object/from16 v22, v0

    #@c65
    const-string/jumbo v23, "Unknown"

    #@c68
    const/16 v24, 0x0

    #@c6a
    aput-object v23, v22, v24

    #@c6c
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c6f
    move-result-object v23

    #@c70
    const/16 v24, 0x1

    #@c72
    aput-object v23, v22, v24

    #@c74
    .line 2312
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c77
    move-result-object v23

    #@c78
    const/16 v24, 0x2

    #@c7a
    aput-object v23, v22, v24

    #@c7c
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7f
    move-result-object v23

    #@c80
    const/16 v24, 0x3

    #@c82
    aput-object v23, v22, v24

    #@c84
    .line 2313
    move-object/from16 v0, p1

    #@c86
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@c88
    move/from16 v23, v0

    #@c8a
    if-eqz v23, :cond_18

    #@c8c
    .end local v20    # "otherSwappedOutPss":I
    :goto_17
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c8f
    move-result-object v23

    #@c90
    const/16 v24, 0x4

    #@c92
    aput-object v23, v22, v24

    #@c94
    .line 2314
    const-string/jumbo v23, ""

    #@c97
    const/16 v24, 0x5

    #@c99
    aput-object v23, v22, v24

    #@c9b
    const-string/jumbo v23, ""

    #@c9e
    const/16 v24, 0x6

    #@ca0
    aput-object v23, v22, v24

    #@ca2
    const-string/jumbo v23, ""

    #@ca5
    const/16 v24, 0x7

    #@ca7
    aput-object v23, v22, v24

    #@ca9
    .line 2311
    move-object/from16 v0, p0

    #@cab
    move-object/from16 v1, v21

    #@cad
    move-object/from16 v2, v22

    #@caf
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@cb2
    .line 2315
    const-string/jumbo v22, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@cb5
    const/16 v21, 0x8

    #@cb7
    move/from16 v0, v21

    #@cb9
    new-array v0, v0, [Ljava/lang/Object;

    #@cbb
    move-object/from16 v23, v0

    #@cbd
    const-string/jumbo v21, "TOTAL"

    #@cc0
    const/16 v24, 0x0

    #@cc2
    aput-object v21, v23, v24

    #@cc4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    #@cc7
    move-result v21

    #@cc8
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ccb
    move-result-object v21

    #@ccc
    const/16 v24, 0x1

    #@cce
    aput-object v21, v23, v24

    #@cd0
    .line 2316
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    #@cd3
    move-result v21

    #@cd4
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cd7
    move-result-object v21

    #@cd8
    const/16 v24, 0x2

    #@cda
    aput-object v21, v23, v24

    #@cdc
    .line 2317
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    #@cdf
    move-result v21

    #@ce0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ce3
    move-result-object v21

    #@ce4
    const/16 v24, 0x3

    #@ce6
    aput-object v21, v23, v24

    #@ce8
    .line 2318
    move-object/from16 v0, p1

    #@cea
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@cec
    move/from16 v21, v0

    #@cee
    if-eqz v21, :cond_19

    #@cf0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    #@cf3
    move-result v21

    #@cf4
    :goto_18
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cf7
    move-result-object v21

    #@cf8
    const/16 v24, 0x4

    #@cfa
    aput-object v21, v23, v24

    #@cfc
    .line 2320
    add-long v24, p8, p14

    #@cfe
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d01
    move-result-object v21

    #@d02
    const/16 v24, 0x5

    #@d04
    aput-object v21, v23, v24

    #@d06
    .line 2321
    add-long v24, p10, p16

    #@d08
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d0b
    move-result-object v21

    #@d0c
    const/16 v24, 0x6

    #@d0e
    aput-object v21, v23, v24

    #@d10
    add-long v24, p12, p18

    #@d12
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d15
    move-result-object v21

    #@d16
    const/16 v24, 0x7

    #@d18
    aput-object v21, v23, v24

    #@d1a
    .line 2315
    move-object/from16 v0, p0

    #@d1c
    move-object/from16 v1, v22

    #@d1e
    move-object/from16 v2, v23

    #@d20
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@d23
    goto/16 :goto_12

    #@d25
    .restart local v20    # "otherSwappedOutPss":I
    :cond_18
    move/from16 v20, v19

    #@d27
    .line 2313
    goto/16 :goto_17

    #@d29
    .line 2319
    .end local v20    # "otherSwappedOutPss":I
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    #@d2c
    move-result v21

    #@d2d
    goto :goto_18

    #@d2e
    .line 2338
    .restart local v5    # "myPrivateClean":I
    .restart local v6    # "myPrivateDirty":I
    .restart local v7    # "myPss":I
    .restart local v8    # "mySharedClean":I
    .restart local v9    # "mySharedDirty":I
    .restart local v10    # "mySwappablePss":I
    .restart local v11    # "mySwappedOut":I
    .restart local v12    # "mySwappedOutPss":I
    :cond_1a
    if-nez v6, :cond_13

    #@d30
    .line 2339
    if-nez v8, :cond_13

    #@d32
    if-nez v5, :cond_13

    #@d34
    .line 2340
    move-object/from16 v0, p1

    #@d36
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@d38
    move/from16 v21, v0

    #@d3a
    if-eqz v21, :cond_1b

    #@d3c
    move/from16 v21, v12

    #@d3e
    :goto_19
    if-eqz v21, :cond_14

    #@d40
    goto/16 :goto_14

    #@d42
    :cond_1b
    move/from16 v21, v11

    #@d44
    goto :goto_19

    #@d45
    :cond_1c
    move v12, v11

    #@d46
    .line 2345
    goto/16 :goto_15

    #@d48
    .line 2348
    :cond_1d
    const-string/jumbo v21, "%13s %8s %8s %8s %8s %8s %8s %8s"

    #@d4b
    const/16 v22, 0x8

    #@d4d
    move/from16 v0, v22

    #@d4f
    new-array v0, v0, [Ljava/lang/Object;

    #@d51
    move-object/from16 v22, v0

    #@d53
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    #@d56
    move-result-object v23

    #@d57
    const/16 v24, 0x0

    #@d59
    aput-object v23, v22, v24

    #@d5b
    .line 2349
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d5e
    move-result-object v23

    #@d5f
    const/16 v24, 0x1

    #@d61
    aput-object v23, v22, v24

    #@d63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d66
    move-result-object v23

    #@d67
    const/16 v24, 0x2

    #@d69
    aput-object v23, v22, v24

    #@d6b
    .line 2350
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d6e
    move-result-object v23

    #@d6f
    const/16 v24, 0x3

    #@d71
    aput-object v23, v22, v24

    #@d73
    .line 2351
    move-object/from16 v0, p1

    #@d75
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@d77
    move/from16 v23, v0

    #@d79
    if-eqz v23, :cond_1e

    #@d7b
    .end local v12    # "mySwappedOutPss":I
    :goto_1a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d7e
    move-result-object v23

    #@d7f
    const/16 v24, 0x4

    #@d81
    aput-object v23, v22, v24

    #@d83
    .line 2352
    const-string/jumbo v23, ""

    #@d86
    const/16 v24, 0x5

    #@d88
    aput-object v23, v22, v24

    #@d8a
    const-string/jumbo v23, ""

    #@d8d
    const/16 v24, 0x6

    #@d8f
    aput-object v23, v22, v24

    #@d91
    const-string/jumbo v23, ""

    #@d94
    const/16 v24, 0x7

    #@d96
    aput-object v23, v22, v24

    #@d98
    .line 2348
    move-object/from16 v0, p0

    #@d9a
    move-object/from16 v1, v21

    #@d9c
    move-object/from16 v2, v22

    #@d9e
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@da1
    goto/16 :goto_16

    #@da3
    .restart local v12    # "mySwappedOutPss":I
    :cond_1e
    move v12, v11

    #@da4
    .line 2351
    goto :goto_1a

    #@da5
    .line 2359
    .end local v4    # "i":I
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "mySwappedOutPss":I
    .end local v13    # "otherPrivateClean":I
    .end local v14    # "otherPrivateDirty":I
    .end local v15    # "otherPss":I
    .end local v16    # "otherSharedClean":I
    .end local v17    # "otherSharedDirty":I
    .end local v18    # "otherSwappablePss":I
    .end local v19    # "otherSwappedOut":I
    :cond_1f
    const-string/jumbo v21, " "

    #@da8
    move-object/from16 v0, p0

    #@daa
    move-object/from16 v1, v21

    #@dac
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@daf
    .line 2360
    const-string/jumbo v21, " App Summary"

    #@db2
    move-object/from16 v0, p0

    #@db4
    move-object/from16 v1, v21

    #@db6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@db9
    .line 2361
    const-string/jumbo v21, "%21s %8s"

    #@dbc
    const/16 v22, 0x2

    #@dbe
    move/from16 v0, v22

    #@dc0
    new-array v0, v0, [Ljava/lang/Object;

    #@dc2
    move-object/from16 v22, v0

    #@dc4
    const-string/jumbo v23, ""

    #@dc7
    const/16 v24, 0x0

    #@dc9
    aput-object v23, v22, v24

    #@dcb
    const-string/jumbo v23, "Pss(KB)"

    #@dce
    const/16 v24, 0x1

    #@dd0
    aput-object v23, v22, v24

    #@dd2
    move-object/from16 v0, p0

    #@dd4
    move-object/from16 v1, v21

    #@dd6
    move-object/from16 v2, v22

    #@dd8
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@ddb
    .line 2362
    const-string/jumbo v21, "%21s %8s"

    #@dde
    const/16 v22, 0x2

    #@de0
    move/from16 v0, v22

    #@de2
    new-array v0, v0, [Ljava/lang/Object;

    #@de4
    move-object/from16 v22, v0

    #@de6
    const-string/jumbo v23, ""

    #@de9
    const/16 v24, 0x0

    #@deb
    aput-object v23, v22, v24

    #@ded
    const-string/jumbo v23, "------"

    #@df0
    const/16 v24, 0x1

    #@df2
    aput-object v23, v22, v24

    #@df4
    move-object/from16 v0, p0

    #@df6
    move-object/from16 v1, v21

    #@df8
    move-object/from16 v2, v22

    #@dfa
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@dfd
    .line 2363
    const-string/jumbo v21, "%21s %8d"

    #@e00
    const/16 v22, 0x2

    #@e02
    move/from16 v0, v22

    #@e04
    new-array v0, v0, [Ljava/lang/Object;

    #@e06
    move-object/from16 v22, v0

    #@e08
    .line 2364
    const-string/jumbo v23, "Java Heap:"

    #@e0b
    const/16 v24, 0x0

    #@e0d
    aput-object v23, v22, v24

    #@e0f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    #@e12
    move-result v23

    #@e13
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e16
    move-result-object v23

    #@e17
    const/16 v24, 0x1

    #@e19
    aput-object v23, v22, v24

    #@e1b
    .line 2363
    move-object/from16 v0, p0

    #@e1d
    move-object/from16 v1, v21

    #@e1f
    move-object/from16 v2, v22

    #@e21
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@e24
    .line 2365
    const-string/jumbo v21, "%21s %8d"

    #@e27
    const/16 v22, 0x2

    #@e29
    move/from16 v0, v22

    #@e2b
    new-array v0, v0, [Ljava/lang/Object;

    #@e2d
    move-object/from16 v22, v0

    #@e2f
    .line 2366
    const-string/jumbo v23, "Native Heap:"

    #@e32
    const/16 v24, 0x0

    #@e34
    aput-object v23, v22, v24

    #@e36
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    #@e39
    move-result v23

    #@e3a
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e3d
    move-result-object v23

    #@e3e
    const/16 v24, 0x1

    #@e40
    aput-object v23, v22, v24

    #@e42
    .line 2365
    move-object/from16 v0, p0

    #@e44
    move-object/from16 v1, v21

    #@e46
    move-object/from16 v2, v22

    #@e48
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@e4b
    .line 2367
    const-string/jumbo v21, "%21s %8d"

    #@e4e
    const/16 v22, 0x2

    #@e50
    move/from16 v0, v22

    #@e52
    new-array v0, v0, [Ljava/lang/Object;

    #@e54
    move-object/from16 v22, v0

    #@e56
    .line 2368
    const-string/jumbo v23, "Code:"

    #@e59
    const/16 v24, 0x0

    #@e5b
    aput-object v23, v22, v24

    #@e5d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    #@e60
    move-result v23

    #@e61
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e64
    move-result-object v23

    #@e65
    const/16 v24, 0x1

    #@e67
    aput-object v23, v22, v24

    #@e69
    .line 2367
    move-object/from16 v0, p0

    #@e6b
    move-object/from16 v1, v21

    #@e6d
    move-object/from16 v2, v22

    #@e6f
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@e72
    .line 2369
    const-string/jumbo v21, "%21s %8d"

    #@e75
    const/16 v22, 0x2

    #@e77
    move/from16 v0, v22

    #@e79
    new-array v0, v0, [Ljava/lang/Object;

    #@e7b
    move-object/from16 v22, v0

    #@e7d
    .line 2370
    const-string/jumbo v23, "Stack:"

    #@e80
    const/16 v24, 0x0

    #@e82
    aput-object v23, v22, v24

    #@e84
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    #@e87
    move-result v23

    #@e88
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e8b
    move-result-object v23

    #@e8c
    const/16 v24, 0x1

    #@e8e
    aput-object v23, v22, v24

    #@e90
    .line 2369
    move-object/from16 v0, p0

    #@e92
    move-object/from16 v1, v21

    #@e94
    move-object/from16 v2, v22

    #@e96
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@e99
    .line 2371
    const-string/jumbo v21, "%21s %8d"

    #@e9c
    const/16 v22, 0x2

    #@e9e
    move/from16 v0, v22

    #@ea0
    new-array v0, v0, [Ljava/lang/Object;

    #@ea2
    move-object/from16 v22, v0

    #@ea4
    .line 2372
    const-string/jumbo v23, "Graphics:"

    #@ea7
    const/16 v24, 0x0

    #@ea9
    aput-object v23, v22, v24

    #@eab
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    #@eae
    move-result v23

    #@eaf
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@eb2
    move-result-object v23

    #@eb3
    const/16 v24, 0x1

    #@eb5
    aput-object v23, v22, v24

    #@eb7
    .line 2371
    move-object/from16 v0, p0

    #@eb9
    move-object/from16 v1, v21

    #@ebb
    move-object/from16 v2, v22

    #@ebd
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@ec0
    .line 2373
    const-string/jumbo v21, "%21s %8d"

    #@ec3
    const/16 v22, 0x2

    #@ec5
    move/from16 v0, v22

    #@ec7
    new-array v0, v0, [Ljava/lang/Object;

    #@ec9
    move-object/from16 v22, v0

    #@ecb
    .line 2374
    const-string/jumbo v23, "Private Other:"

    #@ece
    const/16 v24, 0x0

    #@ed0
    aput-object v23, v22, v24

    #@ed2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    #@ed5
    move-result v23

    #@ed6
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ed9
    move-result-object v23

    #@eda
    const/16 v24, 0x1

    #@edc
    aput-object v23, v22, v24

    #@ede
    .line 2373
    move-object/from16 v0, p0

    #@ee0
    move-object/from16 v1, v21

    #@ee2
    move-object/from16 v2, v22

    #@ee4
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@ee7
    .line 2375
    const-string/jumbo v21, "%21s %8d"

    #@eea
    const/16 v22, 0x2

    #@eec
    move/from16 v0, v22

    #@eee
    new-array v0, v0, [Ljava/lang/Object;

    #@ef0
    move-object/from16 v22, v0

    #@ef2
    .line 2376
    const-string/jumbo v23, "System:"

    #@ef5
    const/16 v24, 0x0

    #@ef7
    aput-object v23, v22, v24

    #@ef9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    #@efc
    move-result v23

    #@efd
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f00
    move-result-object v23

    #@f01
    const/16 v24, 0x1

    #@f03
    aput-object v23, v22, v24

    #@f05
    .line 2375
    move-object/from16 v0, p0

    #@f07
    move-object/from16 v1, v21

    #@f09
    move-object/from16 v2, v22

    #@f0b
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@f0e
    .line 2377
    const-string/jumbo v21, " "

    #@f11
    move-object/from16 v0, p0

    #@f13
    move-object/from16 v1, v21

    #@f15
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f18
    .line 2378
    move-object/from16 v0, p1

    #@f1a
    iget-boolean v0, v0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@f1c
    move/from16 v21, v0

    #@f1e
    if-eqz v21, :cond_20

    #@f20
    .line 2379
    const-string/jumbo v21, "%21s %8d %21s %8d"

    #@f23
    const/16 v22, 0x4

    #@f25
    move/from16 v0, v22

    #@f27
    new-array v0, v0, [Ljava/lang/Object;

    #@f29
    move-object/from16 v22, v0

    #@f2b
    .line 2380
    const-string/jumbo v23, "TOTAL:"

    #@f2e
    const/16 v24, 0x0

    #@f30
    aput-object v23, v22, v24

    #@f32
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    #@f35
    move-result v23

    #@f36
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f39
    move-result-object v23

    #@f3a
    const/16 v24, 0x1

    #@f3c
    aput-object v23, v22, v24

    #@f3e
    .line 2381
    const-string/jumbo v23, "TOTAL SWAP PSS:"

    #@f41
    const/16 v24, 0x2

    #@f43
    aput-object v23, v22, v24

    #@f45
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    #@f48
    move-result v23

    #@f49
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f4c
    move-result-object v23

    #@f4d
    const/16 v24, 0x3

    #@f4f
    aput-object v23, v22, v24

    #@f51
    .line 2379
    move-object/from16 v0, p0

    #@f53
    move-object/from16 v1, v21

    #@f55
    move-object/from16 v2, v22

    #@f57
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@f5a
    .line 2104
    :goto_1b
    return-void

    #@f5b
    .line 2383
    :cond_20
    const-string/jumbo v21, "%21s %8d %21s %8d"

    #@f5e
    const/16 v22, 0x4

    #@f60
    move/from16 v0, v22

    #@f62
    new-array v0, v0, [Ljava/lang/Object;

    #@f64
    move-object/from16 v22, v0

    #@f66
    .line 2384
    const-string/jumbo v23, "TOTAL:"

    #@f69
    const/16 v24, 0x0

    #@f6b
    aput-object v23, v22, v24

    #@f6d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    #@f70
    move-result v23

    #@f71
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f74
    move-result-object v23

    #@f75
    const/16 v24, 0x1

    #@f77
    aput-object v23, v22, v24

    #@f79
    .line 2385
    const-string/jumbo v23, "TOTAL SWAP (KB):"

    #@f7c
    const/16 v24, 0x2

    #@f7e
    aput-object v23, v22, v24

    #@f80
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    #@f83
    move-result v23

    #@f84
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f87
    move-result-object v23

    #@f88
    const/16 v24, 0x3

    #@f8a
    aput-object v23, v22, v24

    #@f8c
    .line 2383
    move-object/from16 v0, p0

    #@f8e
    move-object/from16 v1, v21

    #@f90
    move-object/from16 v2, v22

    #@f92
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    #@f95
    goto :goto_1b
.end method

.method static freeTextLayoutCachesIfNeeded(I)V
    .locals 2
    .param p0, "configDiff"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4763
    if-eqz p0, :cond_1

    #@3
    .line 4765
    and-int/lit8 v1, p0, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 4766
    .local v0, "hasLocaleConfigChange":Z
    :cond_0
    if-eqz v0, :cond_1

    #@a
    .line 4767
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    #@d
    .line 4762
    .end local v0    # "hasLocaleConfigChange":Z
    :cond_1
    return-void
.end method

.method private getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "insInfo"    # Landroid/content/pm/InstrumentationInfo;

    #@0
    .prologue
    .line 5012
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@2
    if-eqz v3, :cond_1

    #@4
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 5016
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@a
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 5018
    .local v2, "secondaryIsa":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "ro.dalvik.vm.isa."

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 5019
    .local v1, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 5021
    :goto_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 5022
    .local v0, "runtimeIsa":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 5023
    iget-object v3, p2, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@3c
    return-object v3

    #@3d
    .line 5019
    .end local v0    # "runtimeIsa":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    #@3e
    goto :goto_0

    #@3f
    .line 5026
    .end local v1    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v2    # "secondaryIsa":Ljava/lang/String;
    :cond_1
    iget-object v3, p2, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@41
    return-object v3
.end method

.method public static getIntentBeingBroadcast()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 2966
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

.method private getLifecycleSeq()I
    .locals 3

    #@0
    .prologue
    .line 1330
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@2
    monitor-enter v1

    #@3
    .line 1331
    :try_start_0
    iget v0, p0, Landroid/app/ActivityThread;->mLifecycleSeq:I

    #@5
    add-int/lit8 v2, v0, 0x1

    #@7
    iput v2, p0, Landroid/app/ActivityThread;->mLifecycleSeq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 1330
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
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
    .line 1954
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
    .line 1955
    .local v8, "differentUser":Z
    :goto_0
    iget-object v10, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@f
    monitor-enter v10

    #@10
    .line 1957
    if-eqz v8, :cond_2

    #@12
    .line 1959
    const/4 v9, 0x0

    #@13
    .line 1966
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
    .line 1967
    :goto_2
    if-eqz v0, :cond_5

    #@1d
    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 1968
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
    .line 1994
    return-object v0

    #@2f
    .line 1954
    .end local v8    # "differentUser":Z
    :cond_1
    const/4 v8, 0x0

    #@30
    .restart local v8    # "differentUser":Z
    goto :goto_0

    #@31
    .line 1960
    :cond_2
    if-eqz p5, :cond_3

    #@33
    .line 1961
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
    .line 1963
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
    .line 1966
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    const/4 v0, 0x0

    #@4a
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    goto :goto_2

    #@4b
    .line 1975
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    :cond_5
    new-instance v0, Landroid/app/LoadedApk;

    #@4d
    .line 1976
    if-eqz p5, :cond_8

    #@4f
    .line 1977
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
    .line 1975
    invoke-direct/range {v0 .. v7}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    #@60
    .line 1979
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
    .line 1981
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
    .line 1980
    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    #@7c
    .line 1984
    :cond_6
    if-nez v8, :cond_0

    #@7e
    .line 1986
    if-eqz p5, :cond_9

    #@80
    .line 1987
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@82
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@84
    .line 1988
    new-instance v3, Ljava/lang/ref/WeakReference;

    #@86
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@89
    .line 1987
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    goto :goto_3

    #@8d
    .line 1955
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    :catchall_0
    move-exception v1

    #@8e
    monitor-exit v10

    #@8f
    throw v1

    #@90
    .line 1977
    :cond_7
    const/4 v6, 0x0

    #@91
    goto :goto_4

    #@92
    .line 1976
    :cond_8
    const/4 v6, 0x0

    #@93
    goto :goto_4

    #@94
    .line 1990
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    :cond_9
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@96
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@98
    .line 1991
    new-instance v3, Ljava/lang/ref/WeakReference;

    #@9a
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@9d
    .line 1990
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
    .line 1814
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1816
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    #@6
    return-object v1

    #@7
    .line 1818
    :cond_0
    const-string/jumbo v1, "package"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 1820
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    #@14
    .line 1822
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    #@16
    return-object v1
.end method

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 34
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    #@0
    .prologue
    .line 5052
    invoke-static {}, Ldalvik/system/VMRuntime;->registerSensitiveThread()V

    #@3
    .line 5053
    move-object/from16 v0, p1

    #@5
    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 5054
    const/4 v2, 0x1

    #@a
    invoke-static {v2}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->enableRecentAllocations(Z)V

    #@d
    .line 5058
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10
    move-result-wide v4

    #@11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@14
    move-result-wide v32

    #@15
    move-wide/from16 v0, v32

    #@17
    invoke-static {v4, v5, v0, v1}, Landroid/os/Process;->setStartTimes(JJ)V

    #@1a
    .line 5060
    move-object/from16 v0, p1

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-object v0, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@20
    .line 5061
    new-instance v2, Landroid/content/res/Configuration;

    #@22
    move-object/from16 v0, p1

    #@24
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@26
    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@29
    move-object/from16 v0, p0

    #@2b
    iput-object v2, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@2d
    .line 5062
    new-instance v2, Landroid/content/res/Configuration;

    #@2f
    move-object/from16 v0, p1

    #@31
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@33
    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@36
    move-object/from16 v0, p0

    #@38
    iput-object v2, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@3a
    .line 5064
    new-instance v2, Landroid/app/ActivityThread$Profiler;

    #@3c
    invoke-direct {v2}, Landroid/app/ActivityThread$Profiler;-><init>()V

    #@3f
    move-object/from16 v0, p0

    #@41
    iput-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@43
    .line 5065
    move-object/from16 v0, p1

    #@45
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@47
    if-eqz v2, :cond_1

    #@49
    .line 5066
    move-object/from16 v0, p0

    #@4b
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@4d
    move-object/from16 v0, p1

    #@4f
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@51
    iget-object v4, v4, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    #@53
    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@55
    .line 5067
    move-object/from16 v0, p0

    #@57
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@59
    move-object/from16 v0, p1

    #@5b
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@5d
    iget-object v4, v4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@5f
    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@61
    .line 5068
    move-object/from16 v0, p0

    #@63
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@65
    move-object/from16 v0, p1

    #@67
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@69
    iget v4, v4, Landroid/app/ProfilerInfo;->samplingInterval:I

    #@6b
    iput v4, v2, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    #@6d
    .line 5069
    move-object/from16 v0, p0

    #@6f
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@71
    move-object/from16 v0, p1

    #@73
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    #@75
    iget-boolean v4, v4, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    #@77
    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    #@79
    .line 5073
    :cond_1
    move-object/from16 v0, p1

    #@7b
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@7d
    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    #@80
    .line 5074
    move-object/from16 v0, p1

    #@82
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@84
    .line 5075
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@87
    move-result v4

    #@88
    .line 5074
    invoke-static {v2, v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    #@8b
    .line 5077
    move-object/from16 v0, p1

    #@8d
    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    #@8f
    if-eqz v2, :cond_2

    #@91
    .line 5081
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@94
    move-result v2

    #@95
    if-nez v2, :cond_2

    #@97
    .line 5082
    const/4 v2, 0x0

    #@98
    invoke-static {v2}, Landroid/view/ThreadedRenderer;->disable(Z)V

    #@9b
    .line 5086
    :cond_2
    move-object/from16 v0, p0

    #@9d
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@9f
    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@a1
    if-eqz v2, :cond_3

    #@a3
    .line 5087
    move-object/from16 v0, p0

    #@a5
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@a7
    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    #@aa
    .line 5094
    :cond_3
    move-object/from16 v0, p1

    #@ac
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@ae
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@b0
    const/16 v4, 0xc

    #@b2
    if-gt v2, v4, :cond_4

    #@b4
    .line 5095
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@b6
    invoke-static {v2}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    #@b9
    .line 5098
    :cond_4
    move-object/from16 v0, p1

    #@bb
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@bd
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@bf
    invoke-static {v2}, Landroid/os/Message;->updateCheckRecycle(I)V

    #@c2
    .line 5106
    const/4 v2, 0x0

    #@c3
    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    #@c6
    .line 5111
    move-object/from16 v0, p1

    #@c8
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@ca
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@cd
    move-result-object v2

    #@ce
    invoke-static {v2}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    #@d1
    .line 5113
    move-object/from16 v0, p0

    #@d3
    iget-object v4, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@d5
    monitor-enter v4

    #@d6
    .line 5119
    :try_start_0
    move-object/from16 v0, p0

    #@d8
    iget-object v2, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@da
    move-object/from16 v0, p1

    #@dc
    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@de
    move-object/from16 v0, p1

    #@e0
    iget-object v7, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@e2
    invoke-virtual {v2, v5, v7}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    #@e5
    .line 5120
    move-object/from16 v0, p1

    #@e7
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    #@e9
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    #@eb
    move-object/from16 v0, p0

    #@ed
    iput v2, v0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@ef
    .line 5123
    move-object/from16 v0, p0

    #@f1
    iget v2, v0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@f3
    move-object/from16 v0, p0

    #@f5
    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f8
    monitor-exit v4

    #@f9
    .line 5126
    move-object/from16 v0, p1

    #@fb
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@fd
    move-object/from16 v0, p1

    #@ff
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@101
    move-object/from16 v0, p0

    #@103
    invoke-virtual {v0, v2, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@106
    move-result-object v2

    #@107
    move-object/from16 v0, p1

    #@109
    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@10b
    .line 5131
    move-object/from16 v0, p1

    #@10d
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@10f
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@111
    and-int/lit16 v2, v2, 0x2000

    #@113
    if-nez v2, :cond_5

    #@115
    .line 5133
    const/4 v2, 0x1

    #@116
    move-object/from16 v0, p0

    #@118
    iput-boolean v2, v0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    #@11a
    .line 5134
    const/16 v2, 0xa0

    #@11c
    invoke-static {v2}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    #@11f
    .line 5136
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    #@122
    .line 5138
    const-string/jumbo v2, "24"

    #@125
    move-object/from16 v0, p0

    #@127
    iget-object v4, v0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    #@129
    const-string/jumbo v5, "time_12_24"

    #@12c
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@12f
    move-result-object v4

    #@130
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@133
    move-result v24

    #@134
    .line 5139
    .local v24, "is24Hr":Z
    invoke-static/range {v24 .. v24}, Ljava/text/DateFormat;->set24HourTimePref(Z)V

    #@137
    .line 5142
    move-object/from16 v0, p0

    #@139
    iget-object v2, v0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    #@13b
    const-string/jumbo v4, "debug_view_attributes"

    #@13e
    const/4 v5, 0x0

    #@13f
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@142
    move-result v2

    #@143
    if-eqz v2, :cond_10

    #@145
    const/4 v2, 0x1

    #@146
    .line 5141
    :goto_0
    sput-boolean v2, Landroid/view/View;->mDebugViewAttributes:Z

    #@148
    .line 5148
    move-object/from16 v0, p1

    #@14a
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@14c
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@14e
    and-int/lit16 v2, v2, 0x81

    #@150
    if-eqz v2, :cond_6

    #@152
    .line 5151
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    #@155
    .line 5159
    :cond_6
    move-object/from16 v0, p1

    #@157
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@159
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@15b
    const/16 v4, 0xb

    #@15d
    if-lt v2, v4, :cond_7

    #@15f
    .line 5160
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnNetwork()V

    #@162
    .line 5167
    :cond_7
    move-object/from16 v0, p1

    #@164
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@166
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@168
    const/16 v4, 0x18

    #@16a
    if-lt v2, v4, :cond_8

    #@16c
    .line 5168
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    #@16f
    .line 5171
    :cond_8
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    #@172
    move-result-object v4

    #@173
    .line 5172
    move-object/from16 v0, p1

    #@175
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@177
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@179
    const/high16 v5, 0x8000000

    #@17b
    and-int/2addr v2, v5

    #@17c
    if-eqz v2, :cond_11

    #@17e
    const/4 v2, 0x1

    #@17f
    .line 5171
    :goto_1
    invoke-virtual {v4, v2}, Landroid/security/NetworkSecurityPolicy;->setCleartextTrafficPermitted(Z)V

    #@182
    .line 5174
    move-object/from16 v0, p1

    #@184
    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    #@186
    if-eqz v2, :cond_9

    #@188
    .line 5176
    const/16 v2, 0x1fa4

    #@18a
    invoke-static {v2}, Landroid/os/Debug;->changeDebugPort(I)V

    #@18d
    .line 5177
    move-object/from16 v0, p1

    #@18f
    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    #@191
    const/4 v4, 0x2

    #@192
    if-ne v2, v4, :cond_12

    #@194
    .line 5178
    const-string/jumbo v2, "ActivityThread"

    #@197
    new-instance v4, Ljava/lang/StringBuilder;

    #@199
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19c
    const-string/jumbo v5, "Application "

    #@19f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v4

    #@1a3
    move-object/from16 v0, p1

    #@1a5
    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@1a7
    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    #@1aa
    move-result-object v5

    #@1ab
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v4

    #@1af
    .line 5179
    const-string/jumbo v5, " is waiting for the debugger on port 8100..."

    #@1b2
    .line 5178
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v4

    #@1b6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b9
    move-result-object v4

    #@1ba
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1bd
    .line 5181
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1c0
    move-result-object v26

    #@1c1
    .line 5183
    .local v26, "mgr":Landroid/app/IActivityManager;
    :try_start_1
    move-object/from16 v0, p0

    #@1c3
    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@1c5
    const/4 v4, 0x1

    #@1c6
    move-object/from16 v0, v26

    #@1c8
    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1cb
    .line 5188
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    #@1ce
    .line 5191
    :try_start_2
    move-object/from16 v0, p0

    #@1d0
    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@1d2
    const/4 v4, 0x0

    #@1d3
    move-object/from16 v0, v26

    #@1d5
    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@1d8
    .line 5203
    .end local v26    # "mgr":Landroid/app/IActivityManager;
    :cond_9
    :goto_2
    move-object/from16 v0, p1

    #@1da
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1dc
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@1de
    and-int/lit8 v2, v2, 0x2

    #@1e0
    if-eqz v2, :cond_13

    #@1e2
    const/16 v25, 0x1

    #@1e4
    .line 5204
    .local v25, "isAppDebuggable":Z
    :goto_3
    invoke-static/range {v25 .. v25}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    #@1e7
    .line 5205
    if-eqz v25, :cond_a

    #@1e9
    move-object/from16 v0, p1

    #@1eb
    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    #@1ed
    if-eqz v2, :cond_a

    #@1ef
    .line 5206
    invoke-static {}, Landroid/os/Binder;->enableTracing()V

    #@1f2
    .line 5212
    :cond_a
    const-string/jumbo v2, "Setup proxies"

    #@1f5
    const-wide/16 v4, 0x40

    #@1f7
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1fa
    .line 5213
    const-string/jumbo v2, "connectivity"

    #@1fd
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@200
    move-result-object v13

    #@201
    .line 5214
    .local v13, "b":Landroid/os/IBinder;
    if-eqz v13, :cond_b

    #@203
    .line 5218
    invoke-static {v13}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    #@206
    move-result-object v30

    #@207
    .line 5220
    .local v30, "service":Landroid/net/IConnectivityManager;
    const/4 v2, 0x0

    #@208
    :try_start_3
    move-object/from16 v0, v30

    #@20a
    invoke-interface {v0, v2}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    #@20d
    move-result-object v28

    #@20e
    .line 5221
    .local v28, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-static/range {v28 .. v28}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@211
    .line 5227
    .end local v28    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v30    # "service":Landroid/net/IConnectivityManager;
    :cond_b
    const-wide/16 v4, 0x40

    #@213
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@216
    .line 5232
    move-object/from16 v0, p1

    #@218
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@21a
    if-eqz v2, :cond_14

    #@21c
    .line 5234
    :try_start_4
    new-instance v2, Landroid/app/ApplicationPackageManager;

    #@21e
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@221
    move-result-object v4

    #@222
    const/4 v5, 0x0

    #@223
    invoke-direct {v2, v5, v4}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    #@226
    .line 5235
    move-object/from16 v0, p1

    #@228
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@22a
    const/4 v5, 0x0

    #@22b
    .line 5234
    invoke-virtual {v2, v4, v5}, Landroid/app/ApplicationPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    #@22e
    move-result-object v23

    #@22f
    .line 5241
    .local v23, "ii":Landroid/content/pm/InstrumentationInfo;
    move-object/from16 v0, v23

    #@231
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    #@233
    move-object/from16 v0, p0

    #@235
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    #@237
    .line 5242
    move-object/from16 v0, v23

    #@239
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    #@23b
    move-object/from16 v0, p0

    #@23d
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    #@23f
    .line 5243
    move-object/from16 v0, v23

    #@241
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@243
    move-object/from16 v0, p0

    #@245
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    #@247
    .line 5244
    move-object/from16 v0, p1

    #@249
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@24b
    move-object/from16 v0, p0

    #@24d
    move-object/from16 v1, v23

    #@24f
    invoke-direct {v0, v2, v1}, Landroid/app/ActivityThread;->getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;

    #@252
    move-result-object v2

    #@253
    move-object/from16 v0, p0

    #@255
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    #@257
    .line 5245
    move-object/from16 v0, p1

    #@259
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@25b
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    #@25e
    move-result-object v2

    #@25f
    move-object/from16 v0, p0

    #@261
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    #@263
    .line 5246
    move-object/from16 v0, p1

    #@265
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@267
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    #@26a
    move-result-object v2

    #@26b
    move-object/from16 v0, p0

    #@26d
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    #@26f
    .line 5247
    move-object/from16 v0, p1

    #@271
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@273
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    #@276
    move-result-object v2

    #@277
    move-object/from16 v0, p0

    #@279
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    #@27b
    .line 5252
    .end local v23    # "ii":Landroid/content/pm/InstrumentationInfo;
    :goto_4
    move-object/from16 v0, p1

    #@27d
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@27f
    move-object/from16 v0, p0

    #@281
    invoke-static {v0, v2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    #@284
    move-result-object v12

    #@285
    .line 5254
    .local v12, "appContext":Landroid/app/ContextImpl;
    move-object/from16 v0, p0

    #@287
    iget-object v2, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@289
    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    #@28c
    move-result-object v2

    #@28d
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@290
    move-result-object v2

    #@291
    .line 5253
    move-object/from16 v0, p0

    #@293
    invoke-direct {v0, v12, v2}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    #@296
    .line 5256
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    #@299
    move-result v2

    #@29a
    if-nez v2, :cond_c

    #@29c
    const-string/jumbo v2, "android"

    #@29f
    invoke-virtual {v12}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@2a2
    move-result-object v4

    #@2a3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a6
    move-result v2

    #@2a7
    if-eqz v2, :cond_15

    #@2a9
    .line 5282
    :cond_c
    :goto_5
    const-string/jumbo v2, "NetworkSecurityConfigProvider.install"

    #@2ac
    const-wide/16 v4, 0x40

    #@2ae
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2b1
    .line 5283
    invoke-static {v12}, Landroid/security/net/config/NetworkSecurityConfigProvider;->install(Landroid/content/Context;)V

    #@2b4
    .line 5284
    const-wide/16 v4, 0x40

    #@2b6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@2b9
    .line 5287
    if-eqz v23, :cond_19

    #@2bb
    .line 5288
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    #@2bd
    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    #@2c0
    .line 5289
    .local v3, "instrApp":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v23

    #@2c2
    invoke-virtual {v0, v3}, Landroid/content/pm/InstrumentationInfo;->copyTo(Landroid/content/pm/ApplicationInfo;)V

    #@2c5
    .line 5290
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@2c8
    move-result v2

    #@2c9
    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    #@2cc
    .line 5291
    move-object/from16 v0, p1

    #@2ce
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@2d0
    .line 5292
    invoke-virtual {v12}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    #@2d3
    move-result-object v5

    #@2d4
    const/4 v6, 0x0

    #@2d5
    const/4 v7, 0x1

    #@2d6
    const/4 v8, 0x0

    #@2d7
    move-object/from16 v2, p0

    #@2d9
    .line 5291
    invoke-direct/range {v2 .. v8}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    #@2dc
    move-result-object v27

    #@2dd
    .line 5293
    .local v27, "pi":Landroid/app/LoadedApk;
    move-object/from16 v0, p0

    #@2df
    move-object/from16 v1, v27

    #@2e1
    invoke-static {v0, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    #@2e4
    move-result-object v6

    #@2e5
    .line 5296
    .local v6, "instrContext":Landroid/app/ContextImpl;
    :try_start_5
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    #@2e8
    move-result-object v15

    #@2e9
    .line 5298
    .local v15, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    #@2eb
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@2ed
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@2f0
    move-result-object v2

    #@2f1
    invoke-virtual {v15, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@2f4
    move-result-object v2

    #@2f5
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2f8
    move-result-object v2

    #@2f9
    check-cast v2, Landroid/app/Instrumentation;

    #@2fb
    .line 5297
    move-object/from16 v0, p0

    #@2fd
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    #@2ff
    .line 5305
    new-instance v8, Landroid/content/ComponentName;

    #@301
    move-object/from16 v0, v23

    #@303
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    #@305
    move-object/from16 v0, v23

    #@307
    iget-object v4, v0, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    #@309
    invoke-direct {v8, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@30c
    .line 5306
    .local v8, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@30e
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@310
    .line 5307
    move-object/from16 v0, p1

    #@312
    iget-object v9, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    #@314
    move-object/from16 v0, p1

    #@316
    iget-object v10, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    #@318
    move-object/from16 v5, p0

    #@31a
    move-object v7, v12

    #@31b
    .line 5306
    invoke-virtual/range {v4 .. v10}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    #@31e
    .line 5309
    move-object/from16 v0, p0

    #@320
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@322
    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@324
    if-eqz v2, :cond_d

    #@326
    move-object/from16 v0, v23

    #@328
    iget-boolean v2, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    #@32a
    if-eqz v2, :cond_18

    #@32c
    .line 5320
    .end local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "instrContext":Landroid/app/ContextImpl;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v15    # "cl":Ljava/lang/ClassLoader;
    .end local v27    # "pi":Landroid/app/LoadedApk;
    :cond_d
    :goto_6
    move-object/from16 v0, p1

    #@32e
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@330
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@332
    const/high16 v4, 0x100000

    #@334
    and-int/2addr v2, v4

    #@335
    if-eqz v2, :cond_1a

    #@337
    .line 5321
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@33a
    move-result-object v2

    #@33b
    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    #@33e
    .line 5331
    :goto_7
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@341
    move-result-object v29

    #@342
    .line 5335
    .local v29, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_6
    move-object/from16 v0, p1

    #@344
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@346
    move-object/from16 v0, p1

    #@348
    iget-boolean v4, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    #@34a
    const/4 v5, 0x0

    #@34b
    invoke-virtual {v2, v4, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    #@34e
    move-result-object v11

    #@34f
    .line 5336
    .local v11, "app":Landroid/app/Application;
    move-object/from16 v0, p0

    #@351
    iput-object v11, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@353
    .line 5340
    move-object/from16 v0, p1

    #@355
    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    #@357
    if-nez v2, :cond_e

    #@359
    .line 5341
    move-object/from16 v0, p1

    #@35b
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    #@35d
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    #@360
    move-result v2

    #@361
    if-nez v2, :cond_e

    #@363
    .line 5342
    move-object/from16 v0, p1

    #@365
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    #@367
    move-object/from16 v0, p0

    #@369
    invoke-direct {v0, v11, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    #@36c
    .line 5345
    move-object/from16 v0, p0

    #@36e
    iget-object v2, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@370
    const-wide/16 v4, 0x2710

    #@372
    const/16 v7, 0x84

    #@374
    invoke-virtual {v2, v7, v4, v5}, Landroid/app/ActivityThread$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@377
    .line 5352
    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    #@379
    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@37b
    move-object/from16 v0, p1

    #@37d
    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    #@37f
    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@382
    .line 5361
    :try_start_8
    move-object/from16 v0, p0

    #@384
    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@386
    invoke-virtual {v2, v11}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@389
    .line 5370
    :cond_f
    invoke-static/range {v29 .. v29}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@38c
    .line 5050
    return-void

    #@38d
    .line 5113
    .end local v11    # "app":Landroid/app/Application;
    .end local v12    # "appContext":Landroid/app/ContextImpl;
    .end local v13    # "b":Landroid/os/IBinder;
    .end local v24    # "is24Hr":Z
    .end local v25    # "isAppDebuggable":Z
    .end local v29    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_0
    move-exception v2

    #@38e
    monitor-exit v4

    #@38f
    throw v2

    #@390
    .line 5142
    .restart local v24    # "is24Hr":Z
    :cond_10
    const/4 v2, 0x0

    #@391
    goto/16 :goto_0

    #@393
    .line 5172
    :cond_11
    const/4 v2, 0x0

    #@394
    goto/16 :goto_1

    #@396
    .line 5184
    .restart local v26    # "mgr":Landroid/app/IActivityManager;
    :catch_0
    move-exception v21

    #@397
    .line 5185
    .local v21, "ex":Landroid/os/RemoteException;
    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@39a
    move-result-object v2

    #@39b
    throw v2

    #@39c
    .line 5192
    .end local v21    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v21

    #@39d
    .line 5193
    .restart local v21    # "ex":Landroid/os/RemoteException;
    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@3a0
    move-result-object v2

    #@3a1
    throw v2

    #@3a2
    .line 5197
    .end local v21    # "ex":Landroid/os/RemoteException;
    .end local v26    # "mgr":Landroid/app/IActivityManager;
    :cond_12
    const-string/jumbo v2, "ActivityThread"

    #@3a5
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3aa
    const-string/jumbo v5, "Application "

    #@3ad
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b0
    move-result-object v4

    #@3b1
    move-object/from16 v0, p1

    #@3b3
    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@3b5
    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    #@3b8
    move-result-object v5

    #@3b9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bc
    move-result-object v4

    #@3bd
    .line 5198
    const-string/jumbo v5, " can be debugged on port 8100..."

    #@3c0
    .line 5197
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c3
    move-result-object v4

    #@3c4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c7
    move-result-object v4

    #@3c8
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3cb
    goto/16 :goto_2

    #@3cd
    .line 5203
    :cond_13
    const/16 v25, 0x0

    #@3cf
    goto/16 :goto_3

    #@3d1
    .line 5222
    .restart local v13    # "b":Landroid/os/IBinder;
    .restart local v25    # "isAppDebuggable":Z
    .restart local v30    # "service":Landroid/net/IConnectivityManager;
    :catch_2
    move-exception v19

    #@3d2
    .line 5223
    .local v19, "e":Landroid/os/RemoteException;
    const-wide/16 v4, 0x40

    #@3d4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3d7
    .line 5224
    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@3da
    move-result-object v2

    #@3db
    throw v2

    #@3dc
    .line 5236
    .end local v19    # "e":Landroid/os/RemoteException;
    .end local v30    # "service":Landroid/net/IConnectivityManager;
    :catch_3
    move-exception v18

    #@3dd
    .line 5237
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@3df
    .line 5238
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3e4
    const-string/jumbo v5, "Unable to find instrumentation info for: "

    #@3e7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ea
    move-result-object v4

    #@3eb
    move-object/from16 v0, p1

    #@3ed
    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@3ef
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f2
    move-result-object v4

    #@3f3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f6
    move-result-object v4

    #@3f7
    .line 5237
    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3fa
    throw v2

    #@3fb
    .line 5249
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    const/16 v23, 0x0

    #@3fd
    .local v23, "ii":Landroid/content/pm/InstrumentationInfo;
    goto/16 :goto_4

    #@3ff
    .line 5260
    .end local v23    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v12    # "appContext":Landroid/app/ContextImpl;
    :cond_15
    invoke-virtual {v12}, Landroid/app/ContextImpl;->getCacheDir()Ljava/io/File;

    #@402
    move-result-object v14

    #@403
    .line 5261
    .local v14, "cacheDir":Ljava/io/File;
    if-eqz v14, :cond_16

    #@405
    .line 5263
    const-string/jumbo v2, "java.io.tmpdir"

    #@408
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@40b
    move-result-object v4

    #@40c
    invoke-static {v2, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40f
    .line 5270
    :goto_8
    invoke-virtual {v12}, Landroid/app/ContextImpl;->createDeviceProtectedStorageContext()Landroid/content/Context;

    #@412
    move-result-object v17

    #@413
    .line 5271
    .local v17, "deviceContext":Landroid/content/Context;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    #@416
    move-result-object v16

    #@417
    .line 5272
    .local v16, "codeCacheDir":Ljava/io/File;
    if-eqz v16, :cond_17

    #@419
    .line 5273
    move-object/from16 v0, p1

    #@41b
    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    #@41d
    move-object/from16 v0, p0

    #@41f
    move-object/from16 v1, v16

    #@421
    invoke-direct {v0, v2, v1}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V

    #@424
    goto/16 :goto_5

    #@426
    .line 5265
    .end local v16    # "codeCacheDir":Ljava/io/File;
    .end local v17    # "deviceContext":Landroid/content/Context;
    :cond_16
    const-string/jumbo v2, "ActivityThread"

    #@429
    const-string/jumbo v4, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    #@42c
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@42f
    goto :goto_8

    #@430
    .line 5275
    .restart local v16    # "codeCacheDir":Ljava/io/File;
    .restart local v17    # "deviceContext":Landroid/content/Context;
    :cond_17
    const-string/jumbo v2, "ActivityThread"

    #@433
    const-string/jumbo v4, "Unable to setupGraphicsSupport due to missing code-cache directory"

    #@436
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@439
    goto/16 :goto_5

    #@43b
    .line 5299
    .end local v14    # "cacheDir":Ljava/io/File;
    .end local v16    # "codeCacheDir":Ljava/io/File;
    .end local v17    # "deviceContext":Landroid/content/Context;
    .restart local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "instrContext":Landroid/app/ContextImpl;
    .restart local v27    # "pi":Landroid/app/LoadedApk;
    :catch_4
    move-exception v20

    #@43c
    .line 5300
    .local v20, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@43e
    .line 5301
    new-instance v4, Ljava/lang/StringBuilder;

    #@440
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@443
    const-string/jumbo v5, "Unable to instantiate instrumentation "

    #@446
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@449
    move-result-object v4

    #@44a
    .line 5302
    move-object/from16 v0, p1

    #@44c
    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@44e
    .line 5301
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@451
    move-result-object v4

    #@452
    .line 5302
    const-string/jumbo v5, ": "

    #@455
    .line 5301
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@458
    move-result-object v4

    #@459
    .line 5302
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@45c
    move-result-object v5

    #@45d
    .line 5301
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@460
    move-result-object v4

    #@461
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@464
    move-result-object v4

    #@465
    .line 5300
    move-object/from16 v0, v20

    #@467
    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@46a
    throw v2

    #@46b
    .line 5310
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v8    # "component":Landroid/content/ComponentName;
    .restart local v15    # "cl":Ljava/lang/ClassLoader;
    :cond_18
    move-object/from16 v0, p0

    #@46d
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@46f
    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@471
    if-nez v2, :cond_d

    #@473
    .line 5311
    move-object/from16 v0, p0

    #@475
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@477
    const/4 v4, 0x1

    #@478
    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    #@47a
    .line 5312
    new-instance v22, Ljava/io/File;

    #@47c
    move-object/from16 v0, p0

    #@47e
    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@480
    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    #@482
    move-object/from16 v0, v22

    #@484
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@487
    .line 5313
    .local v22, "file":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@48a
    move-result-object v2

    #@48b
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    #@48e
    .line 5314
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    #@491
    move-result-object v2

    #@492
    const/high16 v4, 0x800000

    #@494
    invoke-static {v2, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    #@497
    goto/16 :goto_6

    #@499
    .line 5317
    .end local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "instrContext":Landroid/app/ContextImpl;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v15    # "cl":Ljava/lang/ClassLoader;
    .end local v22    # "file":Ljava/io/File;
    .end local v27    # "pi":Landroid/app/LoadedApk;
    :cond_19
    new-instance v2, Landroid/app/Instrumentation;

    #@49b
    invoke-direct {v2}, Landroid/app/Instrumentation;-><init>()V

    #@49e
    move-object/from16 v0, p0

    #@4a0
    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@4a2
    goto/16 :goto_6

    #@4a4
    .line 5325
    :cond_1a
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@4a7
    move-result-object v2

    #@4a8
    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    #@4ab
    goto/16 :goto_7

    #@4ad
    .line 5354
    .restart local v11    # "app":Landroid/app/Application;
    .restart local v29    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catch_5
    move-exception v20

    #@4ae
    .line 5355
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v2, Ljava/lang/RuntimeException;

    #@4b0
    .line 5356
    new-instance v4, Ljava/lang/StringBuilder;

    #@4b2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b5
    const-string/jumbo v5, "Exception thrown in onCreate() of "

    #@4b8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bb
    move-result-object v4

    #@4bc
    .line 5357
    move-object/from16 v0, p1

    #@4be
    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    #@4c0
    .line 5356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c3
    move-result-object v4

    #@4c4
    .line 5357
    const-string/jumbo v5, ": "

    #@4c7
    .line 5356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ca
    move-result-object v4

    #@4cb
    .line 5357
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@4ce
    move-result-object v5

    #@4cf
    .line 5356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d2
    move-result-object v4

    #@4d3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d6
    move-result-object v4

    #@4d7
    .line 5355
    move-object/from16 v0, v20

    #@4d9
    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4dc
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@4dd
    .line 5369
    .end local v11    # "app":Landroid/app/Application;
    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    #@4de
    .line 5370
    invoke-static/range {v29 .. v29}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@4e1
    .line 5369
    throw v2

    #@4e2
    .line 5362
    .restart local v11    # "app":Landroid/app/Application;
    :catch_6
    move-exception v20

    #@4e3
    .line 5363
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_a
    move-object/from16 v0, p0

    #@4e5
    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@4e7
    move-object/from16 v0, v20

    #@4e9
    invoke-virtual {v2, v11, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@4ec
    move-result v2

    #@4ed
    if-nez v2, :cond_f

    #@4ef
    .line 5364
    new-instance v2, Ljava/lang/RuntimeException;

    #@4f1
    .line 5365
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4f6
    const-string/jumbo v5, "Unable to create application "

    #@4f9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fc
    move-result-object v4

    #@4fd
    invoke-virtual {v11}, Landroid/app/Application;->getClass()Ljava/lang/Class;

    #@500
    move-result-object v5

    #@501
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@504
    move-result-object v5

    #@505
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@508
    move-result-object v4

    #@509
    .line 5366
    const-string/jumbo v5, ": "

    #@50c
    .line 5365
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50f
    move-result-object v4

    #@510
    .line 5366
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@513
    move-result-object v5

    #@514
    .line 5365
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@517
    move-result-object v4

    #@518
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51b
    move-result-object v4

    #@51c
    .line 5364
    move-object/from16 v0, v20

    #@51e
    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@521
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method

.method private handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 9
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    #@0
    .prologue
    .line 3180
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
    .line 3183
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_0

    #@c
    .line 3185
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@e
    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@15
    .line 3186
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@17
    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@1a
    .line 3188
    :try_start_1
    iget-boolean v4, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    #@1c
    if-nez v4, :cond_1

    #@1e
    .line 3189
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@20
    invoke-virtual {v3, v4}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    .line 3190
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@27
    move-result-object v4

    #@28
    .line 3191
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@2a
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@2c
    .line 3190
    invoke-interface {v4, v5, v6, v0}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    #@2f
    .line 3197
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    #@32
    .line 3179
    :cond_0
    return-void

    #@33
    .line 3193
    :cond_1
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@35
    invoke-virtual {v3, v4}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    #@38
    .line 3194
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3b
    move-result-object v4

    #@3c
    .line 3195
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@3e
    const/4 v6, 0x0

    #@3f
    const/4 v7, 0x0

    #@40
    const/4 v8, 0x0

    #@41
    .line 3194
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@44
    goto :goto_0

    #@45
    .line 3198
    :catch_0
    move-exception v2

    #@46
    .line 3199
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@49
    move-result-object v4

    #@4a
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@4b
    .line 3201
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@4c
    .line 3202
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@4e
    invoke-virtual {v4, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@51
    move-result v4

    #@52
    if-nez v4, :cond_0

    #@54
    .line 3203
    new-instance v4, Ljava/lang/RuntimeException;

    #@56
    .line 3204
    new-instance v5, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v6, "Unable to bind to service "

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    .line 3205
    const-string/jumbo v6, " with "

    #@69
    .line 3204
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 3205
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@6f
    .line 3204
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    .line 3205
    const-string/jumbo v6, ": "

    #@76
    .line 3204
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    .line 3205
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    .line 3204
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v5

    #@86
    .line 3203
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@89
    throw v4
.end method

.method private handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 15
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    #@0
    .prologue
    .line 3037
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v11

    #@4
    .line 3038
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
    .line 3037
    invoke-interface {v11, v12, v14, v13}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@12
    move-result-object v10

    #@13
    .line 3039
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
    .line 3040
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
    .line 3041
    move-object/from16 v0, p1

    #@2e
    iget-object v13, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@30
    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@32
    .line 3040
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
    .line 3042
    return-void

    #@3e
    .line 3044
    .end local v10    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    #@3f
    .line 3045
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@42
    move-result-object v11

    #@43
    throw v11

    #@44
    .line 3049
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v10    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@47
    .line 3052
    move-object/from16 v0, p1

    #@49
    iget-object v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@4b
    move-object/from16 v0, p1

    #@4d
    iget-object v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@4f
    invoke-virtual {p0, v11, v12}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@52
    move-result-object v8

    #@53
    .line 3053
    .local v8, "packageInfo":Landroid/app/LoadedApk;
    iget-object v9, v8, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@55
    .line 3054
    .local v9, "packageName":Ljava/lang/String;
    if-nez v9, :cond_1

    #@57
    .line 3055
    const-string/jumbo v11, "ActivityThread"

    #@5a
    const-string/jumbo v12, "Asked to create backup agent for nonexistent package"

    #@5d
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 3056
    return-void

    #@61
    .line 3059
    :cond_1
    move-object/from16 v0, p1

    #@63
    iget-object v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@65
    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    #@67
    .line 3061
    .local v4, "classname":Ljava/lang/String;
    if-nez v4, :cond_3

    #@69
    move-object/from16 v0, p1

    #@6b
    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    #@6d
    const/4 v12, 0x1

    #@6e
    if-eq v11, v12, :cond_2

    #@70
    .line 3062
    move-object/from16 v0, p1

    #@72
    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    #@74
    const/4 v12, 0x3

    #@75
    if-ne v11, v12, :cond_3

    #@77
    .line 3063
    :cond_2
    const-string/jumbo v4, "android.app.backup.FullBackupAgent"

    #@7a
    .line 3067
    :cond_3
    const/4 v2, 0x0

    #@7b
    .line 3068
    .local v2, "binder":Landroid/os/IBinder;
    :try_start_1
    iget-object v11, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    #@7d
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    move-result-object v1

    #@81
    check-cast v1, Landroid/app/backup/BackupAgent;

    #@83
    .line 3069
    .local v1, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v1, :cond_5

    #@85
    .line 3074
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@88
    move-result-object v2

    #@89
    .line 3104
    .end local v2    # "binder":Landroid/os/IBinder;
    :cond_4
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@8c
    move-result-object v11

    #@8d
    invoke-interface {v11, v9, v2}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@90
    .line 3032
    return-void

    #@91
    .line 3079
    .restart local v2    # "binder":Landroid/os/IBinder;
    :cond_5
    :try_start_3
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@94
    move-result-object v3

    #@95
    .line 3080
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@98
    move-result-object v11

    #@99
    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@9c
    move-result-object v11

    #@9d
    move-object v0, v11

    #@9e
    check-cast v0, Landroid/app/backup/BackupAgent;

    #@a0
    move-object v1, v0

    #@a1
    .line 3083
    invoke-static {p0, v8}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    #@a4
    move-result-object v5

    #@a5
    .line 3084
    .local v5, "context":Landroid/app/ContextImpl;
    invoke-virtual {v5, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    #@a8
    .line 3085
    invoke-virtual {v1, v5}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    #@ab
    .line 3087
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onCreate()V

    #@ae
    .line 3088
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    #@b1
    move-result-object v2

    #@b2
    .line 3089
    .local v2, "binder":Landroid/os/IBinder;
    iget-object v11, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    #@b4
    invoke-virtual {v11, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@b7
    goto :goto_0

    #@b8
    .line 3090
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "context":Landroid/app/ContextImpl;
    :catch_1
    move-exception v7

    #@b9
    .line 3093
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v11, "ActivityThread"

    #@bc
    new-instance v12, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v13, "Agent threw during creation: "

    #@c4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v12

    #@c8
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v12

    #@cc
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v12

    #@d0
    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    .line 3094
    move-object/from16 v0, p1

    #@d5
    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    #@d7
    const/4 v12, 0x2

    #@d8
    if-eq v11, v12, :cond_4

    #@da
    .line 3095
    move-object/from16 v0, p1

    #@dc
    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    #@de
    const/4 v12, 0x3

    #@df
    if-eq v11, v12, :cond_4

    #@e1
    .line 3096
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    #@e2
    .line 3108
    .end local v1    # "agent":Landroid/app/backup/BackupAgent;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    #@e3
    .line 3109
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/RuntimeException;

    #@e5
    new-instance v12, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v13, "Unable to create BackupAgent "

    #@ed
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v12

    #@f1
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v12

    #@f5
    .line 3110
    const-string/jumbo v13, ": "

    #@f8
    .line 3109
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v12

    #@fc
    .line 3110
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@ff
    move-result-object v13

    #@100
    .line 3109
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v12

    #@104
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v12

    #@108
    invoke-direct {v11, v12, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10b
    throw v11

    #@10c
    .line 3105
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "agent":Landroid/app/backup/BackupAgent;
    :catch_3
    move-exception v6

    #@10d
    .line 3106
    .restart local v6    # "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@110
    move-result-object v11

    #@111
    throw v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
.end method

.method private handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 13
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    #@0
    .prologue
    .line 3137
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@3
    .line 3140
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    #@5
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@9
    .line 3139
    invoke-virtual {p0, v3, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@c
    move-result-object v11

    #@d
    .line 3141
    .local v11, "packageInfo":Landroid/app/LoadedApk;
    const/4 v1, 0x0

    #@e
    .line 3143
    .local v1, "service":Landroid/app/Service;
    :try_start_0
    invoke-virtual {v11}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@11
    move-result-object v8

    #@12
    .line 3144
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
    .line 3156
    .end local v1    # "service":Landroid/app/Service;
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    :try_start_1
    invoke-static {p0, v11}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    #@25
    move-result-object v2

    #@26
    .line 3157
    .local v2, "context":Landroid/app/ContextImpl;
    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    #@29
    .line 3159
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@2b
    const/4 v4, 0x0

    #@2c
    invoke-virtual {v11, v4, v3}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    #@2f
    move-result-object v6

    #@30
    .line 3160
    .local v6, "app":Landroid/app/Application;
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    #@32
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@34
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    #@36
    .line 3161
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@39
    move-result-object v7

    #@3a
    move-object v3, p0

    #@3b
    .line 3160
    invoke-virtual/range {v1 .. v7}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    #@3e
    .line 3162
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    #@41
    .line 3163
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    #@43
    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    #@45
    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@48
    .line 3165
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4b
    move-result-object v3

    #@4c
    .line 3166
    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    #@4e
    const/4 v5, 0x0

    #@4f
    const/4 v7, 0x0

    #@50
    const/4 v12, 0x0

    #@51
    .line 3165
    invoke-interface {v3, v4, v5, v7, v12}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@54
    .line 3134
    .end local v2    # "context":Landroid/app/ContextImpl;
    .end local v6    # "app":Landroid/app/Application;
    :cond_1
    return-void

    #@55
    .line 3145
    .restart local v1    # "service":Landroid/app/Service;
    :catch_0
    move-exception v10

    #@56
    .line 3146
    .local v10, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@58
    invoke-virtual {v3, v1, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@5b
    move-result v3

    #@5c
    if-nez v3, :cond_0

    #@5e
    .line 3147
    new-instance v3, Ljava/lang/RuntimeException;

    #@60
    .line 3148
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
    .line 3149
    const-string/jumbo v5, ": "

    #@77
    .line 3148
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    .line 3149
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    .line 3148
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    .line 3147
    invoke-direct {v3, v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8a
    throw v3

    #@8b
    .line 3167
    .end local v1    # "service":Landroid/app/Service;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v2    # "context":Landroid/app/ContextImpl;
    .restart local v6    # "app":Landroid/app/Application;
    :catch_1
    move-exception v9

    #@8c
    .line 3168
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v9}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@8f
    move-result-object v3

    #@90
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    #@91
    .line 3170
    .end local v2    # "context":Landroid/app/ContextImpl;
    .end local v6    # "app":Landroid/app/Application;
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v10

    #@92
    .line 3171
    .restart local v10    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@94
    invoke-virtual {v3, v1, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@97
    move-result v3

    #@98
    if-nez v3, :cond_1

    #@9a
    .line 3172
    new-instance v3, Ljava/lang/RuntimeException;

    #@9c
    .line 3173
    new-instance v4, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v5, "Unable to create service "

    #@a4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    #@aa
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@ac
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v4

    #@b0
    .line 3174
    const-string/jumbo v5, ": "

    #@b3
    .line 3173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v4

    #@b7
    .line 3174
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@ba
    move-result-object v5

    #@bb
    .line 3173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v4

    #@bf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v4

    #@c3
    .line 3172
    invoke-direct {v3, v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c6
    throw v3
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
    .line 4185
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    #@4
    move-result-object v2

    #@5
    .line 4187
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_5

    #@7
    .line 4188
    invoke-static {v2, p2}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    #@a
    .line 4189
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@f
    move-result-object v4

    #@10
    .line 4190
    .local v4, "wm":Landroid/view/WindowManager;
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@12
    iget-object v3, v6, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@14
    .line 4191
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_3

    #@16
    .line 4192
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@18
    iget-boolean v6, v6, Landroid/app/Activity;->mVisibleFromServer:Z

    #@1a
    if-eqz v6, :cond_0

    #@1c
    .line 4193
    iget v6, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@1e
    add-int/lit8 v6, v6, -0x1

    #@20
    iput v6, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@22
    .line 4195
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@25
    move-result-object v5

    #@26
    .line 4196
    .local v5, "wtoken":Landroid/os/IBinder;
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@28
    iget-boolean v6, v6, Landroid/app/Activity;->mWindowAdded:Z

    #@2a
    if-eqz v6, :cond_1

    #@2c
    .line 4197
    iget-boolean v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    #@2e
    if-eqz v6, :cond_7

    #@30
    .line 4200
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@32
    iput-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    #@34
    .line 4201
    iput-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    #@36
    .line 4205
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@38
    invoke-virtual {v6}, Landroid/view/Window;->clearContentView()V

    #@3b
    .line 4210
    :cond_1
    :goto_0
    if-eqz v5, :cond_8

    #@3d
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    #@3f
    if-nez v6, :cond_8

    #@41
    .line 4211
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@44
    move-result-object v6

    #@45
    .line 4212
    iget-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@47
    invoke-virtual {v7}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    const-string/jumbo v8, "Activity"

    #@52
    .line 4211
    invoke-virtual {v6, v5, v7, v8}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    #@55
    .line 4221
    :cond_2
    :goto_1
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@57
    iput-object v9, v6, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@59
    .line 4223
    .end local v5    # "wtoken":Landroid/os/IBinder;
    :cond_3
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    #@5b
    if-nez v6, :cond_4

    #@5d
    .line 4230
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@60
    move-result-object v6

    #@61
    .line 4231
    iget-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@63
    invoke-virtual {v7}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@66
    move-result-object v7

    #@67
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6a
    move-result-object v7

    #@6b
    const-string/jumbo v8, "Activity"

    #@6e
    .line 4230
    invoke-virtual {v6, p1, v7, v8}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    #@71
    .line 4238
    :cond_4
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@73
    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    #@76
    move-result-object v0

    #@77
    .line 4239
    .local v0, "c":Landroid/content/Context;
    instance-of v6, v0, Landroid/app/ContextImpl;

    #@79
    if-eqz v6, :cond_5

    #@7b
    .line 4240
    check-cast v0, Landroid/app/ContextImpl;

    #@7d
    .line 4241
    .end local v0    # "c":Landroid/content/Context;
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@7f
    invoke-virtual {v6}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@82
    move-result-object v6

    #@83
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    const-string/jumbo v7, "Activity"

    #@8a
    .line 4240
    invoke-virtual {v0, v6, v7}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    #@8d
    .line 4244
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "wm":Landroid/view/WindowManager;
    :cond_5
    if-eqz p2, :cond_6

    #@8f
    .line 4246
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@92
    move-result-object v6

    #@93
    invoke-interface {v6, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@96
    .line 4251
    :cond_6
    const/4 v6, 0x1

    #@97
    iput-boolean v6, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@99
    .line 4184
    return-void

    #@9a
    .line 4207
    .restart local v3    # "v":Landroid/view/View;
    .restart local v4    # "wm":Landroid/view/WindowManager;
    .restart local v5    # "wtoken":Landroid/os/IBinder;
    :cond_7
    invoke-interface {v4, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    #@9d
    goto :goto_0

    #@9e
    .line 4213
    :cond_8
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    #@a0
    if-eqz v6, :cond_2

    #@a2
    .line 4218
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@a5
    move-result-object v6

    #@a6
    .line 4219
    iget-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@a8
    invoke-virtual {v7}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@ab
    move-result-object v7

    #@ac
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@af
    move-result-object v7

    #@b0
    const-string/jumbo v8, "Activity"

    #@b3
    .line 4218
    invoke-virtual {v6, p1, v3, v7, v8}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    #@b6
    goto :goto_1

    #@b7
    .line 4247
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "wm":Landroid/view/WindowManager;
    .end local v5    # "wtoken":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    #@b8
    .line 4248
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@bb
    move-result-object v6

    #@bc
    throw v6
.end method

.method private handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 7
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    #@0
    .prologue
    .line 3118
    iget-object v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    iget-object v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@4
    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@7
    move-result-object v2

    #@8
    .line 3119
    .local v2, "packageInfo":Landroid/app/LoadedApk;
    iget-object v3, v2, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    #@a
    .line 3120
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/app/backup/BackupAgent;

    #@12
    .line 3121
    .local v0, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v0, :cond_0

    #@14
    .line 3123
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 3128
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 3115
    :goto_1
    return-void

    #@1d
    .line 3124
    :catch_0
    move-exception v1

    #@1e
    .line 3125
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
    .line 3126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@3d
    goto :goto_0

    #@3e
    .line 3130
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
    .line 3256
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v0

    #@4
    .line 3258
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
    .line 3259
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_0

    #@10
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 3260
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@16
    new-instance v3, Ljava/io/FileOutputStream;

    #@18
    .line 3261
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@1a
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1d
    move-result-object v4

    #@1e
    .line 3260
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@21
    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@24
    .line 3262
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
    .line 3263
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 3266
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@38
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3b
    .line 3267
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@3e
    .line 3255
    return-void

    #@3f
    .line 3265
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v3

    #@40
    .line 3266
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@42
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    .line 3267
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@48
    .line 3265
    throw v3
.end method

.method static final handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V
    .locals 5
    .param p0, "managed"    # Z
    .param p1, "dhd"    # Landroid/app/ActivityThread$DumpHeapData;

    #@0
    .prologue
    .line 4827
    if-eqz p0, :cond_0

    #@2
    .line 4829
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
    .line 4835
    :try_start_1
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    #@f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@12
    .line 4844
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
    .line 4826
    return-void

    #@1c
    .line 4836
    :catch_0
    move-exception v1

    #@1d
    .line 4837
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    #@20
    const-string/jumbo v3, "Failure closing profile fd"

    #@23
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_0

    #@27
    .line 4830
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@28
    .line 4831
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
    .line 4832
    const-string/jumbo v4, " -- can the process access this path?"

    #@40
    .line 4831
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
    .line 4835
    :try_start_4
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    #@4d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@50
    goto :goto_0

    #@51
    .line 4836
    :catch_2
    move-exception v1

    #@52
    .line 4837
    const-string/jumbo v2, "ActivityThread"

    #@55
    const-string/jumbo v3, "Failure closing profile fd"

    #@58
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    goto :goto_0

    #@5c
    .line 4833
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@5d
    .line 4835
    :try_start_5
    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    #@5f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@62
    .line 4833
    :goto_1
    throw v2

    #@63
    .line 4836
    :catch_3
    move-exception v1

    #@64
    .line 4837
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "ActivityThread"

    #@67
    const-string/jumbo v4, "Failure closing profile fd"

    #@6a
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    goto :goto_1

    #@6e
    .line 4841
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
    .line 4845
    :catch_4
    move-exception v0

    #@79
    .line 4846
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@7c
    move-result-object v2

    #@7d
    throw v2
.end method

.method private handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    #@0
    .prologue
    .line 3272
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v0

    #@4
    .line 3274
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
    .line 3275
    .local v2, "r":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_0

    #@10
    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 3276
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@16
    new-instance v3, Ljava/io/FileOutputStream;

    #@18
    .line 3277
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@1a
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1d
    move-result-object v4

    #@1e
    .line 3276
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@21
    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@24
    .line 3278
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
    .line 3279
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 3282
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@36
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@39
    .line 3283
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@3c
    .line 3271
    return-void

    #@3d
    .line 3281
    .end local v2    # "r":Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v3

    #@3e
    .line 3282
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@40
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@43
    .line 3283
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@46
    .line 3281
    throw v3
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    #@0
    .prologue
    .line 3240
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v0

    #@4
    .line 3242
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
    .line 3243
    .local v2, "s":Landroid/app/Service;
    if-eqz v2, :cond_0

    #@10
    .line 3244
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@12
    new-instance v3, Ljava/io/FileOutputStream;

    #@14
    .line 3245
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@16
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@19
    move-result-object v4

    #@1a
    .line 3244
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@1d
    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@20
    .line 3246
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
    .line 3247
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 3250
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@30
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@33
    .line 3251
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@36
    .line 3239
    return-void

    #@37
    .line 3249
    .end local v2    # "s":Landroid/app/Service;
    :catchall_0
    move-exception v3

    #@38
    .line 3250
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    #@3a
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3d
    .line 3251
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@40
    .line 3249
    throw v3
.end method

.method private handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2911
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 2912
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@a
    .line 2913
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    #@f
    .line 2910
    :cond_0
    return-void
.end method

.method private handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 2690
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@6
    .line 2691
    iput-boolean v4, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@8
    .line 2693
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2694
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@e
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    #@10
    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    #@13
    .line 2695
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@15
    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    #@18
    .line 2699
    :cond_0
    invoke-virtual {p0, v3, v3}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@1b
    .line 2705
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    #@1e
    .line 2707
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    #@21
    move-result-object v7

    #@22
    .line 2709
    .local v7, "a":Landroid/app/Activity;
    if-eqz v7, :cond_4

    #@24
    .line 2710
    new-instance v0, Landroid/content/res/Configuration;

    #@26
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@28
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@2b
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@2d
    .line 2711
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@30
    .line 2712
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@32
    .line 2713
    .local v9, "oldState":Landroid/os/Bundle;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@34
    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    #@36
    .line 2714
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@38
    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    #@3a
    if-nez v0, :cond_1

    #@3c
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@3e
    if-eqz v0, :cond_2

    #@40
    :cond_1
    move v4, v2

    #@41
    :cond_2
    iget v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    #@43
    move-object v0, p0

    #@44
    move-object v6, p3

    #@45
    .line 2713
    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZILjava/lang/String;)V

    #@48
    .line 2716
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@4a
    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    #@4c
    if-nez v0, :cond_3

    #@4e
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@50
    if-eqz v0, :cond_3

    #@52
    .line 2724
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    #@55
    .line 2731
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_3

    #@5b
    .line 2732
    iput-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@5d
    .line 2687
    .end local v9    # "oldState":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    #@5e
    .line 2738
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@61
    move-result-object v0

    #@62
    .line 2739
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@64
    const/4 v2, 0x0

    #@65
    const/4 v3, 0x0

    #@66
    .line 2740
    const/4 v4, 0x0

    #@67
    .line 2738
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    goto :goto_0

    #@6b
    .line 2741
    :catch_0
    move-exception v8

    #@6c
    .line 2742
    .local v8, "ex":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@6f
    move-result-object v0

    #@70
    throw v0
.end method

.method private handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    #@0
    .prologue
    .line 2946
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 2947
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@a
    .line 2948
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@c
    .line 2949
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@e
    invoke-virtual {v1, p2}, Landroid/app/Activity;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V

    #@11
    .line 2950
    if-nez p2, :cond_1

    #@13
    .line 2951
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@15
    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    #@18
    .line 2945
    :cond_0
    :goto_0
    return-void

    #@19
    .line 2953
    :cond_1
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1b
    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    #@1e
    goto :goto_0
.end method

.method private handleMultiWindowModeChanged(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInMultiWindowMode"    # Z

    #@0
    .prologue
    .line 2932
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 2933
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@a
    .line 2934
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v1, p2}, Landroid/app/Activity;->dispatchMultiWindowModeChanged(Z)V

    #@f
    .line 2931
    :cond_0
    return-void
.end method

.method private handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    .locals 2
    .param p1, "data"    # Landroid/app/ActivityThread$NewIntentData;

    #@0
    .prologue
    .line 2804
    iget-object v0, p1, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    #@2
    iget-object v1, p1, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    #@7
    .line 2803
    return-void
.end method

.method private handlePauseActivity(Landroid/os/IBinder;ZZIZI)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z
    .param p6, "seq"    # I

    #@0
    .prologue
    .line 3624
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 3626
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const-string/jumbo v2, "pauseActivity"

    #@b
    invoke-static {p6, v1, v2}, Landroid/app/ActivityThread;->checkAndUpdateLifecycleSeq(ILandroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 3627
    return-void

    #@12
    .line 3629
    :cond_0
    if-eqz v1, :cond_4

    #@14
    .line 3631
    if-eqz p3, :cond_1

    #@16
    .line 3632
    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@19
    .line 3635
    :cond_1
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1b
    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    #@1d
    or-int/2addr v3, p4

    #@1e
    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    #@20
    .line 3636
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@23
    move-result v2

    #@24
    const-string/jumbo v3, "handlePauseActivity"

    #@27
    invoke-virtual {p0, p1, p2, v2, v3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZLjava/lang/String;)Landroid/os/Bundle;

    #@2a
    .line 3639
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 3640
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    #@33
    .line 3644
    :cond_2
    if-nez p5, :cond_3

    #@35
    .line 3646
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@38
    move-result-object v2

    #@39
    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 3651
    :cond_3
    const/4 v2, 0x1

    #@3d
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@3f
    .line 3623
    :cond_4
    return-void

    #@40
    .line 3647
    :catch_0
    move-exception v0

    #@41
    .line 3648
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@44
    move-result-object v2

    #@45
    throw v2
.end method

.method private handlePictureInPictureModeChanged(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isInPipMode"    # Z

    #@0
    .prologue
    .line 2939
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 2940
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@a
    .line 2941
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v1, p2}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(Z)V

    #@f
    .line 2938
    :cond_0
    return-void
.end method

.method private handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 12
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 2972
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@4
    .line 2974
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
    .line 2977
    .local v2, "component":Ljava/lang/String;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    #@10
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@14
    .line 2976
    invoke-virtual {p0, v8, v9}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    #@17
    move-result-object v6

    #@18
    .line 2979
    .local v6, "packageInfo":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1b
    move-result-object v5

    #@1c
    .line 2983
    .local v5, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    invoke-virtual {v6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@1f
    move-result-object v1

    #@20
    .line 2984
    .local v1, "cl":Ljava/lang/ClassLoader;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    #@22
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@25
    .line 2985
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    #@27
    invoke-virtual {v8}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@2a
    .line 2986
    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@2d
    .line 2987
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
    .line 2998
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
    .line 3008
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Landroid/app/ContextImpl;

    #@44
    .line 3009
    .local v3, "context":Landroid/app/ContextImpl;
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    #@46
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    #@48
    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@4b
    .line 3010
    invoke-virtual {v7, p1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    #@4e
    .line 3011
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    #@51
    move-result-object v8

    #@52
    .line 3012
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    #@54
    .line 3011
    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 3023
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    #@59
    invoke-virtual {v8, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@5c
    .line 3026
    .end local v0    # "app":Landroid/app/Application;
    .end local v3    # "context":Landroid/app/ContextImpl;
    :goto_0
    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    #@5f
    move-result-object v8

    #@60
    if-eqz v8, :cond_0

    #@62
    .line 3027
    invoke-virtual {p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    #@65
    .line 2969
    :cond_0
    return-void

    #@66
    .line 2988
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v7    # "receiver":Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v4

    #@67
    .line 2991
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    #@6a
    .line 2992
    new-instance v8, Ljava/lang/RuntimeException;

    #@6c
    .line 2993
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
    .line 2994
    const-string/jumbo v10, ": "

    #@7f
    .line 2993
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v9

    #@83
    .line 2994
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@86
    move-result-object v10

    #@87
    .line 2993
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v9

    #@8b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v9

    #@8f
    .line 2992
    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@92
    throw v8

    #@93
    .line 3013
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "cl":Ljava/lang/ClassLoader;
    .restart local v7    # "receiver":Landroid/content/BroadcastReceiver;
    :catch_1
    move-exception v4

    #@94
    .line 3016
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    #@97
    .line 3017
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@99
    invoke-virtual {v8, v7, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@9c
    move-result v8

    #@9d
    if-nez v8, :cond_1

    #@9f
    .line 3018
    new-instance v8, Ljava/lang/RuntimeException;

    #@a1
    .line 3019
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
    .line 3020
    const-string/jumbo v10, ": "

    #@b4
    .line 3019
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v9

    #@b8
    .line 3020
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@bb
    move-result-object v10

    #@bc
    .line 3019
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v9

    #@c0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v9

    #@c4
    .line 3018
    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c7
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c8
    .line 3022
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    #@c9
    .line 3023
    sget-object v9, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    #@cb
    invoke-virtual {v9, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@ce
    .line 3022
    throw v8

    #@cf
    .line 3023
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    #@d1
    invoke-virtual {v8, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@d4
    goto :goto_0
.end method

.method private handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 14
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v13, 0x0

    #@3
    .line 4340
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@6
    .line 4341
    iput-boolean v10, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@8
    .line 4343
    const/4 v1, 0x0

    #@9
    .line 4344
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    #@a
    .line 4349
    .local v2, "configChanges":I
    iget-object v11, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@c
    monitor-enter v11

    #@d
    .line 4350
    :try_start_0
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v0

    #@13
    .line 4351
    .local v0, "N":I
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@15
    .line 4352
    .local v7, "token":Landroid/os/IBinder;
    const/4 p1, 0x0

    #@16
    .line 4353
    .local p1, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v5, 0x0

    #@17
    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_1

    #@19
    .line 4354
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    #@21
    .line 4355
    .local v6, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@23
    if-ne v8, v7, :cond_0

    #@25
    .line 4356
    move-object p1, v6

    #@26
    .line 4357
    .local p1, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    iget v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    #@28
    or-int/2addr v2, v8

    #@29
    .line 4358
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 4359
    add-int/lit8 v5, v5, -0x1

    #@30
    .line 4360
    add-int/lit8 v0, v0, -0x1

    #@32
    .line 4353
    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@34
    goto :goto_0

    #@35
    .line 4364
    .end local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    if-nez p1, :cond_2

    #@37
    monitor-exit v11

    #@38
    .line 4366
    return-void

    #@39
    .line 4373
    :cond_2
    :try_start_1
    iget-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@3b
    if-eqz v8, :cond_3

    #@3d
    .line 4374
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@3f
    .line 4375
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v8, 0x0

    #@40
    iput-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    .end local v1    # "changedConfig":Landroid/content/res/Configuration;
    :cond_3
    monitor-exit v11

    #@43
    .line 4379
    iget v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    #@45
    iget v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    #@47
    if-le v8, v11, :cond_9

    #@49
    .line 4380
    const-string/jumbo v8, "ActivityThread"

    #@4c
    new-instance v11, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v12, "For some reason target: "

    #@54
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v11

    #@58
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v11

    #@5c
    const-string/jumbo v12, " has lower sequence: "

    #@5f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v11

    #@63
    .line 4381
    iget v12, p1, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    #@65
    .line 4380
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v11

    #@69
    .line 4381
    const-string/jumbo v12, " than current sequence: "

    #@6c
    .line 4380
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v11

    #@70
    .line 4381
    iget v12, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    #@72
    .line 4380
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v11

    #@76
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v11

    #@7a
    invoke-static {v8, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 4385
    :goto_1
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@7f
    if-eqz v8, :cond_6

    #@81
    .line 4389
    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@83
    if-eqz v8, :cond_4

    #@85
    .line 4390
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@87
    iget-object v11, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@89
    invoke-virtual {v8, v11}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@8c
    move-result v8

    #@8d
    if-eqz v8, :cond_6

    #@8f
    .line 4391
    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@91
    iget-object v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@93
    invoke-virtual {v8, v11}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@96
    move-result v8

    #@97
    if-eqz v8, :cond_6

    #@99
    .line 4392
    :cond_4
    if-eqz v1, :cond_5

    #@9b
    .line 4393
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@9d
    invoke-virtual {v8, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@a0
    move-result v8

    #@a1
    .line 4392
    if-eqz v8, :cond_6

    #@a3
    .line 4394
    :cond_5
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@a5
    .line 4403
    :cond_6
    if-eqz v1, :cond_7

    #@a7
    .line 4404
    iget v8, v1, Landroid/content/res/Configuration;->densityDpi:I

    #@a9
    iput v8, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@ab
    .line 4405
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    #@ae
    .line 4406
    invoke-virtual {p0, v1, v13}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@b1
    .line 4409
    :cond_7
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@b3
    iget-object v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@b5
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b8
    move-result-object v6

    #@b9
    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    #@bb
    .line 4411
    .restart local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v6, :cond_a

    #@bd
    .line 4412
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@bf
    if-nez v8, :cond_8

    #@c1
    .line 4414
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@c4
    move-result-object v8

    #@c5
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@c7
    invoke-interface {v8, v9}, Landroid/app/IActivityManager;->activityRelaunched(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@ca
    .line 4419
    :cond_8
    return-void

    #@cb
    .line 4349
    .end local v0    # "N":I
    .end local v5    # "i":I
    .end local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v7    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v8

    #@cc
    monitor-exit v11

    #@cd
    throw v8

    #@ce
    .line 4383
    .restart local v0    # "N":I
    .restart local v5    # "i":I
    .restart local v7    # "token":Landroid/os/IBinder;
    :cond_9
    iget v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    #@d0
    iput v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    #@d2
    goto :goto_1

    #@d3
    .line 4415
    .restart local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catch_0
    move-exception v4

    #@d4
    .line 4416
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d7
    move-result-object v8

    #@d8
    throw v8

    #@d9
    .line 4422
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_a
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@db
    iget v11, v8, Landroid/app/Activity;->mConfigChangeFlags:I

    #@dd
    or-int/2addr v11, v2

    #@de
    iput v11, v8, Landroid/app/Activity;->mConfigChangeFlags:I

    #@e0
    .line 4423
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@e2
    iput-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@e4
    .line 4424
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    #@e6
    iput-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    #@e8
    .line 4425
    iget v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    #@ea
    iput v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->lastProcessedSeq:I

    #@ec
    .line 4426
    iget v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    #@ee
    iput v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I

    #@f0
    .line 4427
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@f2
    iget-object v3, v8, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    #@f4
    .line 4429
    .local v3, "currentIntent":Landroid/content/Intent;
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@f6
    iput-boolean v10, v8, Landroid/app/Activity;->mChangingConfigurations:Z

    #@f8
    .line 4443
    :try_start_3
    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    #@fa
    if-nez v8, :cond_b

    #@fc
    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@fe
    if-eqz v8, :cond_c

    #@100
    .line 4444
    :cond_b
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    #@103
    move-result-object v11

    #@104
    .line 4445
    iget-object v12, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@106
    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@108
    if-eqz v8, :cond_12

    #@10a
    move v8, v9

    #@10b
    .line 4444
    :goto_2
    invoke-interface {v11, v12, v8}, Landroid/view/IWindowSession;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@10e
    .line 4452
    :cond_c
    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@110
    if-nez v8, :cond_d

    #@112
    .line 4453
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@114
    invoke-virtual {v6}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@117
    move-result v11

    #@118
    const-string/jumbo v12, "handleRelaunchActivity"

    #@11b
    invoke-virtual {p0, v8, v9, v11, v12}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZLjava/lang/String;)Landroid/os/Bundle;

    #@11e
    .line 4455
    :cond_d
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@120
    if-nez v8, :cond_e

    #@122
    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@124
    if-eqz v8, :cond_13

    #@126
    .line 4459
    :cond_e
    :goto_3
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@128
    invoke-direct {p0, v8, v9, v2, v10}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    #@12b
    .line 4461
    iput-object v13, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@12d
    .line 4462
    iput-object v13, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@12f
    .line 4463
    iput-boolean v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    #@131
    .line 4464
    iput-object v13, v6, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    #@133
    .line 4466
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@135
    if-eqz v8, :cond_f

    #@137
    .line 4467
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@139
    if-nez v8, :cond_14

    #@13b
    .line 4468
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@13d
    iput-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@13f
    .line 4473
    :cond_f
    :goto_4
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@141
    if-eqz v8, :cond_10

    #@143
    .line 4474
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@145
    if-nez v8, :cond_15

    #@147
    .line 4475
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@149
    iput-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@14b
    .line 4480
    :cond_10
    :goto_5
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@14d
    iput-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@14f
    .line 4481
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@151
    iput-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@153
    .line 4483
    const-string/jumbo v8, "handleRelaunchActivity"

    #@156
    invoke-direct {p0, v6, v3, v8}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;Ljava/lang/String;)V

    #@159
    .line 4485
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@15b
    if-nez v8, :cond_11

    #@15d
    .line 4487
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@160
    move-result-object v8

    #@161
    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@163
    invoke-interface {v8, v9}, Landroid/app/IActivityManager;->activityRelaunched(Landroid/os/IBinder;)V

    #@166
    .line 4488
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@168
    if-eqz v8, :cond_11

    #@16a
    .line 4489
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@16c
    invoke-virtual {v8}, Landroid/view/Window;->reportActivityRelaunched()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    #@16f
    .line 4337
    :cond_11
    return-void

    #@170
    :cond_12
    move v8, v10

    #@171
    .line 4445
    goto :goto_2

    #@172
    .line 4447
    :catch_1
    move-exception v4

    #@173
    .line 4448
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@176
    move-result-object v8

    #@177
    throw v8

    #@178
    .line 4455
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_13
    invoke-virtual {v6}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@17b
    move-result v8

    #@17c
    if-nez v8, :cond_e

    #@17e
    .line 4456
    invoke-direct {p0, v6}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@181
    goto :goto_3

    #@182
    .line 4470
    :cond_14
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@184
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@186
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@189
    goto :goto_4

    #@18a
    .line 4477
    :cond_15
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@18c
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@18e
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@191
    goto :goto_5

    #@192
    .line 4491
    :catch_2
    move-exception v4

    #@193
    .line 4492
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@196
    move-result-object v8

    #@197
    throw v8
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
    .line 4063
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
    .line 4065
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_3

    #@e
    .line 4066
    iget-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@10
    if-eqz v4, :cond_1

    #@12
    const/4 v3, 0x0

    #@13
    .line 4067
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
    .line 4068
    iget-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    #@21
    .line 4067
    if-eqz v4, :cond_0

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 4072
    invoke-direct {p0, v2, v6}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    #@28
    .line 4074
    :cond_0
    if-eqz v3, :cond_2

    #@2a
    .line 4077
    :try_start_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@2c
    const/4 v5, 0x0

    #@2d
    iput-boolean v5, v4, Landroid/app/Activity;->mCalled:Z

    #@2f
    .line 4078
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@31
    const/4 v5, 0x1

    #@32
    iput-boolean v5, v4, Landroid/app/Activity;->mTemporaryPause:Z

    #@34
    .line 4079
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@36
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@38
    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    #@3b
    .line 4080
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@3d
    iget-boolean v4, v4, Landroid/app/Activity;->mCalled:Z

    #@3f
    if-nez v4, :cond_2

    #@41
    .line 4081
    new-instance v4, Landroid/util/SuperNotCalledException;

    #@43
    .line 4082
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
    .line 4083
    const-string/jumbo v6, " did not call through to super.onPause()"

    #@60
    .line 4082
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    .line 4081
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v4
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@6c
    .line 4085
    :catch_0
    move-exception v0

    #@6d
    .line 4086
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0

    #@6e
    .line 4066
    .end local v0    # "e":Landroid/util/SuperNotCalledException;
    .end local v3    # "resumed":Z
    :cond_1
    const/4 v3, 0x1

    #@6f
    .restart local v3    # "resumed":Z
    goto :goto_0

    #@70
    .line 4087
    :catch_1
    move-exception v1

    #@71
    .line 4088
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
    .line 4089
    new-instance v4, Ljava/lang/RuntimeException;

    #@7d
    .line 4090
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
    .line 4091
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
    .line 4090
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    .line 4092
    const-string/jumbo v6, ": "

    #@9a
    .line 4090
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    .line 4092
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@a1
    move-result-object v6

    #@a2
    .line 4090
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v5

    #@a6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v5

    #@aa
    .line 4089
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ad
    throw v4

    #@ae
    .line 4096
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p1, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    #@b0
    invoke-direct {p0, v2, v4}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    #@b3
    .line 4097
    if-eqz v3, :cond_3

    #@b5
    .line 4098
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@b7
    invoke-virtual {v4}, Landroid/app/Activity;->performResume()V

    #@ba
    .line 4099
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@bc
    iput-boolean v7, v4, Landroid/app/Activity;->mTemporaryPause:Z

    #@be
    .line 4062
    .end local v3    # "resumed":Z
    :cond_3
    return-void
.end method

.method private handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 8
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    #@0
    .prologue
    .line 3288
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
    .line 3289
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_1

    #@c
    .line 3291
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 3292
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@12
    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@19
    .line 3293
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@1b
    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@1e
    .line 3296
    :cond_0
    iget-boolean v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    #@20
    if-nez v4, :cond_2

    #@22
    .line 3297
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
    .line 3303
    .local v2, "res":I
    :goto_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@2f
    .line 3306
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@32
    move-result-object v4

    #@33
    .line 3307
    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    #@35
    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    #@37
    const/4 v7, 0x1

    #@38
    .line 3306
    invoke-interface {v4, v5, v7, v6, v2}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@3b
    .line 3311
    :try_start_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    #@3e
    .line 3287
    .end local v2    # "res":I
    :cond_1
    return-void

    #@3f
    .line 3299
    :cond_2
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@41
    invoke-virtual {v3, v4}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    #@44
    .line 3300
    const/16 v2, 0x3e8

    #@46
    .restart local v2    # "res":I
    goto :goto_0

    #@47
    .line 3308
    :catch_0
    move-exception v0

    #@48
    .line 3309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@4b
    move-result-object v4

    #@4c
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@4d
    .line 3312
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "res":I
    :catch_1
    move-exception v1

    #@4e
    .line 3313
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@50
    invoke-virtual {v4, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@53
    move-result v4

    #@54
    if-nez v4, :cond_1

    #@56
    .line 3314
    new-instance v4, Ljava/lang/RuntimeException;

    #@58
    .line 3315
    new-instance v5, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v6, "Unable to start service "

    #@60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    .line 3316
    const-string/jumbo v6, " with "

    #@6b
    .line 3315
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    .line 3316
    iget-object v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    #@71
    .line 3315
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    .line 3316
    const-string/jumbo v6, ": "

    #@78
    .line 3315
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    .line 3316
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    .line 3315
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v5

    #@88
    .line 3314
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8b
    throw v4
.end method

.method private handleSetCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4005
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@2
    monitor-enter v0

    #@3
    .line 4006
    :try_start_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 4008
    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    #@9
    .line 4004
    return-void

    #@a
    .line 4005
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method private handleSleeping(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 3960
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    #@a
    .line 3962
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v2, :cond_0

    #@c
    .line 3963
    const-string/jumbo v3, "ActivityThread"

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "handleSleeping: no activity for token "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 3964
    return-void

    #@27
    .line 3967
    :cond_0
    if-eqz p2, :cond_6

    #@29
    .line 3968
    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@2b
    if-nez v3, :cond_1

    #@2d
    invoke-virtual {v2}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_4

    #@33
    .line 3986
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_2

    #@39
    .line 3987
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    #@3c
    .line 3992
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3f
    move-result-object v3

    #@40
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@42
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->activitySlept(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@45
    .line 3959
    :cond_3
    :goto_1
    return-void

    #@46
    .line 3971
    :cond_4
    :try_start_1
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@48
    const/4 v4, 0x0

    #@49
    invoke-virtual {v3, v4}, Landroid/app/Activity;->performStop(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@4c
    .line 3980
    :cond_5
    iput-boolean v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@4e
    .line 3981
    const/4 v3, 0x3

    #@4f
    new-array v3, v3, [Ljava/lang/Object;

    #@51
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@54
    move-result v4

    #@55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v4

    #@59
    aput-object v4, v3, v5

    #@5b
    .line 3982
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@5d
    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    aput-object v4, v3, v6

    #@67
    const-string/jumbo v4, "sleeping"

    #@6a
    const/4 v5, 0x2

    #@6b
    aput-object v4, v3, v5

    #@6d
    .line 3981
    const/16 v4, 0x7561

    #@6f
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@72
    goto :goto_0

    #@73
    .line 3972
    :catch_0
    move-exception v0

    #@74
    .line 3973
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@76
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@78
    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@7b
    move-result v3

    #@7c
    if-nez v3, :cond_5

    #@7e
    .line 3974
    new-instance v3, Ljava/lang/RuntimeException;

    #@80
    .line 3975
    new-instance v4, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v5, "Unable to stop activity "

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    .line 3976
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@8e
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    .line 3975
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    .line 3977
    const-string/jumbo v5, ": "

    #@9d
    .line 3975
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v4

    #@a1
    .line 3977
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@a4
    move-result-object v5

    #@a5
    .line 3975
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v4

    #@ad
    .line 3974
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b0
    throw v3

    #@b1
    .line 3993
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@b2
    .line 3994
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b5
    move-result-object v3

    #@b6
    throw v3

    #@b7
    .line 3997
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_6
    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@b9
    if-eqz v3, :cond_3

    #@bb
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@bd
    iget-boolean v3, v3, Landroid/app/Activity;->mVisibleFromServer:Z

    #@bf
    if-eqz v3, :cond_3

    #@c1
    .line 3998
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c3
    invoke-virtual {v3}, Landroid/app/Activity;->performRestart()V

    #@c6
    .line 3999
    iput-boolean v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@c8
    goto/16 :goto_1
.end method

.method private handleStartBinderTracking()V
    .locals 0

    #@0
    .prologue
    .line 2918
    invoke-static {}, Landroid/os/Binder;->enableTracing()V

    #@3
    .line 2917
    return-void
.end method

.method private handleStopActivity(Landroid/os/IBinder;ZII)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z
    .param p3, "configChanges"    # I
    .param p4, "seq"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 3879
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    #@9
    .line 3880
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const-string/jumbo v0, "stopActivity"

    #@c
    invoke-static {p4, v1, v0}, Landroid/app/ActivityThread;->checkAndUpdateLifecycleSeq(ILandroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 3881
    return-void

    #@13
    .line 3883
    :cond_0
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@15
    iget v3, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    #@17
    or-int/2addr v3, p3

    #@18
    iput v3, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    #@1a
    .line 3885
    new-instance v2, Landroid/app/ActivityThread$StopInfo;

    #@1c
    const/4 v0, 0x0

    #@1d
    invoke-direct {v2, v0}, Landroid/app/ActivityThread$StopInfo;-><init>(Landroid/app/ActivityThread$StopInfo;)V

    #@20
    .line 3886
    .local v2, "info":Landroid/app/ActivityThread$StopInfo;
    const-string/jumbo v5, "handleStopActivity"

    #@23
    move-object v0, p0

    #@24
    move v3, p2

    #@25
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZLjava/lang/String;)V

    #@28
    .line 3892
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    #@2b
    .line 3895
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    #@2e
    move-result v0

    #@2f
    if-nez v0, :cond_1

    #@31
    .line 3896
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    #@34
    .line 3904
    :cond_1
    iput-object v1, v2, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    #@36
    .line 3905
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@38
    iput-object v0, v2, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    #@3a
    .line 3906
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@3c
    iput-object v0, v2, Landroid/app/ActivityThread$StopInfo;->persistentState:Landroid/os/PersistableBundle;

    #@3e
    .line 3907
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@40
    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    #@43
    .line 3908
    iput-boolean v4, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@45
    .line 3878
    return-void
.end method

.method private handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 2923
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->disableTracing()V

    #@3
    .line 2924
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroid/os/TransactionTracker;->writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 2926
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@d
    .line 2927
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/os/TransactionTracker;->clearTraces()V

    #@14
    .line 2921
    return-void

    #@15
    .line 2925
    :catchall_0
    move-exception v0

    #@16
    .line 2926
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@19
    .line 2927
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Landroid/os/TransactionTracker;->clearTraces()V

    #@20
    .line 2925
    throw v0
.end method

.method private handleStopService(Landroid/os/IBinder;)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3323
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Landroid/app/Service;

    #@8
    .line 3324
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_2

    #@a
    .line 3327
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Service;->onDestroy()V

    #@d
    .line 3328
    invoke-virtual {v3}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    .line 3329
    .local v0, "context":Landroid/content/Context;
    instance-of v5, v0, Landroid/app/ContextImpl;

    #@13
    if-eqz v5, :cond_0

    #@15
    .line 3330
    invoke-virtual {v3}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    .line 3331
    .local v4, "who":Ljava/lang/String;
    check-cast v0, Landroid/app/ContextImpl;

    #@1b
    .end local v0    # "context":Landroid/content/Context;
    const-string/jumbo v5, "Service"

    #@1e
    invoke-virtual {v0, v4, v5}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 3334
    .end local v4    # "who":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@24
    .line 3337
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@27
    move-result-object v5

    #@28
    .line 3338
    const/4 v6, 0x2

    #@29
    const/4 v7, 0x0

    #@2a
    const/4 v8, 0x0

    #@2b
    .line 3337
    invoke-interface {v5, p1, v6, v7, v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@2e
    .line 3322
    :goto_0
    return-void

    #@2f
    .line 3339
    :catch_0
    move-exception v1

    #@30
    .line 3340
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@33
    move-result-object v5

    #@34
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@35
    .line 3342
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@36
    .line 3343
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@38
    invoke-virtual {v5, v3, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@3b
    move-result v5

    #@3c
    if-nez v5, :cond_1

    #@3e
    .line 3344
    new-instance v5, Ljava/lang/RuntimeException;

    #@40
    .line 3345
    new-instance v6, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v7, "Unable to stop service "

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    .line 3346
    const-string/jumbo v7, ": "

    #@53
    .line 3345
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    .line 3346
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    .line 3345
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    .line 3344
    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@66
    throw v5

    #@67
    .line 3348
    :cond_1
    const-string/jumbo v5, "ActivityThread"

    #@6a
    new-instance v6, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v7, "handleStopService: exception for "

    #@72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v6

    #@76
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@81
    goto :goto_0

    #@82
    .line 3351
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v5, "ActivityThread"

    #@85
    new-instance v6, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v7, "handleStopService: token="

    #@8d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v6

    #@91
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    const-string/jumbo v7, " not found."

    #@98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v6

    #@a0
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    goto :goto_0
.end method

.method private handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 9
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    #@0
    .prologue
    .line 3212
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
    .line 3213
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_0

    #@c
    .line 3215
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@e
    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@15
    .line 3216
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@17
    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@1a
    .line 3217
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@1c
    invoke-virtual {v3, v4}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@1f
    move-result v0

    #@20
    .line 3219
    .local v0, "doRebind":Z
    if-eqz v0, :cond_1

    #@22
    .line 3220
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@25
    move-result-object v4

    #@26
    .line 3221
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@28
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@2a
    .line 3220
    invoke-interface {v4, v5, v6, v0}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    #@2d
    .line 3211
    .end local v0    # "doRebind":Z
    :cond_0
    :goto_0
    return-void

    #@2e
    .line 3223
    .restart local v0    # "doRebind":Z
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@31
    move-result-object v4

    #@32
    .line 3224
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    #@34
    const/4 v6, 0x0

    #@35
    const/4 v7, 0x0

    #@36
    const/4 v8, 0x0

    #@37
    .line 3223
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@3a
    goto :goto_0

    #@3b
    .line 3226
    :catch_0
    move-exception v2

    #@3c
    .line 3227
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@3f
    move-result-object v4

    #@40
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@41
    .line 3229
    .end local v0    # "doRebind":Z
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@42
    .line 3230
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@44
    invoke-virtual {v4, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@47
    move-result v4

    #@48
    if-nez v4, :cond_0

    #@4a
    .line 3231
    new-instance v4, Ljava/lang/RuntimeException;

    #@4c
    .line 3232
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v6, "Unable to unbind to service "

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    .line 3233
    const-string/jumbo v6, " with "

    #@5f
    .line 3232
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    .line 3233
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    #@65
    .line 3232
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    .line 3233
    const-string/jumbo v6, ": "

    #@6c
    .line 3232
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    .line 3233
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    .line 3232
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    .line 3231
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7f
    throw v4
.end method

.method private handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 3
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    #@0
    .prologue
    .line 4026
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    #@6
    move-result-object v0

    #@7
    .line 4027
    .local v0, "apk":Landroid/app/LoadedApk;
    if-eqz v0, :cond_0

    #@9
    .line 4028
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    #@b
    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    #@e
    .line 4030
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    #@14
    move-result-object v0

    #@15
    .line 4031
    if-eqz v0, :cond_1

    #@17
    .line 4032
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    #@19
    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    #@1c
    .line 4034
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@1e
    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    #@20
    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    #@23
    .line 4035
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@29
    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    #@2c
    .line 4025
    return-void
.end method

.method private handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 3934
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    #@a
    .line 3936
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v1, :cond_0

    #@c
    .line 3937
    const-string/jumbo v0, "ActivityThread"

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
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 3938
    return-void

    #@27
    .line 3941
    :cond_0
    if-nez p2, :cond_1

    #@29
    iget-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@2b
    if-eqz v0, :cond_4

    #@2d
    .line 3943
    :cond_1
    if-eqz p2, :cond_2

    #@2f
    iget-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 3946
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@36
    .line 3948
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@38
    invoke-virtual {v0}, Landroid/app/Activity;->performRestart()V

    #@3b
    .line 3949
    iput-boolean v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@3d
    .line 3951
    :cond_2
    :goto_0
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@3f
    iget-object v0, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@41
    if-eqz v0, :cond_3

    #@43
    .line 3954
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    #@46
    .line 3956
    :cond_3
    const/4 v0, 0x1

    #@47
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@49
    .line 3933
    return-void

    #@4a
    .line 3942
    :cond_4
    const-string/jumbo v5, "handleWindowVisibility"

    #@4d
    move-object v0, p0

    #@4e
    move v3, p2

    #@4f
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZLjava/lang/String;)V

    #@52
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
    .line 5452
    if-eqz p2, :cond_2

    #@6
    .line 5453
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    #@8
    add-int/lit8 v2, v2, 0x1

    #@a
    iput v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    #@c
    .line 5454
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    #@e
    if-ne v2, v3, :cond_0

    #@10
    .line 5457
    iget-boolean v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 5461
    const/4 v1, -0x1

    #@15
    .line 5467
    .local v1, "unstableDelta":I
    iput-boolean v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@17
    .line 5470
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@19
    invoke-virtual {v2, v5, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    #@1c
    .line 5480
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1f
    move-result-object v2

    #@20
    .line 5481
    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@22
    iget-object v3, v3, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@24
    const/4 v4, 0x1

    #@25
    .line 5480
    invoke-interface {v2, v3, v4, v1}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@28
    .line 5451
    .end local v1    # "unstableDelta":I
    :cond_0
    :goto_1
    return-void

    #@29
    .line 5472
    :cond_1
    const/4 v1, 0x0

    #@2a
    .restart local v1    # "unstableDelta":I
    goto :goto_0

    #@2b
    .line 5487
    .end local v1    # "unstableDelta":I
    :cond_2
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    #@2d
    add-int/lit8 v2, v2, 0x1

    #@2f
    iput v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    #@31
    .line 5488
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    #@33
    if-ne v2, v3, :cond_0

    #@35
    .line 5490
    iget-boolean v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@37
    if-eqz v2, :cond_3

    #@39
    .line 5499
    iput-boolean v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@3b
    .line 5500
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@3d
    invoke-virtual {v2, v5, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    #@40
    goto :goto_1

    #@41
    .line 5509
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@44
    move-result-object v2

    #@45
    .line 5510
    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@47
    iget-object v3, v3, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@49
    const/4 v4, 0x0

    #@4a
    const/4 v5, 0x1

    #@4b
    .line 5509
    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@4e
    goto :goto_1

    #@4f
    .line 5511
    :catch_0
    move-exception v0

    #@50
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@51
    .line 5482
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
    .line 5392
    new-instance v10, Ljava/util/ArrayList;

    #@4
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 5394
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
    .line 5404
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v4, 0x0

    #@18
    move-object v0, p0

    #@19
    move-object v1, p1

    #@1a
    move v6, v5

    #@1b
    .line 5403
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    #@1e
    move-result-object v7

    #@1f
    .line 5405
    .local v7, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v7, :cond_0

    #@21
    .line 5406
    iput-boolean v5, v7, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    #@23
    .line 5407
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_0

    #@27
    .line 5412
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@2a
    move-result-object v0

    #@2b
    .line 5413
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@2e
    move-result-object v1

    #@2f
    .line 5412
    invoke-interface {v0, v1, v10}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 5390
    return-void

    #@33
    .line 5414
    :catch_0
    move-exception v9

    #@34
    .line 5415
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@37
    move-result-object v0

    #@38
    throw v0
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
    .line 5768
    const/4 v13, 0x0

    #@1
    .line 5770
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
    .line 5771
    :cond_0
    if-eqz p4, :cond_1

    #@d
    .line 5772
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
    .line 5773
    move-object/from16 v0, p3

    #@2f
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@31
    move-object/from16 v20, v0

    #@33
    .line 5772
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
    .line 5775
    :cond_1
    const/4 v4, 0x0

    #@3f
    .line 5776
    .local v4, "c":Landroid/content/Context;
    move-object/from16 v0, p3

    #@41
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@43
    .line 5777
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
    .line 5778
    move-object/from16 v4, p1

    #@53
    .line 5790
    .end local v4    # "c":Landroid/content/Context;
    :goto_0
    if-nez v4, :cond_4

    #@55
    .line 5791
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
    .line 5792
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@66
    move-object/from16 v20, v0

    #@68
    .line 5791
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v19

    #@6c
    .line 5793
    const-string/jumbo v20, " while loading content provider "

    #@6f
    .line 5791
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v19

    #@73
    .line 5794
    move-object/from16 v0, p3

    #@75
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@77
    move-object/from16 v20, v0

    #@79
    .line 5791
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
    .line 5795
    const/16 v18, 0x0

    #@86
    return-object v18

    #@87
    .line 5779
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
    .line 5780
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
    .line 5779
    if-eqz v18, :cond_3

    #@a3
    .line 5781
    move-object/from16 v0, p0

    #@a5
    iget-object v4, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@a7
    .local v4, "c":Landroid/content/Context;
    goto :goto_0

    #@a8
    .line 5784
    .local v4, "c":Landroid/content/Context;
    :cond_3
    :try_start_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@aa
    move-object/from16 v18, v0

    #@ac
    .line 5785
    const/16 v19, 0x1

    #@ae
    .line 5784
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
    .line 5798
    .end local v4    # "c":Landroid/content/Context;
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@bc
    move-result-object v5

    #@bd
    .line 5800
    .local v5, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p3

    #@bf
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@c1
    move-object/from16 v18, v0

    #@c3
    .line 5799
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
    .line 5801
    .local v13, "localProvider":Landroid/content/ContentProvider;
    invoke-virtual {v13}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    #@d5
    move-result-object v16

    #@d6
    .line 5802
    .local v16, "provider":Landroid/content/IContentProvider;
    if-nez v16, :cond_5

    #@d8
    .line 5803
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
    .line 5804
    move-object/from16 v0, p3

    #@e9
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@eb
    move-object/from16 v20, v0

    #@ed
    .line 5803
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v19

    #@f1
    .line 5804
    const-string/jumbo v20, " from sourceDir "

    #@f4
    .line 5803
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v19

    #@f8
    .line 5805
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
    .line 5803
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
    .line 5806
    const/16 v18, 0x0

    #@111
    return-object v18

    #@112
    .line 5811
    :cond_5
    move-object/from16 v0, p3

    #@114
    invoke-virtual {v13, v4, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@117
    .line 5828
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
    .line 5831
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@121
    move-result-object v12

    #@122
    .line 5832
    .local v12, "jBinder":Landroid/os/IBinder;
    if-eqz v13, :cond_9

    #@124
    .line 5833
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
    .line 5834
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
    .line 5835
    .local v14, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v14, :cond_8

    #@149
    .line 5840
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    #@14b
    move-object/from16 v16, v0

    #@14d
    .line 5849
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
    .line 5885
    return-object v17

    #@153
    .line 5812
    .end local v12    # "jBinder":Landroid/os/IBinder;
    .end local v16    # "provider":Landroid/content/IContentProvider;
    .end local v17    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v10

    #@154
    .line 5813
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
    .line 5814
    new-instance v18, Ljava/lang/RuntimeException;

    #@168
    .line 5815
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
    .line 5816
    const-string/jumbo v20, ": "

    #@181
    .line 5815
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v19

    #@185
    .line 5816
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@188
    move-result-object v20

    #@189
    .line 5815
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v19

    #@18d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object v19

    #@191
    .line 5814
    move-object/from16 v0, v18

    #@193
    move-object/from16 v1, v19

    #@195
    invoke-direct {v0, v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@198
    throw v18

    #@199
    .line 5818
    :cond_6
    const/16 v18, 0x0

    #@19b
    return-object v18

    #@19c
    .line 5821
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
    .line 5842
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
    .line 5843
    .end local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .local v11, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_4
    move-object/from16 v0, v16

    #@1ad
    iput-object v0, v11, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@1af
    .line 5844
    const/16 v18, 0x1

    #@1b1
    move/from16 v0, v18

    #@1b3
    iput-boolean v0, v11, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    #@1b5
    .line 5845
    move-object/from16 v0, p0

    #@1b7
    move-object/from16 v1, v16

    #@1b9
    invoke-direct {v0, v1, v13, v11}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    #@1bc
    move-result-object v14

    #@1bd
    .line 5846
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
    .line 5847
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
    .line 5851
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
    .line 5852
    .local v15, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v15, :cond_b

    #@1e7
    .line 5860
    if-nez p5, :cond_a

    #@1e9
    .line 5861
    move-object/from16 v0, p0

    #@1eb
    move/from16 v1, p6

    #@1ed
    invoke-direct {v0, v15, v1}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1f0
    .line 5863
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@1f3
    move-result-object v18

    #@1f4
    .line 5864
    move-object/from16 v0, p2

    #@1f6
    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@1f8
    move-object/from16 v20, v0

    #@1fa
    .line 5863
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
    .line 5881
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
    .line 5870
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
    .line 5872
    .local v6, "client":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz p5, :cond_c

    #@215
    .line 5873
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
    .line 5879
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
    .line 5828
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
    .line 5875
    .restart local v6    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v12    # "jBinder":Landroid/os/IBinder;
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :cond_c
    if-eqz p6, :cond_d

    #@235
    .line 5876
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
    .line 5877
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
    .line 5828
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
    .line 5865
    .end local v7    # "cname":Landroid/content/ComponentName;
    .end local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catch_1
    move-exception v9

    #@25a
    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_4

    #@25b
    .line 5786
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
    .line 5733
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
    .line 5734
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
    .line 5736
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
    .line 5738
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
    .line 5739
    .local v6, "auth":Ljava/lang/String;
    new-instance v8, Landroid/app/ActivityThread$ProviderKey;

    #@26
    invoke-direct {v8, v6, v9}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    #@29
    .line 5740
    .local v8, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@2b
    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v7

    #@2f
    check-cast v7, Landroid/app/ActivityThread$ProviderClientRecord;

    #@31
    .line 5741
    .local v7, "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v7, :cond_0

    #@33
    .line 5742
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
    .line 5743
    const-string/jumbo v10, " already published as "

    #@4f
    .line 5742
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
    .line 5738
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@60
    goto :goto_0

    #@61
    .line 5745
    :cond_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@63
    invoke-virtual {v4, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    goto :goto_1

    #@67
    .line 5748
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
    .line 1787
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
    .line 6042
    const-string/jumbo v2, "ActivityThreadMain"

    #@7
    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@a
    .line 6043
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    #@d
    .line 6048
    invoke-static {v3}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    #@10
    .line 6050
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    #@13
    .line 6053
    new-instance v2, Landroid/app/ActivityThread$EventLoggingReporter;

    #@15
    invoke-direct {v2, v4}, Landroid/app/ActivityThread$EventLoggingReporter;-><init>(Landroid/app/ActivityThread$EventLoggingReporter;)V

    #@18
    invoke-static {v2}, Llibcore/io/EventLogger;->setReporter(Llibcore/io/EventLogger$Reporter;)V

    #@1b
    .line 6056
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@1e
    move-result v2

    #@1f
    invoke-static {v2}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    #@22
    move-result-object v0

    #@23
    .line 6057
    .local v0, "configDir":Ljava/io/File;
    invoke-static {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    #@26
    .line 6059
    const-string/jumbo v2, "<pre-initialized>"

    #@29
    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    #@2c
    .line 6061
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    #@2f
    .line 6063
    new-instance v1, Landroid/app/ActivityThread;

    #@31
    invoke-direct {v1}, Landroid/app/ActivityThread;-><init>()V

    #@34
    .line 6064
    .local v1, "thread":Landroid/app/ActivityThread;
    invoke-direct {v1, v3}, Landroid/app/ActivityThread;->attach(Z)V

    #@37
    .line 6066
    sget-object v2, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    #@39
    if-nez v2, :cond_0

    #@3b
    .line 6067
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@3e
    move-result-object v2

    #@3f
    sput-object v2, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    #@41
    .line 6076
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@44
    .line 6077
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@47
    .line 6079
    new-instance v2, Ljava/lang/RuntimeException;

    #@49
    const-string/jumbo v3, "Main thread loop unexpectedly exited"

    #@4c
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v2
.end method

.method private onCoreSettingsChange()V
    .locals 13

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 4013
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
    const/4 v10, 0x1

    #@e
    .line 4014
    .local v10, "debugViewAttributes":Z
    :goto_0
    sget-boolean v0, Landroid/view/View;->mDebugViewAttributes:Z

    #@10
    if-eq v10, v0, :cond_1

    #@12
    .line 4015
    sput-boolean v10, Landroid/view/View;->mDebugViewAttributes:Z

    #@14
    .line 4018
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v12

    #@1e
    .local v12, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v11

    #@28
    check-cast v11, Ljava/util/Map$Entry;

    #@2a
    .line 4019
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

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
    move v9, v4

    #@37
    invoke-virtual/range {v0 .. v9}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZZ)V

    #@3a
    goto :goto_1

    #@3b
    .line 4013
    .end local v10    # "debugViewAttributes":Z
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    .end local v12    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v10, 0x0

    #@3c
    .restart local v10    # "debugViewAttributes":Z
    goto :goto_0

    #@3d
    .line 4011
    :cond_1
    return-void
.end method

.method private performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V
    .locals 10
    .param p1, "cb"    # Landroid/content/ComponentCallbacks2;
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;
    .param p4, "amOverrideConfig"    # Landroid/content/res/Configuration;
    .param p5, "reportToActivity"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 4618
    instance-of v7, p1, Landroid/app/Activity;

    #@4
    if-eqz v7, :cond_0

    #@6
    move-object v7, p1

    #@7
    check-cast v7, Landroid/app/Activity;

    #@9
    move-object v0, v7

    #@a
    .line 4619
    .local v0, "activity":Landroid/app/Activity;
    :cond_0
    if-eqz v0, :cond_1

    #@c
    .line 4620
    iput-boolean v8, v0, Landroid/app/Activity;->mCalled:Z

    #@e
    .line 4623
    :cond_1
    const/4 v6, 0x0

    #@f
    .line 4624
    .local v6, "shouldChangeConfig":Z
    if-eqz v0, :cond_2

    #@11
    iget-object v7, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@13
    if-nez v7, :cond_9

    #@15
    .line 4625
    :cond_2
    const/4 v6, 0x1

    #@16
    .line 4636
    :cond_3
    :goto_0
    if-eqz v6, :cond_8

    #@18
    .line 4641
    const/4 v3, 0x0

    #@19
    .line 4642
    .local v3, "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    instance-of v7, p1, Landroid/view/ContextThemeWrapper;

    #@1b
    if-eqz v7, :cond_4

    #@1d
    move-object v2, p1

    #@1e
    .line 4643
    check-cast v2, Landroid/view/ContextThemeWrapper;

    #@20
    .line 4644
    .local v2, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getOverrideConfiguration()Landroid/content/res/Configuration;

    #@23
    move-result-object v3

    #@24
    .line 4651
    .end local v2    # "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    .end local v3    # "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    :cond_4
    if-eqz p2, :cond_5

    #@26
    .line 4655
    invoke-static {p4, v3}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    #@29
    move-result-object v5

    #@2a
    .line 4657
    .local v5, "finalOverrideConfig":Landroid/content/res/Configuration;
    iget-object v7, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@2c
    invoke-virtual {v7, p2, v5}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    #@2f
    .line 4660
    .end local v5    # "finalOverrideConfig":Landroid/content/res/Configuration;
    :cond_5
    if-eqz p5, :cond_6

    #@31
    .line 4664
    invoke-static {p3, v3}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    #@34
    move-result-object v1

    #@35
    .line 4666
    .local v1, "configToReport":Landroid/content/res/Configuration;
    invoke-interface {p1, v1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@38
    .line 4669
    .end local v1    # "configToReport":Landroid/content/res/Configuration;
    :cond_6
    if-eqz v0, :cond_8

    #@3a
    .line 4670
    if-eqz p5, :cond_7

    #@3c
    iget-boolean v7, v0, Landroid/app/Activity;->mCalled:Z

    #@3e
    if-eqz v7, :cond_a

    #@40
    .line 4675
    :cond_7
    iput v8, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    #@42
    .line 4676
    new-instance v7, Landroid/content/res/Configuration;

    #@44
    invoke-direct {v7, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@47
    iput-object v7, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@49
    .line 4614
    :cond_8
    return-void

    #@4a
    .line 4630
    :cond_9
    iget-object v7, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@4c
    invoke-virtual {v7, p3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@4f
    move-result v4

    #@50
    .line 4631
    .local v4, "diff":I
    if-eqz v4, :cond_3

    #@52
    .line 4632
    const/4 v6, 0x1

    #@53
    goto :goto_0

    #@54
    .line 4671
    .end local v4    # "diff":I
    :cond_a
    new-instance v7, Landroid/util/SuperNotCalledException;

    #@56
    .line 4672
    new-instance v8, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v9, "Activity "

    #@5e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v8

    #@6a
    .line 4673
    const-string/jumbo v9, " did not call through to super.onConfigurationChanged()"

    #@6d
    .line 4672
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v8

    #@71
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    .line 4671
    invoke-direct {v7, v8}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@78
    throw v7
.end method

.method private performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Z)V
    .locals 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "newBaseConfig"    # Landroid/content/res/Configuration;
    .param p3, "reportToActivity"    # Z

    #@0
    .prologue
    .line 4573
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@7
    .line 4574
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 4575
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@11
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@14
    .line 4577
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@16
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@18
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@1b
    move-result-object v3

    #@1c
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@1e
    move-object v0, p0

    #@1f
    move v5, p3

    #@20
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    #@23
    .line 4579
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@25
    iget-object v0, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    #@27
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@2e
    move-result v0

    #@2f
    invoke-static {v0}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    #@32
    .line 4572
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
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 4110
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    #@a
    .line 4111
    .local v3, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v0, 0x0

    #@b
    .line 4113
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v3, :cond_5

    #@d
    .line 4114
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@f
    invoke-virtual {v4}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@12
    move-result-object v0

    #@13
    .line 4115
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@15
    iget v5, v4, Landroid/app/Activity;->mConfigChangeFlags:I

    #@17
    or-int/2addr v5, p3

    #@18
    iput v5, v4, Landroid/app/Activity;->mConfigChangeFlags:I

    #@1a
    .line 4116
    if-eqz p2, :cond_0

    #@1c
    .line 4117
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1e
    iput-boolean v6, v4, Landroid/app/Activity;->mFinished:Z

    #@20
    .line 4120
    :cond_0
    const-string/jumbo v4, "destroy"

    #@23
    invoke-direct {p0, v3, v4}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    #@26
    .line 4122
    iget-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@28
    if-nez v4, :cond_2

    #@2a
    .line 4124
    :try_start_0
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@2c
    iget-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    #@2e
    invoke-virtual {v4, v5}, Landroid/app/Activity;->performStop(Z)V
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@31
    .line 4135
    :cond_1
    iput-boolean v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@33
    .line 4136
    const/4 v4, 0x3

    #@34
    new-array v4, v4, [Ljava/lang/Object;

    #@36
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@39
    move-result v5

    #@3a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v5

    #@3e
    aput-object v5, v4, v7

    #@40
    .line 4137
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@42
    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    aput-object v5, v4, v6

    #@4c
    const-string/jumbo v5, "destroy"

    #@4f
    const/4 v6, 0x2

    #@50
    aput-object v5, v4, v6

    #@52
    .line 4136
    const/16 v5, 0x7561

    #@54
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@57
    .line 4139
    :cond_2
    if-eqz p4, :cond_3

    #@59
    .line 4142
    :try_start_1
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@5b
    invoke-virtual {v4}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    #@5e
    move-result-object v4

    #@5f
    .line 4141
    iput-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    #@61
    .line 4153
    :cond_3
    :try_start_2
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@63
    const/4 v5, 0x0

    #@64
    iput-boolean v5, v4, Landroid/app/Activity;->mCalled:Z

    #@66
    .line 4154
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@68
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@6a
    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    #@6d
    .line 4155
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@6f
    iget-boolean v4, v4, Landroid/app/Activity;->mCalled:Z

    #@71
    if-nez v4, :cond_4

    #@73
    .line 4156
    new-instance v4, Landroid/util/SuperNotCalledException;

    #@75
    .line 4157
    new-instance v5, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v6, "Activity "

    #@7d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@83
    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    .line 4158
    const-string/jumbo v6, " did not call through to super.onDestroy()"

    #@8e
    .line 4157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    .line 4156
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@99
    throw v4
    :try_end_2
    .catch Landroid/util/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    #@9a
    .line 4163
    :catch_0
    move-exception v1

    #@9b
    .line 4164
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    #@9c
    .line 4127
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v2

    #@9d
    .line 4128
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@9f
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@a1
    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@a4
    move-result v4

    #@a5
    if-nez v4, :cond_1

    #@a7
    .line 4129
    new-instance v4, Ljava/lang/RuntimeException;

    #@a9
    .line 4130
    new-instance v5, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v6, "Unable to stop activity "

    #@b1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v5

    #@b5
    .line 4131
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@b7
    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    #@ba
    move-result-object v6

    #@bb
    .line 4130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v5

    #@bf
    .line 4132
    const-string/jumbo v6, ": "

    #@c2
    .line 4130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v5

    #@c6
    .line 4132
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@c9
    move-result-object v6

    #@ca
    .line 4130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v5

    #@ce
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v5

    #@d2
    .line 4129
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d5
    throw v4

    #@d6
    .line 4125
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    #@d7
    .line 4126
    .restart local v1    # "e":Landroid/util/SuperNotCalledException;
    throw v1

    #@d8
    .line 4143
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_3
    move-exception v2

    #@d9
    .line 4144
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@db
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@dd
    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@e0
    move-result v4

    #@e1
    if-nez v4, :cond_3

    #@e3
    .line 4145
    new-instance v4, Ljava/lang/RuntimeException;

    #@e5
    .line 4146
    new-instance v5, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v6, "Unable to retain activity "

    #@ed
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v5

    #@f1
    .line 4147
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@f3
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@f6
    move-result-object v6

    #@f7
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@fa
    move-result-object v6

    #@fb
    .line 4146
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v5

    #@ff
    .line 4148
    const-string/jumbo v6, ": "

    #@102
    .line 4146
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v5

    #@106
    .line 4148
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@109
    move-result-object v6

    #@10a
    .line 4146
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v5

    #@10e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v5

    #@112
    .line 4145
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@115
    throw v4

    #@116
    .line 4160
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@118
    if-eqz v4, :cond_5

    #@11a
    .line 4161
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@11c
    invoke-virtual {v4}, Landroid/view/Window;->closeAllPanels()V
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    #@11f
    .line 4173
    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_5
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@121
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@124
    .line 4174
    invoke-static {v0}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    #@127
    .line 4175
    return-object v3

    #@128
    .line 4165
    .restart local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :catch_4
    move-exception v2

    #@129
    .line 4166
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@12b
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@12d
    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@130
    move-result v4

    #@131
    if-nez v4, :cond_5

    #@133
    .line 4167
    new-instance v4, Ljava/lang/RuntimeException;

    #@135
    .line 4168
    new-instance v5, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v6, "Unable to destroy activity "

    #@13d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v5

    #@141
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@143
    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    #@146
    move-result-object v6

    #@147
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v5

    #@14b
    .line 4169
    const-string/jumbo v6, ": "

    #@14e
    .line 4168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v5

    #@152
    .line 4169
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@155
    move-result-object v6

    #@156
    .line 4168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v5

    #@15a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v5

    #@15e
    .line 4167
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@161
    throw v4
.end method

.method private performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 25
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2517
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4
    move-object/from16 v19, v0

    #@6
    .line 2518
    .local v19, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    #@8
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@a
    if-nez v4, :cond_0

    #@c
    .line 2519
    move-object/from16 v0, v19

    #@e
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@10
    move-object/from16 v0, p1

    #@12
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    #@14
    .line 2520
    const/4 v6, 0x1

    #@15
    .line 2519
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
    .line 2523
    :cond_0
    move-object/from16 v0, p1

    #@21
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@23
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@26
    move-result-object v21

    #@27
    .line 2524
    .local v21, "component":Landroid/content/ComponentName;
    if-nez v21, :cond_1

    #@29
    .line 2525
    move-object/from16 v0, p1

    #@2b
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@2d
    .line 2526
    move-object/from16 v0, p0

    #@2f
    iget-object v5, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@31
    invoke-virtual {v5}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@34
    move-result-object v5

    #@35
    .line 2525
    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@38
    move-result-object v21

    #@39
    .line 2527
    move-object/from16 v0, p1

    #@3b
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@3d
    move-object/from16 v0, v21

    #@3f
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@42
    .line 2530
    :cond_1
    move-object/from16 v0, p1

    #@44
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@46
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@48
    if-eqz v4, :cond_2

    #@4a
    .line 2531
    new-instance v21, Landroid/content/ComponentName;

    #@4c
    .end local v21    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    #@4e
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@50
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@52
    .line 2532
    move-object/from16 v0, p1

    #@54
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@56
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@58
    .line 2531
    move-object/from16 v0, v21

    #@5a
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    .line 2535
    .restart local v21    # "component":Landroid/content/ComponentName;
    :cond_2
    const/4 v2, 0x0

    #@5e
    .line 2537
    .local v2, "activity":Landroid/app/Activity;
    :try_start_0
    move-object/from16 v0, p1

    #@60
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@62
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@65
    move-result-object v20

    #@66
    .line 2538
    .local v20, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    #@68
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@6a
    .line 2539
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    move-object/from16 v0, p1

    #@70
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@72
    .line 2538
    move-object/from16 v0, v20

    #@74
    invoke-virtual {v4, v0, v5, v6}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    #@77
    move-result-object v2

    #@78
    .line 2540
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@7b
    move-result-object v4

    #@7c
    invoke-static {v4}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    #@7f
    .line 2541
    move-object/from16 v0, p1

    #@81
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@83
    move-object/from16 v0, v20

    #@85
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@88
    .line 2542
    move-object/from16 v0, p1

    #@8a
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@8c
    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@8f
    .line 2543
    move-object/from16 v0, p1

    #@91
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@93
    if-eqz v4, :cond_3

    #@95
    .line 2544
    move-object/from16 v0, p1

    #@97
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@99
    move-object/from16 v0, v20

    #@9b
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@9e
    .line 2555
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v20    # "cl":Ljava/lang/ClassLoader;
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
    .line 2565
    .local v8, "app":Landroid/app/Application;
    if-eqz v2, :cond_f

    #@ad
    .line 2566
    move-object/from16 v0, p0

    #@af
    move-object/from16 v1, p1

    #@b1
    invoke-direct {v0, v1, v2}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/Activity;)Landroid/content/Context;

    #@b4
    move-result-object v3

    #@b5
    .line 2567
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
    .line 2568
    .local v11, "title":Ljava/lang/CharSequence;
    new-instance v15, Landroid/content/res/Configuration;

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget-object v4, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@c7
    invoke-direct {v15, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@ca
    .line 2569
    .local v15, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p1

    #@cc
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@ce
    if-eqz v4, :cond_4

    #@d0
    .line 2570
    move-object/from16 v0, p1

    #@d2
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@d4
    invoke-virtual {v15, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@d7
    .line 2574
    :cond_4
    const/16 v18, 0x0

    #@d9
    .line 2575
    .local v18, "window":Landroid/view/Window;
    move-object/from16 v0, p1

    #@db
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    #@dd
    if-eqz v4, :cond_5

    #@df
    move-object/from16 v0, p1

    #@e1
    iget-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    #@e3
    if-eqz v4, :cond_5

    #@e5
    .line 2576
    move-object/from16 v0, p1

    #@e7
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    #@e9
    move-object/from16 v18, v0

    #@eb
    .line 2577
    .local v18, "window":Landroid/view/Window;
    const/4 v4, 0x0

    #@ec
    move-object/from16 v0, p1

    #@ee
    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    #@f0
    .line 2578
    const/4 v4, 0x0

    #@f1
    move-object/from16 v0, p1

    #@f3
    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    #@f5
    .line 2580
    .end local v18    # "window":Landroid/view/Window;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    #@f8
    move-result-object v5

    #@f9
    move-object/from16 v0, p1

    #@fb
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@fd
    .line 2581
    move-object/from16 v0, p1

    #@ff
    iget v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    #@101
    move-object/from16 v0, p1

    #@103
    iget-object v9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@105
    move-object/from16 v0, p1

    #@107
    iget-object v10, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@109
    move-object/from16 v0, p1

    #@10b
    iget-object v12, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    #@10d
    .line 2582
    move-object/from16 v0, p1

    #@10f
    iget-object v13, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    #@111
    move-object/from16 v0, p1

    #@113
    iget-object v14, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@115
    .line 2583
    move-object/from16 v0, p1

    #@117
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    #@119
    move-object/from16 v16, v0

    #@11b
    move-object/from16 v0, p1

    #@11d
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@11f
    move-object/from16 v17, v0

    #@121
    move-object/from16 v4, p0

    #@123
    .line 2580
    invoke-virtual/range {v2 .. v18}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;)V

    #@126
    .line 2585
    if-eqz p2, :cond_6

    #@128
    .line 2586
    move-object/from16 v0, p2

    #@12a
    iput-object v0, v2, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    #@12c
    .line 2588
    :cond_6
    const/4 v4, 0x0

    #@12d
    move-object/from16 v0, p1

    #@12f
    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@131
    .line 2589
    const/4 v4, 0x0

    #@132
    iput-boolean v4, v2, Landroid/app/Activity;->mStartedActivity:Z

    #@134
    .line 2590
    move-object/from16 v0, p1

    #@136
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@138
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    #@13b
    move-result v24

    #@13c
    .line 2591
    .local v24, "theme":I
    if-eqz v24, :cond_7

    #@13e
    .line 2592
    move/from16 v0, v24

    #@140
    invoke-virtual {v2, v0}, Landroid/app/Activity;->setTheme(I)V

    #@143
    .line 2595
    :cond_7
    const/4 v4, 0x0

    #@144
    iput-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    #@146
    .line 2596
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    #@149
    move-result v4

    #@14a
    if-eqz v4, :cond_8

    #@14c
    .line 2597
    move-object/from16 v0, p0

    #@14e
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@150
    move-object/from16 v0, p1

    #@152
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@154
    move-object/from16 v0, p1

    #@156
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@158
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@15b
    .line 2601
    :goto_0
    iget-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    #@15d
    if-nez v4, :cond_9

    #@15f
    .line 2602
    new-instance v4, Landroid/util/SuperNotCalledException;

    #@161
    .line 2603
    new-instance v5, Ljava/lang/StringBuilder;

    #@163
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@166
    const-string/jumbo v6, "Activity "

    #@169
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v5

    #@16d
    move-object/from16 v0, p1

    #@16f
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@171
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@174
    move-result-object v6

    #@175
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@178
    move-result-object v6

    #@179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v5

    #@17d
    .line 2604
    const-string/jumbo v6, " did not call through to super.onCreate()"

    #@180
    .line 2603
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v5

    #@184
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@187
    move-result-object v5

    #@188
    .line 2602
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@18b
    throw v4
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@18c
    .line 2641
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v8    # "app":Landroid/app/Application;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v24    # "theme":I
    :catch_0
    move-exception v22

    #@18d
    .line 2642
    .local v22, "e":Landroid/util/SuperNotCalledException;
    throw v22

    #@18e
    .line 2546
    .end local v22    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v23

    #@18f
    .line 2547
    .local v23, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@191
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@193
    move-object/from16 v0, v23

    #@195
    invoke-virtual {v4, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@198
    move-result v4

    #@199
    if-nez v4, :cond_3

    #@19b
    .line 2548
    new-instance v4, Ljava/lang/RuntimeException;

    #@19d
    .line 2549
    new-instance v5, Ljava/lang/StringBuilder;

    #@19f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a2
    const-string/jumbo v6, "Unable to instantiate activity "

    #@1a5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v5

    #@1a9
    move-object/from16 v0, v21

    #@1ab
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v5

    #@1af
    .line 2550
    const-string/jumbo v6, ": "

    #@1b2
    .line 2549
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v5

    #@1b6
    .line 2550
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@1b9
    move-result-object v6

    #@1ba
    .line 2549
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v5

    #@1be
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c1
    move-result-object v5

    #@1c2
    .line 2548
    move-object/from16 v0, v23

    #@1c4
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1c7
    throw v4

    #@1c8
    .line 2599
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v3    # "appContext":Landroid/content/Context;
    .restart local v8    # "app":Landroid/app/Application;
    .restart local v11    # "title":Ljava/lang/CharSequence;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v24    # "theme":I
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    #@1ca
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@1cc
    move-object/from16 v0, p1

    #@1ce
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@1d0
    invoke-virtual {v4, v2, v5}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/util/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@1d3
    goto :goto_0

    #@1d4
    .line 2644
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v8    # "app":Landroid/app/Application;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v24    # "theme":I
    :catch_2
    move-exception v23

    #@1d5
    .line 2645
    .restart local v23    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@1d7
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@1d9
    move-object/from16 v0, v23

    #@1db
    invoke-virtual {v4, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@1de
    move-result v4

    #@1df
    if-nez v4, :cond_10

    #@1e1
    .line 2646
    new-instance v4, Ljava/lang/RuntimeException;

    #@1e3
    .line 2647
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1e8
    const-string/jumbo v6, "Unable to start activity "

    #@1eb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v5

    #@1ef
    move-object/from16 v0, v21

    #@1f1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v5

    #@1f5
    .line 2648
    const-string/jumbo v6, ": "

    #@1f8
    .line 2647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v5

    #@1fc
    .line 2648
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@1ff
    move-result-object v6

    #@200
    .line 2647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@203
    move-result-object v5

    #@204
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@207
    move-result-object v5

    #@208
    .line 2646
    move-object/from16 v0, v23

    #@20a
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@20d
    throw v4

    #@20e
    .line 2606
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v3    # "appContext":Landroid/content/Context;
    .restart local v8    # "app":Landroid/app/Application;
    .restart local v11    # "title":Ljava/lang/CharSequence;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v24    # "theme":I
    :cond_9
    :try_start_3
    move-object/from16 v0, p1

    #@210
    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@212
    .line 2607
    const/4 v4, 0x1

    #@213
    move-object/from16 v0, p1

    #@215
    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@217
    .line 2608
    move-object/from16 v0, p1

    #@219
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@21b
    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    #@21d
    if-nez v4, :cond_a

    #@21f
    .line 2609
    invoke-virtual {v2}, Landroid/app/Activity;->performStart()V

    #@222
    .line 2610
    const/4 v4, 0x0

    #@223
    move-object/from16 v0, p1

    #@225
    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@227
    .line 2612
    :cond_a
    move-object/from16 v0, p1

    #@229
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@22b
    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    #@22d
    if-nez v4, :cond_c

    #@22f
    .line 2613
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    #@232
    move-result v4

    #@233
    if-eqz v4, :cond_d

    #@235
    .line 2614
    move-object/from16 v0, p1

    #@237
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@239
    if-nez v4, :cond_b

    #@23b
    move-object/from16 v0, p1

    #@23d
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@23f
    if-eqz v4, :cond_c

    #@241
    .line 2615
    :cond_b
    move-object/from16 v0, p0

    #@243
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@245
    move-object/from16 v0, p1

    #@247
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@249
    .line 2616
    move-object/from16 v0, p1

    #@24b
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@24d
    .line 2615
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@250
    .line 2622
    :cond_c
    :goto_1
    move-object/from16 v0, p1

    #@252
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@254
    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    #@256
    if-nez v4, :cond_f

    #@258
    .line 2623
    const/4 v4, 0x0

    #@259
    iput-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    #@25b
    .line 2624
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    #@25e
    move-result v4

    #@25f
    if-eqz v4, :cond_e

    #@261
    .line 2625
    move-object/from16 v0, p0

    #@263
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@265
    move-object/from16 v0, p1

    #@267
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@269
    .line 2626
    move-object/from16 v0, p1

    #@26b
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    #@26d
    .line 2625
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    #@270
    .line 2630
    :goto_2
    iget-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    #@272
    if-nez v4, :cond_f

    #@274
    .line 2631
    new-instance v4, Landroid/util/SuperNotCalledException;

    #@276
    .line 2632
    new-instance v5, Ljava/lang/StringBuilder;

    #@278
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27b
    const-string/jumbo v6, "Activity "

    #@27e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v5

    #@282
    move-object/from16 v0, p1

    #@284
    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@286
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@289
    move-result-object v6

    #@28a
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@28d
    move-result-object v6

    #@28e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@291
    move-result-object v5

    #@292
    .line 2633
    const-string/jumbo v6, " did not call through to super.onPostCreate()"

    #@295
    .line 2632
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@298
    move-result-object v5

    #@299
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29c
    move-result-object v5

    #@29d
    .line 2631
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@2a0
    throw v4

    #@2a1
    .line 2618
    :cond_d
    move-object/from16 v0, p1

    #@2a3
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@2a5
    if-eqz v4, :cond_c

    #@2a7
    .line 2619
    move-object/from16 v0, p0

    #@2a9
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@2ab
    move-object/from16 v0, p1

    #@2ad
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@2af
    invoke-virtual {v4, v2, v5}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@2b2
    goto :goto_1

    #@2b3
    .line 2628
    :cond_e
    move-object/from16 v0, p0

    #@2b5
    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@2b7
    move-object/from16 v0, p1

    #@2b9
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@2bb
    invoke-virtual {v4, v2, v5}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@2be
    goto :goto_2

    #@2bf
    .line 2637
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v24    # "theme":I
    :cond_f
    const/4 v4, 0x1

    #@2c0
    move-object/from16 v0, p1

    #@2c2
    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@2c4
    .line 2639
    move-object/from16 v0, p0

    #@2c6
    iget-object v4, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2c8
    move-object/from16 v0, p1

    #@2ca
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@2cc
    move-object/from16 v0, p1

    #@2ce
    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    #@2d1
    .line 2652
    .end local v8    # "app":Landroid/app/Application;
    :cond_10
    return-object v2
.end method

.method private performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 3704
    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 3706
    return-void

    #@6
    .line 3710
    :cond_0
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@8
    const/4 v3, 0x0

    #@9
    iput-boolean v3, v2, Landroid/app/Activity;->mCalled:Z

    #@b
    .line 3711
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@d
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@f
    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    #@12
    .line 3712
    const/4 v2, 0x3

    #@13
    new-array v2, v2, [Ljava/lang/Object;

    #@15
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@18
    move-result v3

    #@19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v3

    #@1d
    const/4 v4, 0x0

    #@1e
    aput-object v3, v2, v4

    #@20
    .line 3713
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@22
    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    const/4 v4, 0x1

    #@2b
    aput-object v3, v2, v4

    #@2d
    const/4 v3, 0x2

    #@2e
    aput-object p2, v2, v3

    #@30
    .line 3712
    const/16 v3, 0x7545

    #@32
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@35
    .line 3714
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@37
    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    #@39
    if-nez v2, :cond_1

    #@3b
    .line 3715
    new-instance v2, Landroid/util/SuperNotCalledException;

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "Activity "

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@4b
    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    .line 3716
    const-string/jumbo v4, " did not call through to super.onPause()"

    #@56
    .line 3715
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-direct {v2, v3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@61
    throw v2
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@62
    .line 3718
    :catch_0
    move-exception v0

    #@63
    .line 3719
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0

    #@64
    .line 3720
    .end local v0    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v1

    #@65
    .line 3721
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@67
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@69
    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@6c
    move-result v2

    #@6d
    if-nez v2, :cond_1

    #@6f
    .line 3722
    new-instance v2, Ljava/lang/RuntimeException;

    #@71
    new-instance v3, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v4, "Unable to pause activity "

    #@79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    .line 3723
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@7f
    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    .line 3722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    .line 3723
    const-string/jumbo v4, ": "

    #@8a
    .line 3722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v3

    #@8e
    .line 3723
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@91
    move-result-object v4

    #@92
    .line 3722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9d
    throw v2

    #@9e
    .line 3726
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iput-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@a0
    .line 3703
    return-void
.end method

.method private performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZLjava/lang/String;)V
    .locals 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "info"    # Landroid/app/ActivityThread$StopInfo;
    .param p3, "keepShown"    # Z
    .param p4, "saveState"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 3790
    if-eqz p1, :cond_5

    #@4
    .line 3791
    if-nez p3, :cond_1

    #@6
    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 3792
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 3796
    return-void

    #@11
    .line 3798
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@13
    .line 3799
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Performing stop of activity that is already stopped: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 3800
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@21
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 3799
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 3798
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    .line 3801
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "ActivityThread"

    #@37
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    .line 3802
    const-string/jumbo v2, "ActivityThread"

    #@41
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 3806
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    invoke-direct {p0, p1, p5}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    #@4b
    .line 3808
    if-eqz p2, :cond_2

    #@4d
    .line 3813
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@4f
    invoke-virtual {v2}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    #@52
    move-result-object v2

    #@53
    iput-object v2, p2, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 3825
    :cond_2
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@57
    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    #@59
    if-nez v2, :cond_3

    #@5b
    if-eqz p4, :cond_3

    #@5d
    .line 3826
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@5f
    if-nez v2, :cond_3

    #@61
    .line 3827
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@64
    .line 3831
    :cond_3
    if-nez p3, :cond_5

    #@66
    .line 3834
    :try_start_1
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@68
    const/4 v3, 0x0

    #@69
    invoke-virtual {v2, v3}, Landroid/app/Activity;->performStop(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@6c
    .line 3843
    :cond_4
    iput-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@6e
    .line 3844
    const/4 v2, 0x3

    #@6f
    new-array v2, v2, [Ljava/lang/Object;

    #@71
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@74
    move-result v3

    #@75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v3

    #@79
    aput-object v3, v2, v4

    #@7b
    .line 3845
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@7d
    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@80
    move-result-object v3

    #@81
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    aput-object v3, v2, v5

    #@87
    const/4 v3, 0x2

    #@88
    aput-object p5, v2, v3

    #@8a
    .line 3844
    const/16 v3, 0x7561

    #@8c
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@8f
    .line 3788
    :cond_5
    return-void

    #@90
    .line 3814
    :catch_0
    move-exception v0

    #@91
    .line 3815
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@93
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@95
    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@98
    move-result v2

    #@99
    if-nez v2, :cond_2

    #@9b
    .line 3816
    new-instance v2, Ljava/lang/RuntimeException;

    #@9d
    .line 3817
    new-instance v3, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v4, "Unable to save state of activity "

    #@a5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v3

    #@a9
    .line 3818
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@ab
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@ae
    move-result-object v4

    #@af
    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@b2
    move-result-object v4

    #@b3
    .line 3817
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v3

    #@b7
    .line 3819
    const-string/jumbo v4, ": "

    #@ba
    .line 3817
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v3

    #@be
    .line 3819
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@c1
    move-result-object v4

    #@c2
    .line 3817
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v3

    #@c6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v3

    #@ca
    .line 3816
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@cd
    throw v2

    #@ce
    .line 3835
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@cf
    .line 3836
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@d1
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@d3
    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@d6
    move-result v2

    #@d7
    if-nez v2, :cond_4

    #@d9
    .line 3837
    new-instance v2, Ljava/lang/RuntimeException;

    #@db
    .line 3838
    new-instance v3, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v4, "Unable to stop activity "

    #@e3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v3

    #@e7
    .line 3839
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@e9
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@ec
    move-result-object v4

    #@ed
    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@f0
    move-result-object v4

    #@f1
    .line 3838
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v3

    #@f5
    .line 3840
    const-string/jumbo v4, ": "

    #@f8
    .line 3838
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v3

    #@fc
    .line 3840
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@ff
    move-result-object v4

    #@100
    .line 3838
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v3

    #@104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v3

    #@108
    .line 3837
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10b
    throw v2
.end method

.method static varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 2097
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 2096
    return-void
.end method

.method private reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 12
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2748
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@3
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v7

    #@7
    invoke-virtual {v7}, Landroid/content/res/Resources;->getSizeConfigurations()[Landroid/content/res/Configuration;

    #@a
    move-result-object v1

    #@b
    .line 2749
    .local v1, "configurations":[Landroid/content/res/Configuration;
    if-nez v1, :cond_0

    #@d
    .line 2750
    return-void

    #@e
    .line 2752
    :cond_0
    new-instance v3, Landroid/util/SparseIntArray;

    #@10
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    #@13
    .line 2753
    .local v3, "horizontal":Landroid/util/SparseIntArray;
    new-instance v6, Landroid/util/SparseIntArray;

    #@15
    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    #@18
    .line 2754
    .local v6, "vertical":Landroid/util/SparseIntArray;
    new-instance v5, Landroid/util/SparseIntArray;

    #@1a
    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    #@1d
    .line 2755
    .local v5, "smallest":Landroid/util/SparseIntArray;
    array-length v7, v1

    #@1e
    add-int/lit8 v4, v7, -0x1

    #@20
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_4

    #@22
    .line 2756
    aget-object v0, v1, v4

    #@24
    .line 2757
    .local v0, "config":Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@26
    if-eqz v7, :cond_1

    #@28
    .line 2758
    iget v7, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@2a
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@2d
    .line 2760
    :cond_1
    iget v7, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@2f
    if-eqz v7, :cond_2

    #@31
    .line 2761
    iget v7, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@33
    invoke-virtual {v3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@36
    .line 2763
    :cond_2
    iget v7, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@38
    if-eqz v7, :cond_3

    #@3a
    .line 2764
    iget v7, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@3c
    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    #@3f
    .line 2755
    :cond_3
    add-int/lit8 v4, v4, -0x1

    #@41
    goto :goto_0

    #@42
    .line 2768
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@45
    move-result-object v7

    #@46
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@48
    .line 2769
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->copyKeys()[I

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->copyKeys()[I

    #@4f
    move-result-object v10

    #@50
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->copyKeys()[I

    #@53
    move-result-object v11

    #@54
    .line 2768
    invoke-interface {v7, v8, v9, v10, v11}, Landroid/app/IActivityManager;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 2747
    return-void

    #@58
    .line 2770
    :catch_0
    move-exception v2

    #@59
    .line 2771
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@5c
    move-result-object v7

    #@5d
    throw v7
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4179
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    .line 4180
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
    .line 2464
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    #@9
    .line 2463
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
    .line 2468
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    #@9
    .line 2467
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
    .line 2472
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
    .line 2471
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;III)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "seq"    # I

    #@0
    .prologue
    .line 2494
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v1

    #@4
    .line 2495
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    #@6
    .line 2496
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@9
    move-result-object v0

    #@a
    .line 2497
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@c
    .line 2498
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@e
    .line 2499
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@10
    .line 2500
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@12
    .line 2501
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    .line 2502
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@16
    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 2490
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
    .line 2479
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 2480
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    #@6
    .line 2481
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    .line 2482
    iput p3, v0, Landroid/os/Message;->arg1:I

    #@a
    .line 2483
    iput p4, v0, Landroid/os/Message;->arg2:I

    #@c
    .line 2484
    if-eqz p5, :cond_0

    #@e
    .line 2485
    const/4 v1, 0x1

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@12
    .line 2487
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@14
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 2475
    return-void
.end method

.method private setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V
    .locals 8
    .param p1, "info"    # Landroid/app/LoadedApk;
    .param p2, "cacheDir"    # Ljava/io/File;

    #@0
    .prologue
    const-wide/16 v6, 0x40

    #@2
    .line 4972
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 4974
    return-void

    #@9
    .line 4976
    :cond_0
    const-string/jumbo v3, "setupGraphicsSupport"

    #@c
    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@f
    .line 4978
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@12
    move-result v2

    #@13
    .line 4979
    .local v2, "uid":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@16
    move-result-object v3

    #@17
    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 4983
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_1

    #@1d
    array-length v3, v1

    #@1e
    const/4 v4, 0x1

    #@1f
    if-ne v3, v4, :cond_1

    #@21
    .line 4984
    invoke-static {p2}, Landroid/view/ThreadedRenderer;->setupDiskCache(Ljava/io/File;)V

    #@24
    .line 4985
    invoke-static {p2}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 4990
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@2a
    .line 4971
    return-void

    #@2b
    .line 4987
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v2    # "uid":I
    :catch_0
    move-exception v0

    #@2c
    .line 4988
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@2f
    move-result-object v3

    #@30
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 4989
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@32
    .line 4990
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@35
    .line 4989
    throw v3
.end method

.method public static systemMain()Landroid/app/ActivityThread;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 5984
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 5985
    invoke-static {v2}, Landroid/view/ThreadedRenderer;->disable(Z)V

    #@a
    .line 5989
    :goto_0
    new-instance v0, Landroid/app/ActivityThread;

    #@c
    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    #@f
    .line 5990
    .local v0, "thread":Landroid/app/ActivityThread;
    invoke-direct {v0, v2}, Landroid/app/ActivityThread;->attach(Z)V

    #@12
    .line 5991
    return-object v0

    #@13
    .line 5987
    .end local v0    # "thread":Landroid/app/ActivityThread;
    :cond_0
    invoke-static {}, Landroid/view/ThreadedRenderer;->enableForegroundTrimming()V

    #@16
    goto :goto_0
.end method

.method private updateDefaultDensity()V
    .locals 2

    #@0
    .prologue
    .line 4995
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@2
    .line 4996
    .local v0, "densityDpi":I
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 4997
    if-eqz v0, :cond_0

    #@8
    .line 4998
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 4999
    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@e
    .line 5000
    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    #@11
    .line 4994
    :cond_0
    return-void
.end method

.method private updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newLocaleList"    # Landroid/os/LocaleList;

    #@0
    .prologue
    .line 5035
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@b
    move-result-object v3

    #@c
    const/4 v4, 0x0

    #@d
    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@10
    move-result-object v0

    #@11
    .line 5036
    .local v0, "bestLocale":Ljava/util/Locale;
    invoke-virtual {p2}, Landroid/os/LocaleList;->size()I

    #@14
    move-result v2

    #@15
    .line 5037
    .local v2, "newLocaleListSize":I
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@18
    .line 5038
    invoke-virtual {p2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 5039
    invoke-static {p2, v1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    #@25
    .line 5040
    return-void

    #@26
    .line 5037
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 5047
    :cond_1
    new-instance v3, Landroid/os/LocaleList;

    #@2b
    invoke-direct {v3, v0, p2}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    #@2e
    invoke-static {v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    #@31
    .line 5034
    return-void
.end method

.method private updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "show"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 3851
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@4
    iget-object v0, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@6
    .line 3852
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    #@8
    .line 3853
    if-eqz p2, :cond_2

    #@a
    .line 3854
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    #@e
    if-nez v1, :cond_0

    #@10
    .line 3855
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@12
    iput-boolean v3, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    #@14
    .line 3856
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@1a
    .line 3857
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1c
    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 3858
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@22
    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    #@25
    .line 3861
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 3862
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@2b
    invoke-direct {p0, p1, v1, v3}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Z)V

    #@2e
    .line 3866
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@30
    .line 3850
    :cond_1
    :goto_0
    return-void

    #@31
    .line 3869
    :cond_2
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@33
    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 3870
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@39
    const/4 v2, 0x0

    #@3a
    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    #@3c
    .line 3871
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@3e
    add-int/lit8 v1, v1, -0x1

    #@40
    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@42
    .line 3872
    const/4 v1, 0x4

    #@43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@46
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
    .line 5521
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@3
    monitor-enter v6

    #@4
    .line 5522
    :try_start_0
    new-instance v1, Landroid/app/ActivityThread$ProviderKey;

    #@6
    invoke-direct {v1, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    #@9
    .line 5523
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
    .line 5524
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-nez v2, :cond_0

    #@13
    monitor-exit v6

    #@14
    .line 5525
    return-object v9

    #@15
    .line 5528
    :cond_0
    :try_start_1
    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    #@17
    .line 5529
    .local v4, "provider":Landroid/content/IContentProvider;
    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v0

    #@1b
    .line 5530
    .local v0, "jBinder":Landroid/os/IBinder;
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    #@1e
    move-result v5

    #@1f
    if-nez v5, :cond_1

    #@21
    .line 5533
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
    .line 5534
    const-string/jumbo v8, ": existing object\'s process dead"

    #@42
    .line 5533
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
    .line 5535
    const/4 v5, 0x1

    #@4e
    invoke-virtual {p0, v0, v5}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    monitor-exit v6

    #@52
    .line 5536
    return-object v9

    #@53
    .line 5541
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
    .line 5542
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_2

    #@5d
    .line 5543
    invoke-direct {p0, v3, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    :cond_2
    monitor-exit v6

    #@61
    .line 5545
    return-object v4

    #@62
    .line 5521
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
    .line 5421
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    #@4
    move-result-object v8

    #@5
    .line 5422
    .local v8, "provider":Landroid/content/IContentProvider;
    if-eqz v8, :cond_0

    #@7
    .line 5423
    return-object v8

    #@8
    .line 5432
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 5434
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@c
    move-result-object v0

    #@d
    .line 5435
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    #@10
    move-result-object v1

    #@11
    .line 5434
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v2

    #@15
    .line 5439
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    if-nez v2, :cond_1

    #@17
    .line 5440
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
    .line 5441
    return-object v4

    #@32
    .line 5436
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catch_0
    move-exception v7

    #@33
    .line 5437
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@36
    move-result-object v0

    #@37
    throw v0

    #@38
    .line 5446
    .end local v7    # "ex":Landroid/os/RemoteException;
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_1
    iget-object v3, v2, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    #@3a
    .line 5447
    iget-boolean v5, v2, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    #@3c
    const/4 v4, 0x1

    #@3d
    move-object v0, p0

    #@3e
    move-object v1, p1

    #@3f
    move v6, p4

    #@40
    .line 5446
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    #@43
    move-result-object v2

    #@44
    .line 5448
    iget-object v0, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@46
    return-object v0
.end method

.method final appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "provider"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 5718
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@2
    monitor-enter v3

    #@3
    .line 5719
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
    .line 5720
    .local v1, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v1, :cond_0

    #@d
    .line 5722
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@10
    move-result-object v2

    #@11
    .line 5723
    iget-object v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@13
    iget-object v4, v4, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@15
    .line 5722
    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :cond_0
    monitor-exit v3

    #@19
    .line 5717
    return-void

    #@1a
    .line 5724
    :catch_0
    move-exception v0

    #@1b
    .line 5725
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1e
    move-result-object v2

    #@1f
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    .line 5718
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit v3

    #@22
    throw v2
.end method

.method final applyCompatConfiguration(I)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "displayDensity"    # I

    #@0
    .prologue
    .line 4688
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@2
    .line 4689
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 4690
    new-instance v1, Landroid/content/res/Configuration;

    #@8
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    #@b
    iput-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@d
    .line 4692
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@f
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@11
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@14
    .line 4693
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@16
    .line 4694
    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@18
    .line 4693
    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 4695
    iget-object v0, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@20
    .line 4697
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
    .line 1829
    if-nez p2, :cond_0

    #@3
    .line 1830
    return-object v0

    #@4
    .line 1832
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 1833
    iget-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    #@c
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@f
    .line 1834
    iget-object p2, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    #@11
    .line 1835
    invoke-virtual {p3, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    #@14
    .line 1837
    :cond_1
    return-object p2
.end method

.method public final applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 4682
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@2
    monitor-enter v1

    #@3
    .line 4683
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
    .line 4681
    return-void

    #@b
    .line 4682
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
    .line 4512
    new-instance v6, Ljava/util/ArrayList;

    #@2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 4514
    .local v6, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v10, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@7
    monitor-enter v10

    #@8
    .line 4515
    :try_start_0
    iget-object v9, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v1

    #@e
    .line 4516
    .local v1, "NAPP":I
    const/4 v7, 0x0

    #@f
    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_0

    #@11
    .line 4517
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
    .line 4516
    add-int/lit8 v7, v7, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 4519
    :cond_0
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@21
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    #@24
    move-result v0

    #@25
    .line 4520
    .local v0, "NACT":I
    const/4 v7, 0x0

    #@26
    :goto_1
    if-ge v7, v0, :cond_4

    #@28
    .line 4521
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2a
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    #@30
    .line 4522
    .local v5, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@32
    .line 4523
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_2

    #@34
    .line 4525
    iget v9, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@36
    .line 4526
    iget-object v11, v5, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    #@38
    invoke-virtual {v11}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@3b
    move-result-object v11

    #@3c
    .line 4524
    invoke-virtual {p0, v9, p2, v11}, Landroid/app/ActivityThread;->applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;

    #@3f
    move-result-object v8

    #@40
    .line 4527
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
    .line 4531
    :cond_1
    if-eqz v8, :cond_2

    #@4e
    .line 4541
    iput-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@50
    .line 4520
    .end local v8    # "thisConfig":Landroid/content/res/Configuration;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@52
    goto :goto_1

    #@53
    .line 4530
    .restart local v8    # "thisConfig":Landroid/content/res/Configuration;
    :cond_3
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    goto :goto_2

    #@57
    .line 4514
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
    .line 4545
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
    .line 4546
    .local v3, "NSVC":I
    const/4 v7, 0x0

    #@61
    :goto_3
    if-ge v7, v3, :cond_5

    #@63
    .line 4547
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
    .line 4546
    add-int/lit8 v7, v7, 0x1

    #@70
    goto :goto_3

    #@71
    :cond_5
    monitor-exit v10

    #@72
    .line 4550
    iget-object v10, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@74
    monitor-enter v10

    #@75
    .line 4551
    :try_start_2
    iget-object v9, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    #@77
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    #@7a
    move-result v2

    #@7b
    .line 4552
    .local v2, "NPRV":I
    const/4 v7, 0x0

    #@7c
    :goto_4
    if-ge v7, v2, :cond_6

    #@7e
    .line 4553
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
    .line 4552
    add-int/lit8 v7, v7, 0x1

    #@8d
    goto :goto_4

    #@8e
    :cond_6
    monitor-exit v10

    #@8f
    .line 4557
    return-object v6

    #@90
    .line 4550
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
    .line 5639
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@2
    monitor-enter v7

    #@3
    .line 5640
    :try_start_0
    iget-boolean v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v6, :cond_0

    #@7
    monitor-exit v7

    #@8
    .line 5646
    return-void

    #@9
    .line 5652
    :cond_0
    const/4 v6, 0x0

    #@a
    :try_start_1
    iput-boolean v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@c
    .line 5654
    iget-object v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@e
    iget-object v6, v6, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@10
    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v3

    #@14
    .line 5655
    .local v3, "jBinder":Landroid/os/IBinder;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;

    #@1c
    .line 5656
    .local v1, "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    if-ne v1, p1, :cond_1

    #@1e
    .line 5657
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 5660
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
    .line 5661
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@2f
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@32
    move-result-object v5

    #@33
    check-cast v5, Landroid/app/ActivityThread$ProviderClientRecord;

    #@35
    .line 5662
    .local v5, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    #@37
    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@3a
    move-result-object v4

    #@3b
    .line 5663
    .local v4, "myBinder":Landroid/os/IBinder;
    if-ne v4, v3, :cond_2

    #@3d
    .line 5664
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@3f
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    .line 5660
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
    .line 5674
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@49
    move-result-object v6

    #@4a
    .line 5675
    iget-object v7, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@4c
    iget-object v7, v7, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@4e
    const/4 v8, 0x0

    #@4f
    .line 5674
    invoke-interface {v6, v7, v8}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@52
    .line 5638
    :goto_1
    return-void

    #@53
    .line 5639
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
    .line 5676
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
    .line 2075
    const/4 v2, 0x0

    #@1
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    #@3
    .line 2076
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@6
    move-result-wide v0

    #@7
    .line 2079
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
    .line 2081
    const-string/jumbo v2, "bg"

    #@15
    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    #@18
    .line 2074
    :cond_0
    return-void
.end method

.method ensureJitEnabled()V
    .locals 1

    #@0
    .prologue
    .line 2052
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2053
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    #@7
    .line 2054
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    #@e
    .line 2051
    :cond_0
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 5375
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    .line 5376
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
    .line 5377
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@12
    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@14
    if-nez v2, :cond_0

    #@16
    .line 5378
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    #@19
    .line 5383
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@1b
    invoke-interface {v0, v2, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 5374
    return-void

    #@1f
    .line 5384
    :catch_0
    move-exception v1

    #@20
    .line 5385
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@23
    move-result-object v2

    #@24
    throw v2
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2450
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
    .line 2026
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@2
    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    #@0
    .prologue
    .line 2004
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@2
    return-object v0
.end method

.method final getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 1851
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@2
    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    #@0
    .prologue
    .line 2009
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
    .line 6001
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@2
    monitor-enter v1

    #@3
    .line 6002
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 6003
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
    .line 6005
    return p2

    #@11
    .line 6001
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
    .line 2022
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
    const/4 v0, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 1910
    and-int/lit8 v1, p3, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    move v5, v0

    #@8
    .line 1911
    .local v5, "includeCode":Z
    :cond_0
    if-eqz v5, :cond_4

    #@a
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@c
    if-eqz v1, :cond_4

    #@e
    .line 1912
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@10
    const/16 v2, 0x3e8

    #@12
    if-eq v1, v2, :cond_4

    #@14
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@16
    if-eqz v1, :cond_3

    #@18
    .line 1913
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1a
    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@1c
    iget-object v2, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1e
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@20
    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    const/4 v4, 0x0

    #@27
    .line 1915
    .local v4, "securityViolation":Z
    :goto_0
    if-eqz v5, :cond_5

    #@29
    const/high16 v1, 0x40000000    # 2.0f

    #@2b
    and-int/2addr v1, p3

    #@2c
    if-eqz v1, :cond_5

    #@2e
    const/4 v6, 0x1

    #@2f
    .line 1916
    .local v6, "registerPackage":Z
    :goto_1
    and-int/lit8 v1, p3, 0x3

    #@31
    if-ne v1, v0, :cond_6

    #@33
    .line 1919
    if-eqz v4, :cond_6

    #@35
    .line 1920
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v1, "Requesting code from "

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 1921
    const-string/jumbo v1, " (with uid "

    #@4a
    .line 1920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 1921
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@50
    .line 1920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    .line 1921
    const-string/jumbo v1, ")"

    #@57
    .line 1920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v7

    #@5f
    .line 1922
    .local v7, "msg":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@61
    if-eqz v0, :cond_1

    #@63
    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    const-string/jumbo v1, " to be run in process "

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    .line 1924
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@75
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@77
    .line 1923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    .line 1924
    const-string/jumbo v1, " (with uid "

    #@7e
    .line 1923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    .line 1925
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@84
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@86
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@88
    .line 1923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    .line 1925
    const-string/jumbo v1, ")"

    #@8f
    .line 1923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v7

    #@97
    .line 1927
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    #@99
    invoke-direct {v0, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v0

    #@9d
    .line 1913
    .end local v4    # "securityViolation":Z
    .end local v6    # "registerPackage":Z
    .end local v7    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    #@9e
    .restart local v4    # "securityViolation":Z
    goto :goto_0

    #@9f
    .line 1914
    .end local v4    # "securityViolation":Z
    :cond_3
    const/4 v4, 0x1

    #@a0
    .restart local v4    # "securityViolation":Z
    goto :goto_0

    #@a1
    .line 1911
    .end local v4    # "securityViolation":Z
    :cond_4
    const/4 v4, 0x0

    #@a2
    .restart local v4    # "securityViolation":Z
    goto :goto_0

    #@a3
    .line 1915
    :cond_5
    const/4 v6, 0x0

    #@a4
    .restart local v6    # "registerPackage":Z
    goto :goto_1

    #@a5
    :cond_6
    move-object v0, p0

    #@a6
    move-object v1, p1

    #@a7
    move-object v2, p2

    #@a8
    .line 1930
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    #@ab
    move-result-object v0

    #@ac
    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1856
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
    const/4 v6, 0x0

    #@1
    .line 1861
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@4
    move-result v5

    #@5
    if-eq v5, p4, :cond_1

    #@7
    const/4 v1, 0x1

    #@8
    .line 1862
    .local v1, "differentUser":Z
    :goto_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@a
    monitor-enter v7

    #@b
    .line 1864
    if-eqz v1, :cond_2

    #@d
    .line 1866
    const/4 v4, 0x0

    #@e
    .line 1873
    :goto_1
    if-eqz v4, :cond_4

    #@10
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v5

    #@14
    check-cast v5, Landroid/app/LoadedApk;

    #@16
    move-object v3, v5

    #@17
    .line 1877
    .local v3, "packageInfo":Landroid/app/LoadedApk;
    :goto_2
    if-eqz v3, :cond_6

    #@19
    iget-object v5, v3, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@1b
    if-eqz v5, :cond_0

    #@1d
    .line 1878
    iget-object v5, v3, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    #@1f
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Landroid/content/res/AssetManager;->isUpToDate()Z

    #@26
    move-result v5

    #@27
    .line 1877
    if-eqz v5, :cond_6

    #@29
    .line 1879
    :cond_0
    invoke-virtual {v3}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_5

    #@2f
    .line 1880
    and-int/lit8 v5, p3, 0x2

    #@31
    if-nez v5, :cond_5

    #@33
    .line 1881
    new-instance v5, Ljava/lang/SecurityException;

    #@35
    .line 1882
    new-instance v6, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v8, "Requesting code from "

    #@3d
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    .line 1883
    const-string/jumbo v8, " to be run in process "

    #@48
    .line 1882
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    .line 1884
    iget-object v8, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@4e
    iget-object v8, v8, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    #@50
    .line 1882
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    .line 1885
    const-string/jumbo v8, "/"

    #@57
    .line 1882
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    .line 1885
    iget-object v8, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    #@5d
    iget-object v8, v8, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@5f
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@61
    .line 1882
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    .line 1881
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    .line 1862
    .end local v3    # "packageInfo":Landroid/app/LoadedApk;
    :catchall_0
    move-exception v5

    #@6e
    monitor-exit v7

    #@6f
    throw v5

    #@70
    .line 1861
    .end local v1    # "differentUser":Z
    :cond_1
    const/4 v1, 0x0

    #@71
    .restart local v1    # "differentUser":Z
    goto :goto_0

    #@72
    .line 1867
    :cond_2
    and-int/lit8 v5, p3, 0x1

    #@74
    if-eqz v5, :cond_3

    #@76
    .line 1868
    :try_start_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@78
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    move-result-object v4

    #@7c
    check-cast v4, Ljava/lang/ref/WeakReference;

    #@7e
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    #@7f
    .line 1870
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_3
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@81
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    move-result-object v4

    #@85
    check-cast v4, Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@87
    .restart local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    #@88
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    move-object v3, v6

    #@89
    .line 1873
    goto :goto_2

    #@8a
    .restart local v3    # "packageInfo":Landroid/app/LoadedApk;
    :cond_5
    monitor-exit v7

    #@8b
    .line 1887
    return-object v3

    #@8c
    :cond_6
    monitor-exit v7

    #@8d
    .line 1891
    const/4 v0, 0x0

    #@8e
    .line 1893
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@91
    move-result-object v5

    #@92
    .line 1894
    const v7, 0x10000400

    #@95
    .line 1893
    invoke-interface {v5, p1, v7, p4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@98
    move-result-object v0

    #@99
    .line 1901
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_7

    #@9b
    .line 1902
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    #@9e
    move-result-object v5

    #@9f
    return-object v5

    #@a0
    .line 1897
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    #@a1
    .line 1898
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a4
    move-result-object v5

    #@a5
    throw v5

    #@a6
    .line 1905
    .end local v2    # "e":Landroid/os/RemoteException;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :cond_7
    return-object v6
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .locals 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1936
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
    .line 2030
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
    .line 2018
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
    .line 2034
    monitor-enter p0

    #@1
    .line 2035
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 2036
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    #@b
    .line 2038
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v0

    #@f
    .line 2034
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "pkgInfo"    # Landroid/app/LoadedApk;

    #@0
    .prologue
    .line 1846
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@2
    .line 1847
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@5
    move-result-object v8

    #@6
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v9

    #@a
    .line 1846
    const/4 v1, 0x0

    #@b
    .line 1847
    const/4 v7, 0x0

    #@c
    move-object v2, p1

    #@d
    move-object v3, p2

    #@e
    move-object v4, p3

    #@f
    move-object v5, p4

    #@10
    move v6, p5

    #@11
    .line 1846
    invoke-virtual/range {v0 .. v9}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method final handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;Z)V
    .locals 3
    .param p1, "data"    # Landroid/app/ActivityThread$ActivityConfigChangeData;
    .param p2, "reportToActivity"    # Z

    #@0
    .prologue
    .line 4775
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
    .line 4776
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@c
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@e
    if-nez v1, :cond_1

    #@10
    .line 4777
    :cond_0
    return-void

    #@11
    .line 4783
    :cond_1
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    #@13
    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@15
    .line 4784
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    #@17
    invoke-direct {p0, v0, v1, p2}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Z)V

    #@1a
    .line 4785
    const/4 v1, 0x1

    #@1b
    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@1d
    .line 4774
    return-void
.end method

.method public handleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2872
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    #@9
    .line 2873
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_1

    #@b
    .line 2874
    const/4 v3, 0x1

    #@c
    iput-boolean v3, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@e
    .line 2875
    iget-object v0, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@10
    .line 2876
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v3, v0, Landroid/app/Activity;->mVisibleBehind:Z

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 2877
    iput-boolean v4, v0, Landroid/app/Activity;->mCalled:Z

    #@16
    .line 2878
    invoke-virtual {v0}, Landroid/app/Activity;->onVisibleBehindCanceled()V

    #@19
    .line 2880
    iget-boolean v3, v0, Landroid/app/Activity;->mCalled:Z

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 2881
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
    .line 2882
    const-string/jumbo v5, " did not call through to super.onVisibleBehindCanceled()"

    #@36
    .line 2881
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
    .line 2884
    :cond_0
    iput-boolean v4, v0, Landroid/app/Activity;->mVisibleBehind:Z

    #@44
    .line 2888
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
    .line 2871
    return-void

    #@4c
    .line 2889
    :catch_0
    move-exception v1

    #@4d
    .line 2890
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@50
    move-result-object v3

    #@51
    throw v3
.end method

.method final handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 13
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 4702
    const/4 v9, 0x0

    #@4
    .line 4704
    .local v9, "configDiff":I
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@6
    monitor-enter v3

    #@7
    .line 4705
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 4706
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@d
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 4707
    iget-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    #@15
    .line 4708
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@17
    iput v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@19
    .line 4709
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    #@1c
    .line 4711
    :cond_0
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 4714
    :cond_1
    if-nez p1, :cond_2

    #@21
    monitor-exit v3

    #@22
    .line 4715
    return-void

    #@23
    .line 4721
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@25
    invoke-virtual {v0, p1, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    #@28
    .line 4722
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@2a
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    #@2d
    move-result-object v0

    #@2e
    .line 4723
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@30
    invoke-virtual {v4}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@37
    move-result-object v4

    #@38
    .line 4722
    invoke-direct {p0, v0, v4}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    #@3b
    .line 4725
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@3d
    if-nez v0, :cond_3

    #@3f
    .line 4726
    new-instance v0, Landroid/content/res/Configuration;

    #@41
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@44
    iput-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@46
    .line 4728
    :cond_3
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@48
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    move-result v0

    #@4c
    if-nez v0, :cond_4

    #@4e
    if-nez p2, :cond_4

    #@50
    monitor-exit v3

    #@51
    .line 4729
    return-void

    #@52
    .line 4732
    :cond_4
    :try_start_2
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    #@54
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@57
    move-result v9

    #@58
    .line 4733
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    #@5a
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;

    #@5d
    move-result-object p1

    #@5e
    .line 4735
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    #@65
    move-result-object v11

    #@66
    .line 4736
    .local v11, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v11}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    #@69
    move-result v0

    #@6a
    and-int/2addr v0, v9

    #@6b
    if-eqz v0, :cond_5

    #@6d
    .line 4737
    invoke-virtual {v11}, Landroid/content/res/Resources$Theme;->rebase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@70
    :cond_5
    monitor-exit v3

    #@71
    .line 4741
    invoke-virtual {p0, v12, p1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    #@74
    move-result-object v8

    #@75
    .line 4743
    .local v8, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-static {v9}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    #@78
    .line 4745
    if-eqz v8, :cond_7

    #@7a
    .line 4746
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@7d
    move-result v6

    #@7e
    .line 4747
    .local v6, "N":I
    const/4 v10, 0x0

    #@7f
    .local v10, "i":I
    :goto_0
    if-ge v10, v6, :cond_7

    #@81
    .line 4748
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@84
    move-result-object v1

    #@85
    check-cast v1, Landroid/content/ComponentCallbacks2;

    #@87
    .line 4749
    .local v1, "cb":Landroid/content/ComponentCallbacks2;
    instance-of v0, v1, Landroid/app/Activity;

    #@89
    if-eqz v0, :cond_6

    #@8b
    move-object v7, v1

    #@8c
    .line 4752
    check-cast v7, Landroid/app/Activity;

    #@8e
    .line 4753
    .local v7, "a":Landroid/app/Activity;
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@90
    invoke-virtual {v7}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    #@93
    move-result-object v3

    #@94
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    move-result-object v0

    #@98
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@9a
    invoke-direct {p0, v0, p1, v5}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Z)V

    #@9d
    .line 4747
    .end local v7    # "a":Landroid/app/Activity;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@9f
    goto :goto_0

    #@a0
    .line 4704
    .end local v1    # "cb":Landroid/content/ComponentCallbacks2;
    .end local v6    # "N":I
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .end local v10    # "i":I
    .end local v11    # "systemTheme":Landroid/content/res/Resources$Theme;
    :catchall_0
    move-exception v0

    #@a1
    monitor-exit v3

    #@a2
    throw v0

    #@a3
    .restart local v1    # "cb":Landroid/content/ComponentCallbacks2;
    .restart local v6    # "N":I
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .restart local v10    # "i":I
    .restart local v11    # "systemTheme":Landroid/content/res/Resources$Theme;
    :cond_6
    move-object v0, p0

    #@a4
    move-object v3, p1

    #@a5
    move-object v4, v2

    #@a6
    .line 4756
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    #@a9
    goto :goto_1

    #@aa
    .line 4700
    .end local v1    # "cb":Landroid/content/ComponentCallbacks2;
    .end local v6    # "N":I
    .end local v10    # "i":I
    :cond_7
    return-void
.end method

.method final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 17
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 4851
    const/4 v6, 0x0

    #@1
    .line 4852
    .local v6, "hasPkgInfo":Z
    packed-switch p1, :pswitch_data_0

    #@4
    .line 4932
    :cond_0
    :goto_0
    :pswitch_0
    move/from16 v0, p1

    #@6
    move-object/from16 v1, p2

    #@8
    invoke-static {v0, v1, v6}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    #@b
    .line 4850
    return-void

    #@c
    .line 4856
    :pswitch_1
    if-nez p1, :cond_3

    #@e
    const/4 v8, 0x1

    #@f
    .line 4857
    .local v8, "killApp":Z
    :goto_1
    if-eqz p2, :cond_0

    #@11
    .line 4860
    move-object/from16 v0, p0

    #@13
    iget-object v14, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@15
    monitor-enter v14

    #@16
    .line 4861
    :try_start_0
    move-object/from16 v0, p2

    #@18
    array-length v13, v0

    #@19
    add-int/lit8 v7, v13, -0x1

    #@1b
    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_5

    #@1d
    .line 4862
    if-nez v6, :cond_1

    #@1f
    .line 4863
    move-object/from16 v0, p0

    #@21
    iget-object v13, v0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@23
    aget-object v15, p2, v7

    #@25
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v12

    #@29
    check-cast v12, Ljava/lang/ref/WeakReference;

    #@2b
    .line 4864
    .local v12, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v12, :cond_4

    #@2d
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@30
    move-result-object v13

    #@31
    if-eqz v13, :cond_4

    #@33
    .line 4865
    const/4 v6, 0x1

    #@34
    .line 4873
    .end local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    :goto_3
    if-eqz v8, :cond_2

    #@36
    .line 4874
    move-object/from16 v0, p0

    #@38
    iget-object v13, v0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@3a
    aget-object v15, p2, v7

    #@3c
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 4875
    move-object/from16 v0, p0

    #@41
    iget-object v13, v0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@43
    aget-object v15, p2, v7

    #@45
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 4861
    :cond_2
    add-int/lit8 v7, v7, -0x1

    #@4a
    goto :goto_2

    #@4b
    .line 4856
    .end local v7    # "i":I
    .end local v8    # "killApp":Z
    :cond_3
    const/4 v8, 0x0

    #@4c
    .restart local v8    # "killApp":Z
    goto :goto_1

    #@4d
    .line 4867
    .restart local v7    # "i":I
    .restart local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    move-object/from16 v0, p0

    #@4f
    iget-object v13, v0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@51
    aget-object v15, p2, v7

    #@53
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v12

    #@57
    .end local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    check-cast v12, Ljava/lang/ref/WeakReference;

    #@59
    .line 4868
    .restart local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v12, :cond_1

    #@5b
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    move-result-object v13

    #@5f
    if-eqz v13, :cond_1

    #@61
    .line 4869
    const/4 v6, 0x1

    #@62
    goto :goto_3

    #@63
    .end local v8    # "killApp":Z
    .end local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_5
    monitor-exit v14

    #@64
    goto :goto_0

    #@65
    .line 4860
    .end local v7    # "i":I
    .restart local v8    # "killApp":Z
    :catchall_0
    move-exception v13

    #@66
    monitor-exit v14

    #@67
    throw v13

    #@68
    .line 4883
    .end local v8    # "killApp":Z
    :pswitch_2
    if-eqz p2, :cond_0

    #@6a
    .line 4886
    move-object/from16 v0, p0

    #@6c
    iget-object v14, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@6e
    monitor-enter v14

    #@6f
    .line 4887
    :try_start_1
    move-object/from16 v0, p2

    #@71
    array-length v13, v0

    #@72
    add-int/lit8 v7, v13, -0x1

    #@74
    .restart local v7    # "i":I
    :goto_4
    if-ltz v7, :cond_5

    #@76
    .line 4888
    move-object/from16 v0, p0

    #@78
    iget-object v13, v0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@7a
    aget-object v15, p2, v7

    #@7c
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    move-result-object v12

    #@80
    check-cast v12, Ljava/lang/ref/WeakReference;

    #@82
    .line 4889
    .restart local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v12, :cond_9

    #@84
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@87
    move-result-object v11

    #@88
    check-cast v11, Landroid/app/LoadedApk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@8a
    .line 4890
    :goto_5
    if-eqz v11, :cond_a

    #@8c
    .line 4891
    const/4 v6, 0x1

    #@8d
    .line 4903
    :cond_6
    :goto_6
    if-eqz v11, :cond_8

    #@8f
    .line 4905
    :try_start_2
    aget-object v10, p2, v7

    #@91
    .line 4907
    .local v10, "packageName":Ljava/lang/String;
    sget-object v13, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    #@93
    .line 4910
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@96
    move-result v15

    #@97
    .line 4909
    const/16 v16, 0x0

    #@99
    .line 4907
    move/from16 v0, v16

    #@9b
    invoke-interface {v13, v10, v0, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@9e
    move-result-object v2

    #@9f
    .line 4912
    .local v2, "aInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    #@a1
    iget-object v13, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@a3
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    #@a6
    move-result v13

    #@a7
    if-lez v13, :cond_c

    #@a9
    .line 4913
    move-object/from16 v0, p0

    #@ab
    iget-object v13, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@ad
    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@b0
    move-result-object v13

    #@b1
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b4
    move-result-object v4

    #@b5
    .local v4, "ar$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@b8
    move-result v13

    #@b9
    if-eqz v13, :cond_c

    #@bb
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@be
    move-result-object v3

    #@bf
    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    #@c1
    .line 4914
    .local v3, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v13, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@c3
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c5
    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@c7
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ca
    move-result v13

    #@cb
    if-eqz v13, :cond_7

    #@cd
    .line 4916
    iget-object v13, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@cf
    iput-object v2, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d1
    .line 4917
    iput-object v11, v3, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@d3
    goto :goto_7

    #@d4
    .line 4924
    .end local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v4    # "ar$iterator":Ljava/util/Iterator;
    .end local v10    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@d5
    .line 4887
    :cond_8
    :goto_8
    add-int/lit8 v7, v7, -0x1

    #@d7
    goto :goto_4

    #@d8
    .line 4889
    :cond_9
    const/4 v11, 0x0

    #@d9
    .local v11, "pkgInfo":Landroid/app/LoadedApk;
    goto :goto_5

    #@da
    .line 4893
    .end local v11    # "pkgInfo":Landroid/app/LoadedApk;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    #@dc
    iget-object v13, v0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    #@de
    aget-object v15, p2, v7

    #@e0
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e3
    move-result-object v12

    #@e4
    .end local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    check-cast v12, Ljava/lang/ref/WeakReference;

    #@e6
    .line 4894
    .restart local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v12, :cond_b

    #@e8
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@eb
    move-result-object v13

    #@ec
    check-cast v13, Landroid/app/LoadedApk;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@ee
    move-object v11, v13

    #@ef
    .line 4895
    .local v11, "pkgInfo":Landroid/app/LoadedApk;
    :goto_9
    if-eqz v11, :cond_6

    #@f1
    .line 4896
    const/4 v6, 0x1

    #@f2
    goto :goto_6

    #@f3
    .line 4894
    .end local v11    # "pkgInfo":Landroid/app/LoadedApk;
    :cond_b
    const/4 v11, 0x0

    #@f4
    goto :goto_9

    #@f5
    .line 4922
    .restart local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "packageName":Ljava/lang/String;
    :cond_c
    :try_start_4
    sget-object v13, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    #@f7
    invoke-interface {v13, v10}, Landroid/content/pm/IPackageManager;->getPreviousCodePaths(Ljava/lang/String;)Ljava/util/List;

    #@fa
    move-result-object v9

    #@fb
    .line 4923
    .local v9, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v11, v2, v9}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@fe
    goto :goto_8

    #@ff
    .line 4886
    .end local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "i":I
    .end local v9    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v12    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_1
    move-exception v13

    #@100
    monitor-exit v14

    #@101
    throw v13

    #@102
    .line 4852
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 2902
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    #@3
    move-result-object v0

    #@4
    .line 2904
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
    .line 2906
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@16
    .line 2901
    return-void

    #@17
    .line 2905
    :catchall_0
    move-exception v1

    #@18
    .line 2906
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    #@1b
    .line 2905
    throw v1
.end method

.method final handleLowMemory()V
    .locals 6

    #@0
    .prologue
    .line 4936
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    #@5
    move-result-object v1

    #@6
    .line 4938
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 4939
    .local v0, "N":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@d
    .line 4940
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Landroid/content/ComponentCallbacks2;

    #@13
    invoke-interface {v4}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    #@16
    .line 4939
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 4944
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@1c
    move-result v4

    #@1d
    const/16 v5, 0x3e8

    #@1f
    if-eq v4, v5, :cond_1

    #@21
    .line 4945
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    #@24
    move-result v3

    #@25
    .line 4946
    .local v3, "sqliteReleased":I
    const v4, 0x124fb

    #@28
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    #@2b
    .line 4950
    .end local v3    # "sqliteReleased":I
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    #@2e
    .line 4953
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    #@31
    .line 4955
    const-string/jumbo v4, "mem"

    #@34
    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    #@37
    .line 4935
    return-void
.end method

.method public handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 2895
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 2896
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@a
    .line 2897
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v1, p2}, Landroid/app/Activity;->onBackgroundVisibleBehindChanged(Z)V

    #@f
    .line 2894
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
    .line 4789
    if-eqz p1, :cond_0

    #@2
    .line 4793
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@4
    invoke-virtual {v2, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    #@7
    .line 4794
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@9
    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 4802
    :try_start_1
    iget-object v2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@e
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@11
    .line 4788
    :goto_0
    return-void

    #@12
    .line 4803
    :catch_0
    move-exception v0

    #@13
    .line 4804
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    #@16
    const-string/jumbo v3, "Failure closing profile fd"

    #@19
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0

    #@1d
    .line 4797
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@1e
    .line 4798
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
    .line 4799
    const-string/jumbo v4, " -- can the process access this path?"

    #@36
    .line 4798
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
    .line 4802
    :try_start_3
    iget-object v2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@43
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@46
    goto :goto_0

    #@47
    .line 4803
    :catch_2
    move-exception v0

    #@48
    .line 4804
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    #@4b
    const-string/jumbo v3, "Failure closing profile fd"

    #@4e
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    goto :goto_0

    #@52
    .line 4800
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    #@53
    .line 4802
    :try_start_4
    iget-object v3, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@55
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@58
    .line 4800
    :goto_1
    throw v2

    #@59
    .line 4803
    :catch_3
    move-exception v0

    #@5a
    .line 4804
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "ActivityThread"

    #@5d
    const-string/jumbo v4, "Failure closing profile fd"

    #@60
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@63
    goto :goto_1

    #@64
    .line 4810
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@66
    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    #@69
    goto :goto_0
.end method

.method public handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .locals 12
    .param p1, "cmd"    # Landroid/app/ActivityThread$RequestAssistContextExtras;

    #@0
    .prologue
    .line 2808
    iget v1, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    #@2
    iget v11, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    #@4
    if-eq v1, v11, :cond_1

    #@6
    .line 2810
    iget v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    #@8
    iput v1, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    #@a
    .line 2811
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    add-int/lit8 v8, v1, -0x1

    #@12
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    #@14
    .line 2812
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@1c
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Landroid/app/assist/AssistStructure;

    #@22
    .line 2813
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v3, :cond_0

    #@24
    .line 2814
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    #@27
    .line 2816
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2c
    .line 2811
    add-int/lit8 v8, v8, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 2819
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    .end local v8    # "i":I
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    #@31
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@34
    .line 2820
    .local v2, "data":Landroid/os/Bundle;
    const/4 v3, 0x0

    #@35
    .line 2821
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    new-instance v4, Landroid/app/assist/AssistContent;

    #@37
    invoke-direct {v4}, Landroid/app/assist/AssistContent;-><init>()V

    #@3a
    .line 2822
    .local v4, "content":Landroid/app/assist/AssistContent;
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@3c
    iget-object v11, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    #@3e
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v10

    #@42
    check-cast v10, Landroid/app/ActivityThread$ActivityClientRecord;

    #@44
    .line 2823
    .local v10, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v5, 0x0

    #@45
    .line 2824
    .local v5, "referrer":Landroid/net/Uri;
    if-eqz v10, :cond_3

    #@47
    .line 2825
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@49
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@4c
    move-result-object v1

    #@4d
    iget-object v11, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@4f
    invoke-virtual {v1, v11, v2}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@52
    .line 2826
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@54
    invoke-virtual {v1, v2}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    #@57
    .line 2827
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@59
    invoke-virtual {v1}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    #@5c
    move-result-object v5

    #@5d
    .line 2828
    .local v5, "referrer":Landroid/net/Uri;
    iget v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    #@5f
    const/4 v11, 0x1

    #@60
    if-ne v1, v11, :cond_3

    #@62
    .line 2829
    new-instance v3, Landroid/app/assist/AssistStructure;

    #@64
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@66
    invoke-direct {v3, v1}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;)V

    #@69
    .line 2830
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@6b
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@6e
    move-result-object v6

    #@6f
    .line 2831
    .local v6, "activityIntent":Landroid/content/Intent;
    if-eqz v6, :cond_5

    #@71
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@73
    if-eqz v1, :cond_2

    #@75
    .line 2832
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@77
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7a
    move-result-object v1

    #@7b
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@7d
    and-int/lit16 v1, v1, 0x2000

    #@7f
    if-nez v1, :cond_5

    #@81
    .line 2834
    :cond_2
    new-instance v9, Landroid/content/Intent;

    #@83
    invoke-direct {v9, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@86
    .line 2835
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    #@89
    move-result v1

    #@8a
    and-int/lit8 v1, v1, -0x43

    #@8c
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@8f
    .line 2837
    invoke-virtual {v9}, Landroid/content/Intent;->removeUnsafeExtras()V

    #@92
    .line 2838
    invoke-virtual {v4, v9}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    #@95
    .line 2842
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_1
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@97
    invoke-virtual {v1, v4}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    #@9a
    .line 2845
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    .end local v5    # "referrer":Landroid/net/Uri;
    .end local v6    # "activityIntent":Landroid/content/Intent;
    :cond_3
    if-nez v3, :cond_4

    #@9c
    .line 2846
    new-instance v3, Landroid/app/assist/AssistStructure;

    #@9e
    invoke-direct {v3}, Landroid/app/assist/AssistStructure;-><init>()V

    #@a1
    .line 2848
    :cond_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    #@a3
    new-instance v11, Ljava/lang/ref/WeakReference;

    #@a5
    invoke-direct {v11, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@a8
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ab
    .line 2849
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@ae
    move-result-object v0

    #@af
    .line 2851
    .local v0, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    #@b1
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b4
    .line 2807
    return-void

    #@b5
    .line 2840
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    .restart local v3    # "structure":Landroid/app/assist/AssistStructure;
    .restart local v5    # "referrer":Landroid/net/Uri;
    .restart local v6    # "activityIntent":Landroid/content/Intent;
    :cond_5
    new-instance v1, Landroid/content/Intent;

    #@b7
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@ba
    invoke-virtual {v4, v1}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    #@bd
    goto :goto_1

    #@be
    .line 2852
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    .end local v5    # "referrer":Landroid/net/Uri;
    .end local v6    # "activityIntent":Landroid/content/Intent;
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :catch_0
    move-exception v7

    #@bf
    .line 2853
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c2
    move-result-object v1

    #@c3
    throw v1
.end method

.method final handleResumeActivity(Landroid/os/IBinder;ZZZILjava/lang/String;)V
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clearHide"    # Z
    .param p3, "isForward"    # Z
    .param p4, "reallyResume"    # Z
    .param p5, "seq"    # I
    .param p6, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3429
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v11

    #@a
    check-cast v11, Landroid/app/ActivityThread$ActivityClientRecord;

    #@c
    .line 3430
    .local v11, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const-string/jumbo v14, "resumeActivity"

    #@f
    move/from16 v0, p5

    #@11
    invoke-static {v0, v11, v14}, Landroid/app/ActivityThread;->checkAndUpdateLifecycleSeq(ILandroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)Z

    #@14
    move-result v14

    #@15
    if-nez v14, :cond_0

    #@17
    .line 3431
    return-void

    #@18
    .line 3436
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    #@1b
    .line 3437
    const/4 v14, 0x1

    #@1c
    move-object/from16 v0, p0

    #@1e
    iput-boolean v14, v0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@20
    .line 3440
    move-object/from16 v0, p0

    #@22
    move-object/from16 v1, p1

    #@24
    move/from16 v2, p2

    #@26
    move-object/from16 v3, p6

    #@28
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    #@2b
    move-result-object v11

    #@2c
    .line 3442
    if-eqz v11, :cond_e

    #@2e
    .line 3443
    iget-object v4, v11, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@30
    .line 3450
    .local v4, "a":Landroid/app/Activity;
    if-eqz p3, :cond_7

    #@32
    .line 3451
    const/16 v8, 0x100

    #@34
    .line 3456
    .local v8, "forwardBit":I
    :goto_0
    iget-boolean v14, v4, Landroid/app/Activity;->mStartedActivity:Z

    #@36
    if-eqz v14, :cond_8

    #@38
    const/4 v12, 0x0

    #@39
    .line 3457
    .local v12, "willBeVisible":Z
    :goto_1
    if-nez v12, :cond_1

    #@3b
    .line 3459
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3e
    move-result-object v14

    #@3f
    .line 3460
    invoke-virtual {v4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    #@42
    move-result-object v15

    #@43
    .line 3459
    invoke-interface {v14, v15}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    move-result v12

    #@47
    .line 3465
    :cond_1
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@49
    if-nez v14, :cond_2

    #@4b
    iget-boolean v14, v4, Landroid/app/Activity;->mFinished:Z

    #@4d
    if-eqz v14, :cond_9

    #@4f
    .line 3494
    :cond_2
    if-nez v12, :cond_3

    #@51
    .line 3497
    const/4 v14, 0x1

    #@52
    iput-boolean v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    #@54
    .line 3501
    :cond_3
    :goto_2
    const/4 v14, 0x0

    #@55
    invoke-static {v11, v14}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    #@58
    .line 3505
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@5a
    iget-boolean v14, v14, Landroid/app/Activity;->mFinished:Z

    #@5c
    if-nez v14, :cond_4

    #@5e
    if-eqz v12, :cond_4

    #@60
    .line 3506
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@62
    iget-object v14, v14, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@64
    if-eqz v14, :cond_4

    #@66
    iget-boolean v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    #@68
    if-eqz v14, :cond_b

    #@6a
    .line 3535
    :cond_4
    :goto_3
    iget-boolean v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@6c
    if-nez v14, :cond_5

    #@6e
    .line 3536
    move-object/from16 v0, p0

    #@70
    iget-object v14, v0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    #@72
    iput-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    #@74
    .line 3537
    move-object/from16 v0, p0

    #@76
    iput-object v11, v0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    #@78
    .line 3540
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@7b
    move-result-object v14

    #@7c
    new-instance v15, Landroid/app/ActivityThread$Idler;

    #@7e
    const/16 v16, 0x0

    #@80
    move-object/from16 v0, p0

    #@82
    move-object/from16 v1, v16

    #@84
    invoke-direct {v15, v0, v1}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$Idler;)V

    #@87
    invoke-virtual {v14, v15}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@8a
    .line 3542
    :cond_5
    const/4 v14, 0x0

    #@8b
    iput-boolean v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@8d
    .line 3545
    if-eqz p4, :cond_6

    #@8f
    .line 3547
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@92
    move-result-object v14

    #@93
    move-object/from16 v0, p1

    #@95
    invoke-interface {v14, v0}, Landroid/app/IActivityManager;->activityResumed(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@98
    .line 3428
    .end local v4    # "a":Landroid/app/Activity;
    .end local v8    # "forwardBit":I
    .end local v12    # "willBeVisible":Z
    :cond_6
    :goto_4
    return-void

    #@99
    .line 3451
    .restart local v4    # "a":Landroid/app/Activity;
    :cond_7
    const/4 v8, 0x0

    #@9a
    .restart local v8    # "forwardBit":I
    goto :goto_0

    #@9b
    .line 3456
    :cond_8
    const/4 v12, 0x1

    #@9c
    goto :goto_1

    #@9d
    .line 3461
    .restart local v12    # "willBeVisible":Z
    :catch_0
    move-exception v6

    #@9e
    .line 3462
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a1
    move-result-object v14

    #@a2
    throw v14

    #@a3
    .line 3465
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_9
    if-eqz v12, :cond_2

    #@a5
    .line 3466
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@a7
    invoke-virtual {v14}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@aa
    move-result-object v14

    #@ab
    iput-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@ad
    .line 3467
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@af
    invoke-virtual {v14}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@b2
    move-result-object v5

    #@b3
    .line 3468
    .local v5, "decor":Landroid/view/View;
    const/4 v14, 0x4

    #@b4
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    #@b7
    .line 3469
    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@ba
    move-result-object v13

    #@bb
    .line 3470
    .local v13, "wm":Landroid/view/ViewManager;
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@bd
    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@c0
    move-result-object v10

    #@c1
    .line 3471
    .local v10, "l":Landroid/view/WindowManager$LayoutParams;
    iput-object v5, v4, Landroid/app/Activity;->mDecor:Landroid/view/View;

    #@c3
    .line 3472
    const/4 v14, 0x1

    #@c4
    iput v14, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    #@c6
    .line 3473
    iget v14, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@c8
    or-int/2addr v14, v8

    #@c9
    iput v14, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@cb
    .line 3474
    iget-boolean v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    #@cd
    if-eqz v14, :cond_a

    #@cf
    .line 3475
    const/4 v14, 0x1

    #@d0
    iput-boolean v14, v4, Landroid/app/Activity;->mWindowAdded:Z

    #@d2
    .line 3476
    const/4 v14, 0x0

    #@d3
    iput-boolean v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    #@d5
    .line 3481
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@d8
    move-result-object v9

    #@d9
    .line 3482
    .local v9, "impl":Landroid/view/ViewRootImpl;
    if-eqz v9, :cond_a

    #@db
    .line 3483
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->notifyChildRebuilt()V

    #@de
    .line 3486
    .end local v9    # "impl":Landroid/view/ViewRootImpl;
    :cond_a
    iget-boolean v14, v4, Landroid/app/Activity;->mVisibleFromClient:Z

    #@e0
    if-eqz v14, :cond_3

    #@e2
    iget-boolean v14, v4, Landroid/app/Activity;->mWindowAdded:Z

    #@e4
    if-nez v14, :cond_3

    #@e6
    .line 3487
    const/4 v14, 0x1

    #@e7
    iput-boolean v14, v4, Landroid/app/Activity;->mWindowAdded:Z

    #@e9
    .line 3488
    invoke-interface {v13, v5, v10}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@ec
    goto/16 :goto_2

    #@ee
    .line 3507
    .end local v5    # "decor":Landroid/view/View;
    .end local v10    # "l":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "wm":Landroid/view/ViewManager;
    :cond_b
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@f0
    if-eqz v14, :cond_c

    #@f2
    .line 3508
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@f4
    const/4 v15, 0x1

    #@f5
    move-object/from16 v0, p0

    #@f7
    invoke-direct {v0, v11, v14, v15}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Z)V

    #@fa
    .line 3511
    const/4 v14, 0x0

    #@fb
    iput-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    #@fd
    .line 3515
    :cond_c
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@ff
    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@102
    move-result-object v10

    #@103
    .line 3516
    .restart local v10    # "l":Landroid/view/WindowManager$LayoutParams;
    iget v14, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@105
    and-int/lit16 v14, v14, 0x100

    #@107
    if-eq v14, v8, :cond_d

    #@109
    .line 3519
    iget v14, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@10b
    and-int/lit16 v14, v14, -0x101

    #@10d
    or-int/2addr v14, v8

    #@10e
    iput v14, v10, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@110
    .line 3522
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@112
    iget-boolean v14, v14, Landroid/app/Activity;->mVisibleFromClient:Z

    #@114
    if-eqz v14, :cond_d

    #@116
    .line 3523
    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    #@119
    move-result-object v13

    #@11a
    .line 3524
    .restart local v13    # "wm":Landroid/view/ViewManager;
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    #@11c
    invoke-virtual {v14}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@11f
    move-result-object v5

    #@120
    .line 3525
    .restart local v5    # "decor":Landroid/view/View;
    invoke-interface {v13, v5, v10}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@123
    .line 3528
    .end local v5    # "decor":Landroid/view/View;
    .end local v13    # "wm":Landroid/view/ViewManager;
    :cond_d
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@125
    const/4 v15, 0x1

    #@126
    iput-boolean v15, v14, Landroid/app/Activity;->mVisibleFromServer:Z

    #@128
    .line 3529
    move-object/from16 v0, p0

    #@12a
    iget v14, v0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@12c
    add-int/lit8 v14, v14, 0x1

    #@12e
    move-object/from16 v0, p0

    #@130
    iput v14, v0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    #@132
    .line 3530
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@134
    iget-boolean v14, v14, Landroid/app/Activity;->mVisibleFromClient:Z

    #@136
    if-eqz v14, :cond_4

    #@138
    .line 3531
    iget-object v14, v11, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@13a
    invoke-virtual {v14}, Landroid/app/Activity;->makeVisible()V

    #@13d
    goto/16 :goto_3

    #@13f
    .line 3548
    .end local v10    # "l":Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v7

    #@140
    .line 3549
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@143
    move-result-object v14

    #@144
    throw v14

    #@145
    .line 3557
    .end local v4    # "a":Landroid/app/Activity;
    .end local v7    # "ex":Landroid/os/RemoteException;
    .end local v8    # "forwardBit":I
    .end local v12    # "willBeVisible":Z
    :cond_e
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@148
    move-result-object v14

    #@149
    .line 3558
    const/4 v15, 0x0

    #@14a
    const/16 v16, 0x0

    #@14c
    .line 3559
    const/16 v17, 0x0

    #@14e
    .line 3557
    move-object/from16 v0, p1

    #@150
    move-object/from16 v1, v16

    #@152
    move/from16 v2, v17

    #@154
    invoke-interface {v14, v0, v15, v1, v2}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@157
    goto/16 :goto_4

    #@159
    .line 3560
    :catch_2
    move-exception v7

    #@15a
    .line 3561
    .restart local v7    # "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15d
    move-result-object v14

    #@15e
    throw v14
.end method

.method public handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    #@0
    .prologue
    .line 2858
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 2859
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@a
    .line 2860
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    #@f
    .line 2857
    :cond_0
    return-void
.end method

.method final handleTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    #@0
    .prologue
    .line 4961
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    invoke-virtual {p0, v3, v4}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    #@5
    move-result-object v1

    #@6
    .line 4963
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 4964
    .local v0, "N":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@d
    .line 4965
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/content/ComponentCallbacks2;

    #@13
    invoke-interface {v3, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    #@16
    .line 4964
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 4968
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    #@20
    .line 4958
    return-void
.end method

.method final handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    #@0
    .prologue
    .line 5682
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@2
    monitor-enter v0

    #@3
    .line 5683
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 5681
    return-void

    #@8
    .line 5682
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
    .line 5688
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    #@8
    .line 5689
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_2

    #@a
    .line 5692
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 5693
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
    .line 5694
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@1b
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    #@21
    .line 5695
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
    .line 5696
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
    .line 5697
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@4d
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@50
    .line 5693
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@52
    goto :goto_0

    #@53
    .line 5701
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_1
    if-eqz p2, :cond_2

    #@55
    .line 5708
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@58
    move-result-object v4

    #@59
    .line 5709
    iget-object v5, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@5b
    iget-object v5, v5, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@5d
    .line 5708
    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .line 5687
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    #@61
    .line 5710
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
    .line 2043
    monitor-enter p0

    #@1
    .line 2044
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    #@8
    .line 2047
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
    .line 2042
    return-void

    #@11
    .line 2043
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
    .line 5995
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_0

    #@2
    .line 5996
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@4
    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    #@7
    .line 5994
    :cond_0
    return-void
.end method

.method public isProfiling()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2013
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
    .line 2014
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@d
    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 2013
    :cond_0
    return v0
.end method

.method public onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 2865
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 2866
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@a
    .line 2867
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@c
    invoke-virtual {v1, p2}, Landroid/app/Activity;->onNewActivityOptions(Landroid/app/ActivityOptions;)V

    #@f
    .line 2864
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
    .line 1940
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@3
    monitor-enter v2

    #@4
    .line 1942
    if-eqz p2, :cond_1

    #@6
    .line 1943
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@e
    .line 1947
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
    .line 1945
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
    .line 1940
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
    .line 4105
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 5
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
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2788
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@a
    .line 2789
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    #@c
    .line 2790
    iget-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@e
    if-eqz v4, :cond_2

    #@10
    move v1, v2

    #@11
    .line 2791
    .local v1, "resumed":Z
    :goto_0
    if-eqz v1, :cond_0

    #@13
    .line 2792
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@15
    iput-boolean v3, v4, Landroid/app/Activity;->mTemporaryPause:Z

    #@17
    .line 2793
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@19
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1b
    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    #@1e
    .line 2795
    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    #@21
    .line 2796
    if-eqz v1, :cond_1

    #@23
    .line 2797
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@25
    invoke-virtual {v3}, Landroid/app/Activity;->performResume()V

    #@28
    .line 2798
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@2a
    iput-boolean v2, v3, Landroid/app/Activity;->mTemporaryPause:Z

    #@2c
    .line 2787
    .end local v1    # "resumed":Z
    :cond_1
    return-void

    #@2d
    :cond_2
    move v1, v3

    #@2e
    .line 2790
    goto :goto_0
.end method

.method final performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "saveState"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3667
    iget-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@3
    if-eqz v4, :cond_1

    #@5
    .line 3668
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@7
    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 3672
    return-object v5

    #@c
    .line 3674
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    .line 3675
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v6, "Performing pause of activity that is not resumed: "

    #@16
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    .line 3676
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@1c
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    .line 3675
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 3674
    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2f
    .line 3677
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "ActivityThread"

    #@32
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    .line 3679
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    if-eqz p2, :cond_2

    #@3b
    .line 3680
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@3d
    const/4 v6, 0x1

    #@3e
    iput-boolean v6, v4, Landroid/app/Activity;->mFinished:Z

    #@40
    .line 3684
    :cond_2
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@42
    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    #@44
    if-nez v4, :cond_3

    #@46
    if-eqz p3, :cond_3

    #@48
    .line 3685
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    #@4b
    .line 3688
    :cond_3
    invoke-direct {p0, p1, p4}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    #@4e
    .line 3692
    iget-object v6, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@50
    monitor-enter v6

    #@51
    .line 3693
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@53
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@55
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v2

    #@59
    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5b
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v6

    #@5c
    .line 3695
    if-eqz v2, :cond_4

    #@5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@61
    move-result v3

    #@62
    .line 3696
    .local v3, "size":I
    :goto_0
    const/4 v1, 0x0

    #@63
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_5

    #@65
    .line 3697
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@68
    move-result-object v4

    #@69
    check-cast v4, Landroid/app/OnActivityPausedListener;

    #@6b
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@6d
    invoke-interface {v4, v6}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    #@70
    .line 3696
    add-int/lit8 v1, v1, 0x1

    #@72
    goto :goto_1

    #@73
    .line 3692
    .end local v1    # "i":I
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    #@74
    monitor-exit v6

    #@75
    throw v4

    #@76
    .line 3695
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :cond_4
    const/4 v3, 0x0

    #@77
    .restart local v3    # "size":I
    goto :goto_0

    #@78
    .line 3700
    .restart local v1    # "i":I
    :cond_5
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@7a
    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    #@7c
    if-nez v4, :cond_6

    #@7e
    if-eqz p3, :cond_6

    #@80
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@82
    :goto_2
    return-object v4

    #@83
    :cond_6
    move-object v4, v5

    #@84
    goto :goto_2
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZZLjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "saveState"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3661
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@9
    .line 3662
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)Landroid/os/Bundle;

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
    .line 3926
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 3927
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 3928
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@e
    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    #@11
    .line 3929
    const/4 v1, 0x0

    #@12
    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@14
    .line 3925
    :cond_0
    return-void
.end method

.method public final performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clearHide"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3358
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    #@9
    .line 3361
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_0

    #@b
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@d
    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 3407
    :cond_0
    :goto_0
    return-object v2

    #@12
    .line 3362
    :cond_1
    if-eqz p2, :cond_2

    #@14
    .line 3363
    iput-boolean v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    #@16
    .line 3364
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@18
    iput-boolean v5, v4, Landroid/app/Activity;->mStartedActivity:Z

    #@1a
    .line 3367
    :cond_2
    :try_start_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@1c
    invoke-virtual {v4}, Landroid/app/Activity;->onStateNotSaved()V

    #@1f
    .line 3368
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@21
    iget-object v4, v4, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    #@23
    invoke-virtual {v4}, Landroid/app/FragmentController;->noteStateNotSaved()V

    #@26
    .line 3369
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@28
    if-eqz v4, :cond_3

    #@2a
    .line 3370
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@2c
    invoke-direct {p0, v2, v4}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    #@2f
    .line 3371
    const/4 v4, 0x0

    #@30
    iput-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@32
    .line 3373
    :cond_3
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@34
    if-eqz v4, :cond_4

    #@36
    .line 3374
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@38
    invoke-direct {p0, v2, v4}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    #@3b
    .line 3375
    const/4 v4, 0x0

    #@3c
    iput-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@3e
    .line 3377
    :cond_4
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@40
    invoke-virtual {v4}, Landroid/app/Activity;->performResume()V

    #@43
    .line 3383
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v4

    #@49
    add-int/lit8 v1, v4, -0x1

    #@4b
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_6

    #@4d
    .line 3384
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v3

    #@53
    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    #@55
    .line 3385
    .local v3, "relaunching":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@57
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@59
    if-ne v4, v5, :cond_5

    #@5b
    .line 3386
    iget-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@5d
    .line 3385
    if-eqz v4, :cond_5

    #@5f
    .line 3386
    iget-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@61
    .line 3385
    if-eqz v4, :cond_5

    #@63
    .line 3387
    const/4 v4, 0x0

    #@64
    iput-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@66
    .line 3383
    :cond_5
    add-int/lit8 v1, v1, -0x1

    #@68
    goto :goto_1

    #@69
    .line 3391
    .end local v3    # "relaunching":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_6
    const/4 v4, 0x3

    #@6a
    new-array v4, v4, [Ljava/lang/Object;

    #@6c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@6f
    move-result v5

    #@70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v5

    #@74
    const/4 v6, 0x0

    #@75
    aput-object v5, v4, v6

    #@77
    .line 3392
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@79
    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    const/4 v6, 0x1

    #@82
    aput-object v5, v4, v6

    #@84
    const/4 v5, 0x2

    #@85
    aput-object p3, v4, v5

    #@87
    .line 3391
    const/16 v5, 0x7546

    #@89
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@8c
    .line 3394
    const/4 v4, 0x0

    #@8d
    iput-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@8f
    .line 3395
    const/4 v4, 0x0

    #@90
    iput-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    #@92
    .line 3396
    const/4 v4, 0x0

    #@93
    iput-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@95
    .line 3397
    const/4 v4, 0x0

    #@96
    iput-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@98
    goto/16 :goto_0

    #@9a
    .line 3398
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    #@9b
    .line 3399
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@9d
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@9f
    invoke-virtual {v4, v5, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    #@a2
    move-result v4

    #@a3
    if-nez v4, :cond_0

    #@a5
    .line 3400
    new-instance v4, Ljava/lang/RuntimeException;

    #@a7
    .line 3401
    new-instance v5, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v6, "Unable to resume activity "

    #@af
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    .line 3402
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@b5
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@b8
    move-result-object v6

    #@b9
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@bc
    move-result-object v6

    #@bd
    .line 3401
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v5

    #@c1
    .line 3403
    const-string/jumbo v6, ": "

    #@c4
    .line 3401
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v5

    #@c8
    .line 3403
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@cb
    move-result-object v6

    #@cc
    .line 3401
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v5

    #@d0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v5

    #@d4
    .line 3400
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d7
    throw v4
.end method

.method final performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "saveState"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3730
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    #@8
    .line 3731
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x0

    #@a
    move-object v0, p0

    #@b
    move v4, p2

    #@c
    move-object v5, p3

    #@d
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZLjava/lang/String;)V

    #@10
    .line 3729
    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    #@0
    .prologue
    .line 3656
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    #@2
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    #@4
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    #@7
    .line 3655
    return-void
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    #@0
    .prologue
    .line 2391
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@2
    monitor-enter v2

    #@3
    .line 2392
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/ArrayList;

    #@b
    .line 2393
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v0, :cond_0

    #@d
    .line 2394
    new-instance v0, Ljava/util/ArrayList;

    #@f
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 2395
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 2397
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    .line 2390
    return-void

    #@1c
    .line 2391
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
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 5550
    if-nez p1, :cond_0

    #@4
    .line 5551
    return v6

    #@5
    .line 5554
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v1

    #@9
    .line 5555
    .local v1, "jBinder":Landroid/os/IBinder;
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    #@b
    monitor-enter v7

    #@c
    .line 5556
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
    .line 5557
    .local v4, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v4, :cond_1

    #@16
    monitor-exit v7

    #@17
    .line 5559
    return v6

    #@18
    .line 5562
    :cond_1
    const/4 v2, 0x0

    #@19
    .line 5563
    .local v2, "lastRef":Z
    if-eqz p2, :cond_7

    #@1b
    .line 5564
    :try_start_1
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    if-nez v8, :cond_2

    #@1f
    monitor-exit v7

    #@20
    .line 5567
    return v6

    #@21
    .line 5569
    :cond_2
    :try_start_2
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    #@23
    add-int/lit8 v8, v8, -0x1

    #@25
    iput v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    #@27
    .line 5570
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    #@29
    if-nez v8, :cond_4

    #@2b
    .line 5577
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    if-nez v8, :cond_6

    #@2f
    const/4 v2, 0x1

    #@30
    .line 5583
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@33
    move-result-object v8

    #@34
    .line 5584
    iget-object v9, v4, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@36
    iget-object v9, v9, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@38
    if-eqz v2, :cond_3

    #@3a
    move v6, v5

    #@3b
    :cond_3
    const/4 v10, -0x1

    #@3c
    .line 5583
    invoke-interface {v8, v9, v10, v6}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3f
    .line 5616
    .end local v2    # "lastRef":Z
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    #@41
    .line 5617
    :try_start_4
    iget-boolean v6, v4, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@43
    if-nez v6, :cond_a

    #@45
    .line 5627
    const/4 v6, 0x1

    #@46
    iput-boolean v6, v4, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    #@48
    .line 5628
    iget-object v6, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@4a
    const/16 v8, 0x83

    #@4c
    invoke-virtual {v6, v8, v4}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4f
    move-result-object v3

    #@50
    .line 5629
    .local v3, "msg":Landroid/os/Message;
    iget-object v6, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@52
    invoke-virtual {v6, v3}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@55
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    :goto_2
    monitor-exit v7

    #@56
    .line 5634
    return v5

    #@57
    .line 5577
    .restart local v2    # "lastRef":Z
    :cond_6
    const/4 v2, 0x0

    #@58
    goto :goto_0

    #@59
    .line 5590
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
    .line 5593
    return v6

    #@5f
    .line 5595
    :cond_8
    :try_start_6
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    #@61
    add-int/lit8 v8, v8, -0x1

    #@63
    iput v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    #@65
    .line 5596
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    #@67
    if-nez v8, :cond_4

    #@69
    .line 5600
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@6b
    if-nez v8, :cond_9

    #@6d
    move v2, v5

    #@6e
    .line 5601
    .local v2, "lastRef":Z
    :goto_3
    if-nez v2, :cond_4

    #@70
    .line 5607
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@73
    move-result-object v6

    #@74
    .line 5608
    iget-object v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@76
    iget-object v8, v8, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@78
    const/4 v9, 0x0

    #@79
    const/4 v10, -0x1

    #@7a
    .line 5607
    invoke-interface {v6, v8, v9, v10}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@7d
    goto :goto_1

    #@7e
    .line 5609
    :catch_0
    move-exception v0

    #@7f
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@80
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v2, "lastRef":Z
    :cond_9
    move v2, v6

    #@81
    .line 5600
    goto :goto_3

    #@82
    .line 5631
    .end local v2    # "lastRef":Z
    :cond_a
    :try_start_8
    const-string/jumbo v6, "ActivityThread"

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
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@a2
    goto :goto_2

    #@a3
    .line 5555
    .end local v4    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v5

    #@a4
    monitor-exit v7

    #@a5
    throw v5

    #@a6
    .line 5585
    .restart local v2    # "lastRef":Z
    .restart local v4    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catch_1
    move-exception v0

    #@a7
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public final requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZZ)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "fromServer"    # Z
    .param p9, "preserveWindow"    # Z
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
            "ZZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4262
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v5, 0x0

    #@1
    .line 4264
    .local v5, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v8, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    #@3
    monitor-enter v8

    #@4
    .line 4265
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v7

    #@b
    if-ge v3, v7, :cond_c

    #@d
    .line 4266
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    #@15
    .line 4268
    .local v4, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@17
    if-ne v7, p1, :cond_a

    #@19
    .line 4269
    move-object v5, v4

    #@1a
    .line 4270
    .local v5, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz p2, :cond_0

    #@1c
    .line 4271
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@1e
    if-eqz v7, :cond_8

    #@20
    .line 4272
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@22
    invoke-interface {v7, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@25
    .line 4277
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    #@27
    .line 4278
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@29
    if-eqz v7, :cond_9

    #@2b
    .line 4279
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@2d
    invoke-interface {v7, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@30
    .line 4286
    :cond_1
    :goto_2
    iget-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    if-nez v7, :cond_2

    #@34
    if-eqz p8, :cond_2

    #@36
    .line 4288
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@39
    move-result-object v7

    #@3a
    invoke-interface {v7, p1}, Landroid/app/IActivityManager;->activityRelaunched(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    :cond_2
    move-object v6, v5

    #@3e
    .line 4297
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v6, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_3
    if-nez v6, :cond_b

    #@40
    .line 4300
    :try_start_2
    new-instance v5, Landroid/app/ActivityThread$ActivityClientRecord;

    #@42
    invoke-direct {v5}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@45
    .line 4301
    .end local v6    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :try_start_3
    iput-object p1, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@47
    .line 4302
    iput-object p2, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    #@49
    .line 4303
    iput-object p3, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@4b
    .line 4304
    move/from16 v0, p9

    #@4d
    iput-boolean v0, v5, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    #@4f
    .line 4305
    if-nez p8, :cond_4

    #@51
    .line 4306
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    #@53
    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v2

    #@57
    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    #@59
    .line 4308
    .local v2, "existing":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_3

    #@5b
    .line 4311
    iget-boolean v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    #@5d
    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@5f
    .line 4312
    iget-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@61
    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@63
    .line 4314
    :cond_3
    const/4 v7, 0x1

    #@64
    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@66
    .line 4316
    .end local v2    # "existing":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_4
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    #@68
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6b
    .line 4317
    const/16 v7, 0x7e

    #@6d
    invoke-direct {p0, v7, v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    #@70
    .line 4320
    :goto_4
    if-eqz p8, :cond_5

    #@72
    .line 4321
    iput-boolean p5, v5, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    #@74
    .line 4322
    const/4 v7, 0x0

    #@75
    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    #@77
    .line 4324
    :cond_5
    if-eqz p6, :cond_6

    #@79
    .line 4325
    iput-object p6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    #@7b
    .line 4327
    :cond_6
    if-eqz p7, :cond_7

    #@7d
    .line 4328
    move-object/from16 v0, p7

    #@7f
    iput-object v0, v5, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    #@81
    .line 4330
    :cond_7
    iget v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    #@83
    or-int/2addr v7, p4

    #@84
    iput v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    #@86
    .line 4331
    invoke-direct {p0}, Landroid/app/ActivityThread;->getLifecycleSeq()I

    #@89
    move-result v7

    #@8a
    iput v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->relaunchSeq:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8c
    monitor-exit v8

    #@8d
    .line 4261
    return-void

    #@8e
    .line 4274
    .restart local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_8
    :try_start_4
    iput-object p2, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@90
    goto :goto_1

    #@91
    .line 4264
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v7

    #@92
    :goto_5
    monitor-exit v8

    #@93
    throw v7

    #@94
    .line 4281
    .restart local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_9
    :try_start_5
    iput-object p3, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    #@96
    goto :goto_2

    #@97
    .line 4289
    :catch_0
    move-exception v1

    #@98
    .line 4290
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@9b
    move-result-object v7

    #@9c
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@9d
    .line 4265
    .end local v1    # "e":Landroid/os/RemoteException;
    .local v5, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    #@9f
    goto/16 :goto_0

    #@a1
    .line 4264
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v6    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_1
    move-exception v7

    #@a2
    move-object v5, v6

    #@a3
    .end local v6    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v5, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_5

    #@a4
    .end local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v6    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_b
    move-object v5, v6

    #@a5
    .end local v6    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_4

    #@a6
    .local v5, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_c
    move-object v6, v5

    #@a7
    .restart local v6    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_3
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2413
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    #@2
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x400

    #@8
    .line 2412
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    #@b
    move-result-object v0

    #@c
    .line 2414
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    #@e
    .line 2417
    const/4 v1, -0x2

    #@f
    .line 2416
    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    #@12
    .line 2419
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
    .line 2507
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    #@5
    .line 2508
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    #@7
    .line 2509
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    #@9
    .line 2510
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    #@b
    .line 2511
    const/16 v1, 0x77

    #@d
    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    #@10
    .line 2506
    return-void
.end method

.method scheduleGcIdler()V
    .locals 2

    #@0
    .prologue
    .line 2059
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2060
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    #@7
    .line 2061
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    #@d
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@10
    .line 2063
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@12
    const/16 v1, 0x78

    #@14
    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    #@17
    .line 2058
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
    .line 2458
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2459
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    #@7
    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d
    .line 2460
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@f
    invoke-virtual {v1, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    #@12
    .line 2455
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
    .line 2425
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    #@5
    .line 2426
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    #@7
    .line 2427
    const/4 v1, 0x0

    #@8
    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    #@a
    .line 2428
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    #@c
    .line 2429
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    #@e
    .line 2430
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    #@10
    .line 2431
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    #@12
    .line 2432
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@14
    .line 2433
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    #@16
    .line 2446
    const/4 v1, 0x0

    #@17
    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public stopProfiling()V
    .locals 1

    #@0
    .prologue
    .line 4823
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    #@2
    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    #@5
    .line 4822
    return-void
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    #@0
    .prologue
    .line 2403
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@2
    monitor-enter v2

    #@3
    .line 2404
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/ArrayList;

    #@b
    .line 2405
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v0, :cond_0

    #@d
    .line 2406
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 2402
    return-void

    #@12
    .line 2403
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
    .line 2067
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2068
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    #@7
    .line 2069
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    #@d
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@10
    .line 2071
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    #@12
    const/16 v1, 0x78

    #@14
    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    #@17
    .line 2066
    return-void
.end method
