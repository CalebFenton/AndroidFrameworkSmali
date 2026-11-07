.class public final Landroid/os/StrictMode;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$ViolationLogger;,
        Landroid/os/StrictMode$ThreadPolicy;,
        Landroid/os/StrictMode$OnThreadViolationListener;,
        Landroid/os/StrictMode$AndroidBlockGuardPolicy;,
        Landroid/os/StrictMode$AndroidCloseGuardReporter;,
        Landroid/os/StrictMode$VmPolicy;,
        Landroid/os/StrictMode$OnVmViolationListener;,
        Landroid/os/StrictMode$ViolationInfo;,
        Landroid/os/StrictMode$BackgroundActivityLaunchCallback;,
        Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;,
        Landroid/os/StrictMode$Span;,
        Landroid/os/StrictMode$ThreadSpanState;,
        Landroid/os/StrictMode$InstanceTracker;,
        Landroid/os/StrictMode$VmPolicyMask;,
        Landroid/os/StrictMode$ThreadPolicyMask;
    }
.end annotation


# static fields
.field private static final greylist-max-o CLEARTEXT_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.clear"

.field static final blacklist DETECT_EXPLICIT_GC:J = 0x33e3c4L

.field private static final blacklist DETECT_THREAD_ALL:I = 0xffff

.field private static final blacklist DETECT_THREAD_CUSTOM:I = 0x8

.field private static final blacklist DETECT_THREAD_DISK_READ:I = 0x2

.field private static final blacklist DETECT_THREAD_DISK_WRITE:I = 0x1

.field private static final blacklist DETECT_THREAD_EXPLICIT_GC:I = 0x40

.field private static final blacklist DETECT_THREAD_NETWORK:I = 0x4

.field private static final blacklist DETECT_THREAD_RESOURCE_MISMATCH:I = 0x10

.field private static final blacklist DETECT_THREAD_UNBUFFERED_IO:I = 0x20

.field private static final blacklist DETECT_VM_ACTIVITY_LEAKS:I = 0x4

.field private static final blacklist DETECT_VM_ALL:I = 0xffff

.field private static final blacklist DETECT_VM_BACKGROUND_ACTIVITY_LAUNCH_ABORTED:I = 0x4000

.field private static final blacklist DETECT_VM_CLEARTEXT_NETWORK:I = 0x40

.field private static final blacklist DETECT_VM_CLOSABLE_LEAKS:I = 0x2

.field private static final blacklist DETECT_VM_CONTENT_URI_WITHOUT_PERMISSION:I = 0x80

.field private static final blacklist DETECT_VM_CREDENTIAL_PROTECTED_WHILE_LOCKED:I = 0x800

.field private static final blacklist DETECT_VM_CURSOR_LEAKS:I = 0x1

.field private static final blacklist DETECT_VM_FILE_URI_EXPOSURE:I = 0x20

.field private static final blacklist DETECT_VM_IMPLICIT_DIRECT_BOOT:I = 0x400

.field private static final blacklist DETECT_VM_INCORRECT_CONTEXT_USE:I = 0x1000

.field private static final blacklist DETECT_VM_INSTANCE_LEAKS:I = 0x8

.field private static final blacklist DETECT_VM_NON_SDK_API_USAGE:I = 0x200

.field private static final blacklist DETECT_VM_REGISTRATION_LEAKS:I = 0x10

.field private static final blacklist DETECT_VM_UNSAFE_INTENT_LAUNCH:I = 0x2000

.field private static final blacklist DETECT_VM_UNTAGGED_SOCKET:I = 0x100

.field private static final greylist-max-o DISABLE:Z = false

.field public static final greylist-max-o DISABLE_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.disable"

.field private static final greylist-max-o EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

.field private static final greylist-max-o LOG_V:Z

.field private static final greylist-max-o MAX_OFFENSES_PER_LOOP:I = 0xa

.field private static final greylist-max-o MAX_SPAN_TAGS:I = 0x14

.field private static final greylist-max-o MIN_DIALOG_INTERVAL_MS:J = 0x7530L

.field private static final blacklist MIN_DROPBOX_INTERVAL_MS:J = 0xbb8L

.field private static final greylist-max-o MIN_LOG_INTERVAL_MS:J = 0x3e8L

.field private static final greylist-max-o MIN_VM_INTERVAL_MS:J = 0x3e8L

.field public static final greylist-max-o NETWORK_POLICY_ACCEPT:I = 0x0

.field public static final greylist-max-o NETWORK_POLICY_LOG:I = 0x1

.field public static final greylist-max-o NETWORK_POLICY_REJECT:I = 0x2

.field private static final greylist-max-o NO_OP_SPAN:Landroid/os/StrictMode$Span;

.field public static final blacklist PENALTY_ALL:I = -0x10000

.field public static final greylist-max-o PENALTY_DEATH:I = 0x10000000

.field public static final greylist-max-o PENALTY_DEATH_ON_CLEARTEXT_NETWORK:I = 0x1000000

.field public static final greylist-max-o PENALTY_DEATH_ON_FILE_URI_EXPOSURE:I = 0x800000

.field public static final greylist-max-o PENALTY_DEATH_ON_NETWORK:I = 0x2000000

.field public static final greylist-max-o PENALTY_DIALOG:I = 0x20000000

.field public static final greylist-max-o PENALTY_DROPBOX:I = 0x4000000

.field public static final greylist-max-o PENALTY_FLASH:I = 0x8000000

.field public static final greylist-max-o PENALTY_GATHER:I = -0x80000000

.field public static final greylist-max-o PENALTY_LOG:I = 0x40000000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "StrictMode"

.field private static final greylist-max-o THREAD_ANDROID_POLICY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/StrictMode$AndroidBlockGuardPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o THREAD_HANDLER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o VISUAL_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.visual"

.field private static final blacklist VM_ANDROID_POLICY:Ldalvik/system/BlockGuard$VmPolicy;

.field private static final greylist-max-o gatheredViolations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile blacklist sCeStorageUnlocked:Z

.field private static final greylist-max-o sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final greylist-max-o sExpectedActivityInstanceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sIsIdlerRegistered:Z

.field private static greylist-max-o sLastInstanceCountCheckMillis:J

.field private static final greylist sLastVmViolationTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-o sLogger:Landroid/os/StrictMode$ViolationLogger;

.field private static final greylist-max-o sNonSdkApiUsageConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private static final blacklist sRealLastVmViolationTime:Landroid/util/SparseLongArray;

.field private static volatile blacklist sStorageManager:Landroid/os/storage/IStorageManager;

.field private static final greylist-max-o sThisThreadSpanState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/StrictMode$ThreadSpanState;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sThreadViolationExecutor:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sThreadViolationListener:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/StrictMode$OnThreadViolationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sUnsafeIntentCallback:Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;

.field private static volatile greylist-max-o sVmPolicy:Landroid/os/StrictMode$VmPolicy;

.field private static greylist sWindowManager:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist violationsBeingTimed:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_CLASS_LIMIT_MAP()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOGCAT_LOGGER()Landroid/os/StrictMode$ViolationLogger;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_V()Z
    .registers 1

    sget-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTHREAD_HANDLER()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->THREAD_HANDLER:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetgatheredViolations()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsExpectedActivityInstanceCount()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLastInstanceCountCheckMillis()J
    .registers 2

    sget-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLogger()Landroid/os/StrictMode$ViolationLogger;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsThisThreadSpanState()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsThreadViolationExecutor()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsThreadViolationListener()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsWindowManager()Landroid/util/Singleton;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetviolationsBeingTimed()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsLastInstanceCountCheckMillis(J)V
    .registers 2

    sput-wide p0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smclampViolationTimeMap(Landroid/util/SparseLongArray;J)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/os/StrictMode;->clampViolationTimeMap(Landroid/util/SparseLongArray;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smdropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smhandleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/StrictMode;->handleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smonCredentialProtectedPathAccess(Ljava/lang/String;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/StrictMode;->onCredentialProtectedPathAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smonUnsafeIntentLaunch(ILandroid/content/Intent;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(ILandroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smtooManyViolationsThisLoop()Z
    .registers 1

    invoke-static {}, Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 171
    const-string v0, "StrictMode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    .line 376
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    .line 380
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 390
    new-instance v0, Landroid/os/StrictMode$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/StrictMode$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    .line 401
    sget-object v0, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    sput-object v0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    .line 403
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    .line 405
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    .line 438
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 444
    new-instance v0, Landroid/os/StrictMode$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/os/StrictMode$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sNonSdkApiUsageConsumer:Ljava/util/function/Consumer;

    .line 1293
    new-instance v0, Landroid/os/StrictMode$1;

    invoke-direct {v0}, Landroid/os/StrictMode$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    .line 1623
    new-instance v0, Landroid/os/StrictMode$2;

    invoke-direct {v0}, Landroid/os/StrictMode$2;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    .line 1632
    new-instance v0, Landroid/os/StrictMode$3;

    invoke-direct {v0}, Landroid/os/StrictMode$3;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->THREAD_HANDLER:Ljava/lang/ThreadLocal;

    .line 1640
    new-instance v0, Landroid/os/StrictMode$4;

    invoke-direct {v0}, Landroid/os/StrictMode$4;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->THREAD_ANDROID_POLICY:Ljava/lang/ThreadLocal;

    .line 1971
    new-instance v0, Landroid/os/StrictMode$5;

    invoke-direct {v0}, Landroid/os/StrictMode$5;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->VM_ANDROID_POLICY:Ldalvik/system/BlockGuard$VmPolicy;

    .line 2110
    const-wide/16 v2, 0x0

    sput-wide v2, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    .line 2111
    sput-boolean v1, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 2112
    new-instance v0, Landroid/os/StrictMode$6;

    invoke-direct {v0}, Landroid/os/StrictMode$6;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 2491
    sput-boolean v1, Landroid/os/StrictMode;->sCeStorageUnlocked:Z

    .line 2544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    .line 2545
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sRealLastVmViolationTime:Landroid/util/SparseLongArray;

    .line 2775
    new-instance v0, Landroid/os/StrictMode$7;

    invoke-direct {v0}, Landroid/os/StrictMode$7;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 2798
    new-instance v0, Landroid/os/StrictMode$8;

    invoke-direct {v0}, Landroid/os/StrictMode$8;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    .line 2807
    new-instance v0, Landroid/os/StrictMode$9;

    invoke-direct {v0}, Landroid/os/StrictMode$9;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    .line 2930
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .registers 5

    .line 1445
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    .line 1446
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v1

    sget-object v2, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    .line 1447
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$OnThreadViolationListener;

    sget-object v3, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    .line 1448
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    .line 1445
    return-object v0
.end method

.method public static greylist-max-o allowThreadDiskReadsMask()I
    .registers 2

    .line 1454
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v0

    .line 1455
    .local v0, "oldPolicyMask":I
    and-int/lit8 v1, v0, -0x3

    .line 1456
    .local v1, "newPolicyMask":I
    if-eq v1, v0, :cond_b

    .line 1457
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1459
    :cond_b
    return v0
.end method

.method public static whitelist allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    .registers 5

    .line 1420
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    .line 1421
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v1

    sget-object v2, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    .line 1422
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$OnThreadViolationListener;

    sget-object v3, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    .line 1423
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    .line 1420
    return-object v0
.end method

.method public static greylist-max-o allowThreadDiskWritesMask()I
    .registers 2

    .line 1429
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v0

    .line 1430
    .local v0, "oldPolicyMask":I
    and-int/lit8 v1, v0, -0x4

    .line 1431
    .local v1, "newPolicyMask":I
    if-eq v1, v0, :cond_b

    .line 1432
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1434
    :cond_b
    return v0
.end method

.method public static greylist-max-o allowThreadViolations()Landroid/os/StrictMode$ThreadPolicy;
    .registers 2

    .line 1464
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1465
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1466
    return-object v0
.end method

.method public static greylist-max-o allowVmViolations()Landroid/os/StrictMode$VmPolicy;
    .registers 2

    .line 1471
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 1472
    .local v0, "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    sget-object v1, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    sput-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1473
    return-object v0
.end method

.method public static blacklist assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 2423
    invoke-static {}, Landroid/os/StrictMode;->vmIncorrectContextUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p0}, Landroid/content/Context;->isConfigurationContext()Z

    move-result v0

    if-nez v0, :cond_66

    .line 2424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to access the API:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " which needs to have proper configuration from a non-UI Context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2426
    .local v0, "errorMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The API:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs a proper configuration. Use UI contexts such as an activity or a context created via createWindowContext(Display, int, Bundle) or  createConfigurationContext(Configuration) with a proper configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2430
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalAccessException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 2431
    .local v2, "exception":Ljava/lang/Exception;
    invoke-static {v1, v2}, Landroid/os/StrictMode;->onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StrictMode"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2434
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_66
    return-void
.end method

.method public static blacklist assertUiContext(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 2449
    invoke-static {}, Landroid/os/StrictMode;->vmIncorrectContextUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Landroid/content/Context;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_60

    .line 2450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to access UI related API:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from a non-UI Context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2452
    .local v0, "errorMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be accessed from Activity or other UI Contexts. Use an Activity or a Context created with Context#createWindowContext(int, Bundle), which are adjusted to the configuration and visual bounds of an area on screen."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2456
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalAccessException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 2457
    .local v2, "exception":Ljava/lang/Exception;
    invoke-static {v1, v2}, Landroid/os/StrictMode;->onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StrictMode"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2460
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_60
    return-void
.end method

.method private static blacklist clampViolationTimeMap(Landroid/util/SparseLongArray;J)V
    .registers 6
    .param p0, "violationTime"    # Landroid/util/SparseLongArray;
    .param p1, "retainSince"    # J

    .line 2552
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 2553
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_13

    .line 2555
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    goto :goto_1

    .line 2557
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2562
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method static greylist-max-o clearGatheredViolations()V
    .registers 2

    .line 2075
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2076
    return-void
.end method

.method public static greylist conditionallyCheckInstanceCounts()V
    .registers 12

    .line 2082
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 2083
    .local v0, "policy":Landroid/os/StrictMode$VmPolicy;
    iget-object v1, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 2084
    .local v1, "policySize":I
    if-nez v1, :cond_d

    .line 2085
    return-void

    .line 2089
    :cond_d
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v2

    .line 2090
    .local v2, "oldMask":I
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2091
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2092
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2093
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2094
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2098
    iget-object v4, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Class;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Class;

    .line 2099
    .local v4, "classes":[Ljava/lang/Class;
    invoke-static {v4, v3}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v3

    .line 2100
    .local v3, "instanceCounts":[J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    array-length v6, v4

    if-ge v5, v6, :cond_57

    .line 2101
    aget-object v6, v4, v5

    .line 2102
    .local v6, "klass":Ljava/lang/Class;
    iget-object v7, v0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2103
    .local v7, "limit":I
    aget-wide v8, v3, v5

    .line 2104
    .local v8, "instances":J
    int-to-long v10, v7

    cmp-long v10, v8, v10

    if-lez v10, :cond_54

    .line 2105
    new-instance v10, Landroid/os/strictmode/InstanceCountViolation;

    invoke-direct {v10, v6, v8, v9, v7}, Landroid/os/strictmode/InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    invoke-static {v10}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2100
    .end local v6    # "klass":Ljava/lang/Class;
    .end local v7    # "limit":I
    .end local v8    # "instances":J
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 2108
    .end local v5    # "i":I
    :cond_57
    return-void
.end method

.method public static greylist-max-o decrementExpectedActivityCount(Ljava/lang/Class;)V
    .registers 7
    .param p0, "klass"    # Ljava/lang/Class;

    .line 2964
    if-nez p0, :cond_3

    .line 2965
    return-void

    .line 2969
    :cond_3
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 2970
    :try_start_6
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_10

    .line 2971
    monitor-exit v0

    return-void

    .line 2974
    :cond_10
    sget-object v1, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2975
    .local v1, "expected":Ljava/lang/Integer;
    const/4 v2, 0x0

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_22

    goto :goto_29

    :cond_22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    :cond_29
    :goto_29
    move v3, v2

    .line 2976
    .local v3, "newExpected":I
    :goto_2a
    if-nez v3, :cond_32

    .line 2977
    sget-object v4, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 2979
    :cond_32
    sget-object v4, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2984
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    .line 2985
    .end local v1    # "expected":Ljava/lang/Integer;
    .local v3, "limit":I
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_60

    .line 2988
    invoke-static {p0}, Landroid/os/StrictMode$InstanceTracker;->getInstanceCount(Ljava/lang/Class;)I

    move-result v0

    .line 2989
    .local v0, "actual":I
    if-gt v0, v3, :cond_45

    .line 2990
    return-void

    .line 3001
    :cond_45
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3002
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 3003
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3005
    invoke-static {p0, v2}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v1

    .line 3006
    .local v1, "instances":J
    int-to-long v4, v3

    cmp-long v4, v1, v4

    if-lez v4, :cond_5f

    .line 3007
    new-instance v4, Landroid/os/strictmode/InstanceCountViolation;

    invoke-direct {v4, p0, v1, v2, v3}, Landroid/os/strictmode/InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    invoke-static {v4}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 3009
    :cond_5f
    return-void

    .line 2985
    .end local v0    # "actual":I
    .end local v1    # "instances":J
    .end local v3    # "limit":I
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public static greylist disableDeathOnFileUriExposure()V
    .registers 6

    .line 1612
    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    const v2, -0x800021

    and-int/2addr v1, v2

    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v2, v2, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    sget-object v3, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v3, v3, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    sget-object v4, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v4, v4, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1620
    return-void
.end method

.method private static greylist-max-o dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 5
    .param p0, "penaltyMask"    # I
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .line 2007
    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2008
    .local v0, "outstanding":I
    const/16 v1, 0x14

    if-le v0, v1, :cond_10

    .line 2011
    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2012
    return-void

    .line 2015
    :cond_10
    sget-boolean v1, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropboxing async; in-flight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StrictMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_2c
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/os/StrictMode$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Landroid/os/StrictMode$$ExternalSyntheticLambda3;-><init>(ILandroid/os/StrictMode$ViolationInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2022
    return-void
.end method

.method public static greylist enableDeathOnFileUriExposure()V
    .registers 6

    .line 1594
    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    or-int/lit8 v1, v1, 0x20

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v2, v2, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    sget-object v3, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v3, v3, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    sget-object v4, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget-object v4, v4, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1602
    return-void
.end method

.method public static whitelist enableDefaults()V
    .registers 1

    .line 2254
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2255
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 2256
    return-void
.end method

.method public static greylist enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 2829
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_7

    .line 2830
    sget-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    return-object v0

    .line 2832
    :cond_7
    if-eqz p0, :cond_88

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    .line 2835
    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/StrictMode$ThreadSpanState;

    .line 2836
    .local v0, "state":Landroid/os/StrictMode$ThreadSpanState;
    const/4 v1, 0x0

    .line 2837
    .local v1, "span":Landroid/os/StrictMode$Span;
    monitor-enter v0

    .line 2838
    :try_start_19
    iget-object v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_2d

    .line 2839
    iget-object v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    move-object v1, v2

    .line 2840
    invoke-static {v1}, Landroid/os/StrictMode$Span;->-$$Nest$fgetmNext(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v2

    iput-object v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 2841
    iget v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    goto :goto_33

    .line 2844
    :cond_2d
    new-instance v2, Landroid/os/StrictMode$Span;

    invoke-direct {v2, v0}, Landroid/os/StrictMode$Span;-><init>(Landroid/os/StrictMode$ThreadSpanState;)V

    .end local v1    # "span":Landroid/os/StrictMode$Span;
    .local v2, "span":Landroid/os/StrictMode$Span;
    move-object v1, v2

    .line 2846
    .end local v2    # "span":Landroid/os/StrictMode$Span;
    .restart local v1    # "span":Landroid/os/StrictMode$Span;
    :goto_33
    invoke-static {v1, p0}, Landroid/os/StrictMode$Span;->-$$Nest$fputmName(Landroid/os/StrictMode$Span;Ljava/lang/String;)V

    .line 2847
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/os/StrictMode$Span;->-$$Nest$fputmCreateMillis(Landroid/os/StrictMode$Span;J)V

    .line 2848
    iget-object v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    invoke-static {v1, v2}, Landroid/os/StrictMode$Span;->-$$Nest$fputmNext(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)V

    .line 2849
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/StrictMode$Span;->-$$Nest$fputmPrev(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)V

    .line 2850
    iput-object v1, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 2851
    iget v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 2852
    invoke-static {v1}, Landroid/os/StrictMode$Span;->-$$Nest$fgetmNext(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 2853
    invoke-static {v1}, Landroid/os/StrictMode$Span;->-$$Nest$fgetmNext(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/os/StrictMode$Span;->-$$Nest$fputmPrev(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)V

    .line 2855
    :cond_5b
    sget-boolean v2, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v2, :cond_83

    const-string v2, "StrictMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Span enter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    :cond_83
    monitor-exit v0

    .line 2857
    return-object v1

    .line 2856
    :catchall_85
    move-exception v2

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_19 .. :try_end_87} :catchall_85

    throw v2

    .line 2833
    .end local v0    # "state":Landroid/os/StrictMode$ThreadSpanState;
    .end local v1    # "span":Landroid/os/StrictMode$Span;
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must be non-null and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;
    .registers 5

    .line 1404
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    .line 1405
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    sget-object v2, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    .line 1406
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$OnThreadViolationListener;

    sget-object v3, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    .line 1407
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    .line 1404
    return-object v0
.end method

.method public static greylist getThreadPolicyMask()I
    .registers 2

    .line 1384
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 1385
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v1, :cond_10

    .line 1386
    move-object v1, v0

    check-cast v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->getThreadPolicyMask()I

    move-result v1

    return v1

    .line 1388
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getThreadPolicyMask$ravenwood()I
    .registers 1

    .line 1395
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    .registers 2

    .line 2241
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 2242
    :try_start_3
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    monitor-exit v0

    return-object v1

    .line 2243
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static greylist-max-o handleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 6
    .param p0, "penaltyMask"    # I
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .line 2026
    const-string v0, "StrictMode"

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 2032
    .local v1, "oldMask":I
    const/4 v2, 0x0

    :try_start_7
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2034
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 2035
    .local v2, "am":Landroid/app/IActivityManager;
    if-nez v2, :cond_16

    .line 2036
    const-string v3, "No activity manager; failed to Dropbox violation."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 2038
    :cond_16
    nop

    .line 2039
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v3

    .line 2038
    invoke-interface {v2, v3, p0, p1}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1e} :catch_21
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    goto :goto_2c

    .line 2048
    .end local v2    # "am":Landroid/app/IActivityManager;
    :catchall_1f
    move-exception v0

    goto :goto_31

    .line 2041
    :catch_21
    move-exception v2

    .line 2042
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_22
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_27

    goto :goto_2c

    .line 2045
    :cond_27
    const-string v3, "RemoteException handling StrictMode violation"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_1f

    .line 2048
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2c
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2049
    nop

    .line 2050
    return-void

    .line 2048
    :goto_31
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 2049
    throw v0
.end method

.method static greylist-max-o hasGatheredViolations()Z
    .registers 1

    .line 2067
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-r incrementExpectedActivityCount(Ljava/lang/Class;)V
    .registers 5
    .param p0, "klass"    # Ljava/lang/Class;

    .line 2945
    if-nez p0, :cond_3

    .line 2946
    return-void

    .line 2949
    :cond_3
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 2950
    :try_start_6
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_10

    .line 2951
    monitor-exit v0

    return-void

    .line 2955
    :cond_10
    sget-object v1, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2957
    .local v1, "expected":Ljava/lang/Integer;
    if-nez v1, :cond_21

    invoke-static {p0}, Landroid/os/StrictMode$InstanceTracker;->getInstanceCount(Ljava/lang/Class;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2958
    .local v2, "newExpected":Ljava/lang/Integer;
    sget-object v3, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2959
    nop

    .end local v1    # "expected":Ljava/lang/Integer;
    .end local v2    # "newExpected":Ljava/lang/Integer;
    monitor-exit v0

    .line 2960
    return-void

    .line 2959
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public static greylist-max-o initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 1520
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 1522
    .local v0, "builder":Landroid/os/StrictMode$ThreadPolicy$Builder;
    if-eqz p0, :cond_a

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_c

    :cond_a
    const/16 v1, 0x2710

    .line 1525
    .local v1, "targetSdkVersion":I
    :goto_c
    const/16 v2, 0xb

    if-lt v1, v2, :cond_16

    .line 1526
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1527
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeathOnNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1530
    :cond_16
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-nez v2, :cond_4c

    const-string/jumbo v2, "persist.sys.strictmode.disable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_4c

    .line 1532
    :cond_25
    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v2, :cond_2d

    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_4c

    .line 1534
    :cond_2d
    invoke-static {p0}, Landroid/os/StrictMode;->isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1535
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1536
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1537
    const-string/jumbo v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1538
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1540
    :cond_45
    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_4c

    .line 1541
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1546
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1547
    return-void
.end method

.method public static greylist-max-o initVmDefaults(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 1555
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 1557
    .local v0, "builder":Landroid/os/StrictMode$VmPolicy$Builder;
    if-eqz p0, :cond_a

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_c

    :cond_a
    const/16 v1, 0x2710

    .line 1560
    .local v1, "targetSdkVersion":I
    :goto_c
    const/16 v2, 0x18

    if-lt v1, v2, :cond_16

    .line 1561
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1562
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeathOnFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1565
    :cond_16
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-nez v2, :cond_4c

    const-string/jumbo v2, "persist.sys.strictmode.disable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_4c

    .line 1567
    :cond_25
    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v2, :cond_39

    .line 1570
    invoke-static {p0}, Landroid/os/StrictMode;->isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1571
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1572
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->permitActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1573
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    goto :goto_4c

    .line 1575
    :cond_39
    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_4c

    .line 1577
    invoke-static {p0}, Landroid/os/StrictMode;->isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1578
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1579
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1580
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1584
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1585
    return-void
.end method

.method public static greylist-max-o isBundledSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 1489
    const/4 v0, 0x1

    if-eqz p0, :cond_50

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_50

    .line 1492
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    .line 1494
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.vending"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1495
    const-string v3, "com.android.chrome"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_4e

    .line 1501
    :cond_24
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.phone"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1502
    return v2

    .line 1505
    :cond_2f
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1506
    const-string v3, "android."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1507
    const-string v3, "com.android."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1508
    :cond_4d
    return v0

    .line 1496
    :cond_4e
    :goto_4e
    return v2

    .line 1511
    :cond_4f
    return v2

    .line 1491
    :cond_50
    :goto_50
    return v0
.end method

.method private static blacklist isCeStorageUnlocked(I)Z
    .registers 4
    .param p0, "userId"    # I

    .line 2500
    sget-object v0, Landroid/os/StrictMode;->sStorageManager:Landroid/os/storage/IStorageManager;

    .line 2501
    .local v0, "storage":Landroid/os/storage/IStorageManager;
    if-nez v0, :cond_14

    .line 2502
    nop

    .line 2503
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 2506
    if-eqz v0, :cond_14

    .line 2507
    sput-object v0, Landroid/os/StrictMode;->sStorageManager:Landroid/os/storage/IStorageManager;

    .line 2510
    :cond_14
    if-eqz v0, :cond_1f

    .line 2512
    :try_start_16
    invoke-interface {v0, p0}, Landroid/os/storage/IStorageManager;->isCeStorageUnlocked(I)Z

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1a} :catch_1b

    return v1

    .line 2513
    :catch_1b
    move-exception v1

    .line 2515
    .local v1, "ignored":Landroid/os/RemoteException;
    const/4 v2, 0x0

    sput-object v2, Landroid/os/StrictMode;->sStorageManager:Landroid/os/storage/IStorageManager;

    .line 2518
    .end local v1    # "ignored":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic blacklist lambda$dropboxViolationAsync$2(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 5
    .param p0, "penaltyMask"    # I
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .line 2018
    invoke-static {p0, p1}, Landroid/os/StrictMode;->handleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 2019
    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 2020
    .local v0, "outstandingInner":I
    sget-boolean v1, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropbox complete; in-flight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StrictMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    :cond_25
    return-void
.end method

.method static synthetic blacklist lambda$onVmPolicyViolation$3(Landroid/os/StrictMode$OnVmViolationListener;Landroid/os/strictmode/Violation;)V
    .registers 4
    .param p0, "listener"    # Landroid/os/StrictMode$OnVmViolationListener;
    .param p1, "violation"    # Landroid/os/strictmode/Violation;

    .line 2635
    invoke-static {}, Landroid/os/StrictMode;->allowVmViolations()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 2637
    .local v0, "oldPolicy":Landroid/os/StrictMode$VmPolicy;
    :try_start_4
    invoke-interface {p0, p1}, Landroid/os/StrictMode$OnVmViolationListener;->onVmViolation(Landroid/os/strictmode/Violation;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 2639
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 2640
    nop

    .line 2641
    return-void

    .line 2639
    :catchall_c
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 2640
    throw v1
.end method

.method static synthetic blacklist lambda$static$0(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 4
    .param p0, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .line 393
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrictMode policy violation; ~duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_23

    .line 396
    .end local v0    # "msg":Ljava/lang/String;
    :cond_21
    const-string v0, "StrictMode policy violation:"

    .line 398
    .restart local v0    # "msg":Ljava/lang/String;
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StrictMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method static synthetic blacklist lambda$static$1(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 445
    new-instance v0, Landroid/os/strictmode/NonSdkApiUsedViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/NonSdkApiUsedViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    return-void
.end method

.method public static greylist-max-o noteDiskRead()V
    .registers 2

    .line 2911
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2912
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 2914
    return-void

    .line 2916
    :cond_9
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 2917
    return-void
.end method

.method public static greylist-max-o noteDiskWrite()V
    .registers 2

    .line 2921
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2922
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 2924
    return-void

    .line 2926
    :cond_9
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 2927
    return-void
.end method

.method public static greylist-max-o noteResourceMismatch(Ljava/lang/Object;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/Object;

    .line 2891
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2892
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 2894
    return-void

    .line 2896
    :cond_9
    move-object v1, v0

    check-cast v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v1, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onResourceMismatch(Ljava/lang/Object;)V

    .line 2897
    return-void
.end method

.method public static whitelist noteSlowCall(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 2868
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2869
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 2871
    return-void

    .line 2873
    :cond_9
    move-object v1, v0

    check-cast v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v1, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onCustomSlowCall(Ljava/lang/String;)V

    .line 2874
    return-void
.end method

.method public static greylist-max-o noteUnbufferedIO()V
    .registers 2

    .line 2901
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2902
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 2904
    return-void

    .line 2906
    :cond_9
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onUnbufferedIO()V

    .line 2907
    return-void
.end method

.method public static blacklist noteUntaggedSocket()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2879
    invoke-static {}, Landroid/os/StrictMode;->vmUntaggedSocketEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/os/StrictMode;->onUntaggedSocket()V

    .line 2880
    :cond_9
    return-void
.end method

.method public static blacklist onBackgroundActivityLaunchAborted(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 2487
    new-instance v0, Landroid/os/strictmode/BackgroundActivityLaunchViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/BackgroundActivityLaunchViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2488
    return-void
.end method

.method private static greylist-max-r onBinderStrictModePolicyChange(I)V
    .registers 1
    .param p0, "newPolicy"    # I

    .line 2695
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 2696
    return-void
.end method

.method private static blacklist onBinderStrictModePolicyChange$ravenwood(I)V
    .registers 1
    .param p0, "newPolicy"    # I

    .line 2700
    return-void
.end method

.method public static greylist-max-o onCleartextNetworkDetected([B)V
    .registers 7
    .param p0, "firstPacket"    # [B

    .line 2356
    const/4 v0, 0x0

    .line 2357
    .local v0, "rawAddr":[B
    const/4 v1, 0x0

    if-eqz p0, :cond_2e

    .line 2358
    array-length v2, p0

    const/16 v3, 0x14

    const/16 v4, 0x10

    if-lt v2, v3, :cond_1a

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1a

    .line 2360
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 2361
    invoke-static {p0, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e

    .line 2362
    :cond_1a
    array-length v2, p0

    const/16 v3, 0x28

    if-lt v2, v3, :cond_2e

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x60

    if-ne v2, v3, :cond_2e

    .line 2364
    new-array v0, v4, [B

    .line 2365
    const/16 v2, 0x18

    invoke-static {p0, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2369
    :cond_2e
    :goto_2e
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 2370
    .local v2, "uid":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Detected cleartext network traffic from UID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2371
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2372
    .local v3, "msg":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_4e

    .line 2374
    :try_start_3f
    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_4c
    .catch Ljava/net/UnknownHostException; {:try_start_3f .. :try_end_4c} :catch_4d

    .line 2376
    goto :goto_4e

    .line 2375
    :catch_4d
    move-exception v4

    .line 2378
    :cond_4e
    :goto_4e
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2379
    sget-object v4, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v4, v4, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v5, 0x1000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_69

    const/4 v1, 0x1

    .line 2380
    .local v1, "forceDeath":Z
    :cond_69
    new-instance v4, Landroid/os/strictmode/CleartextNetworkViolation;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/strictmode/CleartextNetworkViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;Z)V

    .line 2381
    return-void
.end method

.method public static greylist-max-o onContentUriWithoutPermission(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "location"    # Ljava/lang/String;

    .line 2351
    new-instance v0, Landroid/os/strictmode/ContentUriWithoutPermissionViolation;

    invoke-direct {v0, p0, p1}, Landroid/os/strictmode/ContentUriWithoutPermissionViolation;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2352
    return-void
.end method

.method private static blacklist onCredentialProtectedPathAccess(Ljava/lang/String;I)V
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 2526
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne p1, v0, :cond_15

    .line 2527
    sget-boolean v0, Landroid/os/StrictMode;->sCeStorageUnlocked:Z

    if-eqz v0, :cond_b

    .line 2528
    return-void

    .line 2529
    :cond_b
    invoke-static {p1}, Landroid/os/StrictMode;->isCeStorageUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2530
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/StrictMode;->sCeStorageUnlocked:Z

    .line 2531
    return-void

    .line 2533
    :cond_15
    invoke-static {p1}, Landroid/os/StrictMode;->isCeStorageUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2534
    return-void

    .line 2537
    :cond_1c
    new-instance v0, Landroid/os/strictmode/CredentialProtectedWhileLockedViolation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessed credential protected path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was locked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/strictmode/CredentialProtectedWhileLockedViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2540
    return-void
.end method

.method public static greylist-max-o onFileUriExposed(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "location"    # Ljava/lang/String;

    .line 2341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exposed beyond app through "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2342
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v1, v1, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_29

    .line 2345
    new-instance v1, Landroid/os/strictmode/FileUriExposedViolation;

    invoke-direct {v1, v0}, Landroid/os/strictmode/FileUriExposedViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2347
    return-void

    .line 2343
    :cond_29
    new-instance v1, Landroid/os/FileUriExposedException;

    invoke-direct {v1, v0}, Landroid/os/FileUriExposedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist onImplicitDirectBoot()V
    .registers 1

    .line 2390
    new-instance v0, Landroid/os/strictmode/ImplicitDirectBootViolation;

    invoke-direct {v0}, Landroid/os/strictmode/ImplicitDirectBootViolation;-><init>()V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2391
    return-void
.end method

.method public static blacklist onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "originStack"    # Ljava/lang/Throwable;

    .line 2395
    new-instance v0, Landroid/os/strictmode/IncorrectContextUseViolation;

    invoke-direct {v0, p0, p1}, Landroid/os/strictmode/IncorrectContextUseViolation;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2396
    return-void
.end method

.method public static greylist-max-o onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .line 2331
    new-instance v0, Landroid/os/strictmode/IntentReceiverLeakedViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/IntentReceiverLeakedViolation;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2332
    return-void
.end method

.method public static greylist-max-o onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .line 2336
    new-instance v0, Landroid/os/strictmode/ServiceConnectionLeakedViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/ServiceConnectionLeakedViolation;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2337
    return-void
.end method

.method public static greylist-max-o onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "originStack"    # Ljava/lang/Throwable;

    .line 2320
    new-instance v0, Landroid/os/strictmode/SqliteObjectLeakedViolation;

    invoke-direct {v0, p0, p1}, Landroid/os/strictmode/SqliteObjectLeakedViolation;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2321
    return-void
.end method

.method private static blacklist onUnsafeIntentLaunch(ILandroid/content/Intent;)V
    .registers 5
    .param p0, "type"    # I
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2469
    packed-switch p0, :pswitch_data_28

    .line 2480
    return-void

    .line 2477
    :pswitch_4
    const-string v0, "Intent mismatch target component intent filter: "

    .line 2478
    .local v0, "msg":Ljava/lang/String;
    goto :goto_d

    .line 2474
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_7
    const-string v0, "Implicit intent matching internal non-exported component: "

    .line 2475
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_d

    .line 2471
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_a
    const-string v0, "Launch of intent with null action: "

    .line 2472
    .restart local v0    # "msg":Ljava/lang/String;
    nop

    .line 2482
    :goto_d
    new-instance v1, Landroid/os/strictmode/UnsafeIntentLaunchViolation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/os/strictmode/UnsafeIntentLaunchViolation;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2483
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_a
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public static blacklist onUnsafeIntentLaunch(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 2464
    new-instance v0, Landroid/os/strictmode/UnsafeIntentLaunchViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/UnsafeIntentLaunchViolation;-><init>(Landroid/content/Intent;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2465
    return-void
.end method

.method public static greylist-max-o onUntaggedSocket()V
    .registers 1

    .line 2385
    new-instance v0, Landroid/os/strictmode/UntaggedSocketViolation;

    invoke-direct {v0}, Landroid/os/strictmode/UntaggedSocketViolation;-><init>()V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2386
    return-void
.end method

.method public static greylist-max-o onVmPolicyViolation(Landroid/os/strictmode/Violation;)V
    .registers 2
    .param p0, "originStack"    # Landroid/os/strictmode/Violation;

    .line 2566
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;Z)V

    .line 2567
    return-void
.end method

.method public static greylist-max-o onVmPolicyViolation(Landroid/os/strictmode/Violation;Z)V
    .registers 23
    .param p0, "violation"    # Landroid/os/strictmode/Violation;
    .param p1, "forceDeath"    # Z

    .line 2571
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 2572
    .local v2, "vmPolicy":Landroid/os/StrictMode$VmPolicy;
    iget v0, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v3, 0x4000000

    and-int/2addr v0, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_11

    move v0, v4

    goto :goto_12

    :cond_11
    move v0, v5

    :goto_12
    move v6, v0

    .line 2573
    .local v6, "penaltyDropbox":Z
    iget v0, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v7, 0x10000000

    and-int/2addr v0, v7

    if-nez v0, :cond_1f

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    move v0, v5

    goto :goto_20

    :cond_1f
    :goto_1f
    move v0, v4

    :goto_20
    move v7, v0

    .line 2574
    .local v7, "penaltyDeath":Z
    iget v0, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v0, v8

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    move v4, v5

    .line 2576
    .local v4, "penaltyLog":Z
    :goto_2a
    iget v0, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v8, -0x10000

    and-int/2addr v8, v0

    .line 2577
    .local v8, "penaltyMask":I
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    invoke-direct {v0, v1, v8}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/strictmode/Violation;I)V

    move-object v9, v0

    .line 2580
    .local v9, "info":Landroid/os/StrictMode$ViolationInfo;
    iput v5, v9, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2581
    const/4 v0, 0x0

    iput-object v0, v9, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 2582
    iput-object v0, v9, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 2584
    invoke-virtual {v9}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2585
    .local v5, "fingerprint":Ljava/lang/Integer;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2587
    .local v10, "now":J
    const-wide v12, 0x7fffffffffffffffL

    .line 2588
    .local v12, "timeSinceLastViolationMillis":J
    sget-object v0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    sget-object v14, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    move/from16 v16, v4

    .end local v4    # "penaltyLog":Z
    .local v16, "penaltyLog":Z
    const-wide/16 v3, 0x3e8

    if-ne v0, v14, :cond_91

    .line 2589
    sget-object v14, Landroid/os/StrictMode;->sRealLastVmViolationTime:Landroid/util/SparseLongArray;

    monitor-enter v14

    .line 2590
    :try_start_5a
    sget-object v0, Landroid/os/StrictMode;->sRealLastVmViolationTime:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_72

    .line 2591
    sget-object v0, Landroid/os/StrictMode;->sRealLastVmViolationTime:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v17

    .line 2592
    .local v17, "lastViolationTime":J
    sub-long v12, v10, v17

    .line 2594
    .end local v17    # "lastViolationTime":J
    :cond_72
    cmp-long v0, v12, v3

    if-lez v0, :cond_7f

    .line 2595
    sget-object v0, Landroid/os/StrictMode;->sRealLastVmViolationTime:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v0, v15, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2597
    :cond_7f
    sget-object v0, Landroid/os/StrictMode;->sRealLastVmViolationTime:Landroid/util/SparseLongArray;

    .line 2598
    invoke-static {v3, v4, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    move-wide/from16 v19, v3

    sub-long v3, v10, v17

    .line 2597
    invoke-static {v0, v3, v4}, Landroid/os/StrictMode;->clampViolationTimeMap(Landroid/util/SparseLongArray;J)V

    .line 2599
    monitor-exit v14

    goto :goto_93

    :catchall_8e
    move-exception v0

    monitor-exit v14
    :try_end_90
    .catchall {:try_start_5a .. :try_end_90} :catchall_8e

    throw v0

    .line 2588
    :cond_91
    move-wide/from16 v19, v3

    .line 2601
    :goto_93
    cmp-long v0, v12, v19

    if-gtz v0, :cond_98

    .line 2603
    return-void

    .line 2606
    :cond_98
    if-eqz v16, :cond_a7

    sget-object v0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    if-eqz v0, :cond_a7

    cmp-long v0, v12, v19

    if-lez v0, :cond_a7

    .line 2607
    sget-object v0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    invoke-interface {v0, v9}, Landroid/os/StrictMode$ViolationLogger;->log(Landroid/os/StrictMode$ViolationInfo;)V

    .line 2610
    :cond_a7
    if-eqz v6, :cond_b6

    .line 2611
    if-eqz v7, :cond_b1

    .line 2612
    const/high16 v15, 0x4000000

    invoke-static {v15, v9}, Landroid/os/StrictMode;->handleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V

    goto :goto_b6

    .line 2617
    :cond_b1
    const/high16 v15, 0x4000000

    invoke-static {v15, v9}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 2621
    :cond_b6
    :goto_b6
    if-eqz v7, :cond_cb

    .line 2622
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "StrictMode VmPolicy violation with POLICY_DEATH; shutting down."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2623
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2624
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 2629
    :cond_cb
    iget-object v0, v2, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    if-eqz v0, :cond_e8

    iget-object v0, v2, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_e8

    .line 2630
    iget-object v3, v2, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    .line 2632
    .local v3, "listener":Landroid/os/StrictMode$OnVmViolationListener;
    :try_start_d5
    iget-object v0, v2, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/os/StrictMode$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v1}, Landroid/os/StrictMode$$ExternalSyntheticLambda0;-><init>(Landroid/os/StrictMode$OnVmViolationListener;Landroid/os/strictmode/Violation;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_df
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_d5 .. :try_end_df} :catch_e0

    .line 2644
    goto :goto_e8

    .line 2642
    :catch_e0
    move-exception v0

    .line 2643
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v4, "StrictMode"

    const-string v14, "VmPolicy penaltyCallback failed"

    invoke-static {v4, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2646
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .end local v3    # "listener":Landroid/os/StrictMode$OnVmViolationListener;
    :cond_e8
    :goto_e8
    return-void
.end method

.method public static greylist onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .line 2326
    new-instance v0, Landroid/os/strictmode/WebViewMethodCalledOnWrongThreadViolation;

    invoke-direct {v0, p0}, Landroid/os/strictmode/WebViewMethodCalledOnWrongThreadViolation;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2327
    return-void
.end method

.method static greylist-max-o readAndHandleBinderCallViolations(Landroid/os/Parcel;)V
    .registers 11
    .param p0, "p"    # Landroid/os/Parcel;

    .line 2671
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 2672
    .local v0, "localCallSite":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 2673
    .local v1, "policyMask":I
    const/high16 v2, -0x80000000

    and-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_12

    move v2, v4

    goto :goto_13

    :cond_12
    move v2, v3

    .line 2675
    .local v2, "currentlyGathering":Z
    :goto_13
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2676
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_18
    if-ge v6, v5, :cond_38

    .line 2677
    new-instance v7, Landroid/os/StrictMode$ViolationInfo;

    if-nez v2, :cond_20

    move v8, v4

    goto :goto_21

    :cond_20
    move v8, v3

    :goto_21
    invoke-direct {v7, p0, v8}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 2678
    .local v7, "info":Landroid/os/StrictMode$ViolationInfo;
    invoke-virtual {v7, v0}, Landroid/os/StrictMode$ViolationInfo;->addLocalStack(Ljava/lang/Throwable;)V

    .line 2679
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v8

    .line 2680
    .local v8, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v9, v8, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v9, :cond_35

    .line 2681
    move-object v9, v8

    check-cast v9, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v9, v7}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 2676
    .end local v7    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v8    # "policy":Ldalvik/system/BlockGuard$Policy;
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 2684
    .end local v6    # "i":I
    :cond_38
    return-void
.end method

.method private static blacklist registerBackgroundActivityLaunchCallback()V
    .registers 3

    .line 2193
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    .line 2194
    .local v0, "service":Landroid/app/IActivityTaskManager;
    if-eqz v0, :cond_1a

    .line 2195
    new-instance v1, Landroid/os/StrictMode$BackgroundActivityLaunchCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/StrictMode$BackgroundActivityLaunchCallback;-><init>(Landroid/os/StrictMode-IA;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerBackgroundActivityStartCallback(Landroid/os/IBinder;)Z
    :try_end_f
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_f} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_1a

    .line 2200
    .end local v0    # "service":Landroid/app/IActivityTaskManager;
    :catch_10
    move-exception v0

    .line 2201
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StrictMode"

    const-string v2, "RemoteException handling StrictMode violation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 2198
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 2202
    :cond_1a
    :goto_1a
    nop

    .line 2203
    :goto_1b
    return-void
.end method

.method private static blacklist registerIntentMatchingRestrictionCallback()V
    .registers 2

    .line 2219
    sget-object v0, Landroid/os/StrictMode;->sUnsafeIntentCallback:Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;

    if-nez v0, :cond_17

    .line 2220
    new-instance v0, Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;-><init>(Landroid/os/StrictMode-IA;)V

    sput-object v0, Landroid/os/StrictMode;->sUnsafeIntentCallback:Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;

    .line 2222
    :try_start_c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    sget-object v1, Landroid/os/StrictMode;->sUnsafeIntentCallback:Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerStrictModeCallback(Landroid/os/IBinder;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    .line 2225
    goto :goto_17

    .line 2223
    :catch_16
    move-exception v0

    .line 2227
    :cond_17
    :goto_17
    return-void
.end method

.method private static greylist-max-o setBlockGuardPolicy(I)V
    .registers 3
    .param p0, "threadPolicyMask"    # I

    .line 1342
    if-nez p0, :cond_8

    .line 1343
    sget-object v0, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    invoke-static {v0}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 1344
    return-void

    .line 1346
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 1348
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v1, :cond_14

    .line 1349
    move-object v1, v0

    check-cast v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .local v1, "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    goto :goto_1f

    .line 1351
    .end local v1    # "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    :cond_14
    sget-object v1, Landroid/os/StrictMode;->THREAD_ANDROID_POLICY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 1352
    .restart local v1    # "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    invoke-static {v1}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 1354
    :goto_1f
    invoke-virtual {v1, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->setThreadPolicyMask(I)V

    .line 1355
    return-void
.end method

.method private static blacklist setBlockGuardVmPolicy(I)V
    .registers 2
    .param p0, "vmPolicyMask"    # I

    .line 1359
    and-int/lit16 p0, p0, 0x800

    .line 1360
    if-eqz p0, :cond_a

    .line 1361
    sget-object v0, Landroid/os/StrictMode;->VM_ANDROID_POLICY:Ldalvik/system/BlockGuard$VmPolicy;

    invoke-static {v0}, Ldalvik/system/BlockGuard;->setVmPolicy(Ldalvik/system/BlockGuard$VmPolicy;)V

    goto :goto_f

    .line 1363
    :cond_a
    sget-object v0, Ldalvik/system/BlockGuard;->LAX_VM_POLICY:Ldalvik/system/BlockGuard$VmPolicy;

    invoke-static {v0}, Ldalvik/system/BlockGuard;->setVmPolicy(Ldalvik/system/BlockGuard$VmPolicy;)V

    .line 1365
    :goto_f
    return-void
.end method

.method private static greylist-max-o setCloseGuardEnabled(Z)V
    .registers 3
    .param p0, "enabled"    # Z

    .line 1369
    invoke-static {}, Ldalvik/system/CloseGuard;->getReporter()Ldalvik/system/CloseGuard$Reporter;

    move-result-object v0

    instance-of v0, v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    if-nez v0, :cond_11

    .line 1370
    new-instance v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>(Landroid/os/StrictMode-IA;)V

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setReporter(Ldalvik/system/CloseGuard$Reporter;)V

    .line 1372
    :cond_11
    invoke-static {p0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 1373
    return-void
.end method

.method public static whitelist setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .registers 3
    .param p0, "policy"    # Landroid/os/StrictMode$ThreadPolicy;

    .line 1315
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1316
    sget-object v0, Landroid/os/StrictMode;->sThreadViolationListener:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/os/StrictMode$ThreadPolicy;->mListener:Landroid/os/StrictMode$OnThreadViolationListener;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1317
    sget-object v0, Landroid/os/StrictMode;->sThreadViolationExecutor:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/os/StrictMode$ThreadPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1318
    return-void
.end method

.method public static greylist-max-o setThreadPolicyMask(I)V
    .registers 1
    .param p0, "threadPolicyMask"    # I

    .line 1328
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 1331
    invoke-static {p0}, Landroid/os/Binder;->setThreadStrictModePolicy(I)V

    .line 1332
    return-void
.end method

.method public static blacklist setThreadPolicyMask$ravenwood(I)V
    .registers 2
    .param p0, "threadPolicyMask"    # I

    .line 1337
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1338
    return-void
.end method

.method public static blacklist setViolationLogger(Landroid/os/StrictMode$ViolationLogger;)V
    .registers 1
    .param p0, "listener"    # Landroid/os/StrictMode$ViolationLogger;

    .line 428
    if-nez p0, :cond_4

    .line 429
    sget-object p0, Landroid/os/StrictMode;->LOGCAT_LOGGER:Landroid/os/StrictMode$ViolationLogger;

    .line 431
    :cond_4
    sput-object p0, Landroid/os/StrictMode;->sLogger:Landroid/os/StrictMode$ViolationLogger;

    .line 432
    return-void
.end method

.method public static whitelist setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .registers 9
    .param p0, "policy"    # Landroid/os/StrictMode$VmPolicy;

    .line 2131
    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    .line 2132
    :try_start_3
    sput-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 2133
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v1

    invoke-static {v1}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 2135
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 2136
    .local v1, "looper":Landroid/os/Looper;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3b

    .line 2137
    iget-object v4, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 2138
    .local v4, "mq":Landroid/os/MessageQueue;
    iget-object v5, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eqz v5, :cond_34

    sget-object v5, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v5, v5, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v6, -0x10000

    and-int/2addr v5, v6

    if-nez v5, :cond_28

    goto :goto_34

    .line 2142
    :cond_28
    sget-boolean v5, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    if-nez v5, :cond_3b

    .line 2143
    sget-object v5, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v4, v5}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2144
    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    goto :goto_3b

    .line 2140
    :cond_34
    :goto_34
    sget-object v5, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v4, v5}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2141
    sput-boolean v3, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 2148
    .end local v4    # "mq":Landroid/os/MessageQueue;
    :cond_3b
    :goto_3b
    const/4 v4, 0x0

    .line 2149
    .local v4, "networkPolicy":I
    sget-object v5, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v5, v5, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5a

    .line 2150
    sget-object v5, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v5, v5, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-nez v5, :cond_59

    sget-object v5, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v5, v5, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_57

    goto :goto_59

    .line 2154
    :cond_57
    const/4 v4, 0x1

    goto :goto_5a

    .line 2152
    :cond_59
    :goto_59
    const/4 v4, 0x2

    .line 2158
    :cond_5a
    :goto_5a
    const-string/jumbo v5, "network_management"

    .line 2160
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2159
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_b1

    .line 2161
    .local v5, "netd":Landroid/os/INetworkManagementService;
    if-eqz v5, :cond_71

    .line 2163
    :try_start_67
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-interface {v5, v6, v4}, Landroid/os/INetworkManagementService;->setUidCleartextNetworkPolicy(II)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6e} :catch_6f
    .catchall {:try_start_67 .. :try_end_6e} :catchall_b1

    goto :goto_70

    .line 2164
    :catch_6f
    move-exception v6

    .line 2165
    :goto_70
    goto :goto_7a

    .line 2166
    :cond_71
    if-eqz v4, :cond_7a

    .line 2167
    :try_start_73
    const-string v6, "StrictMode"

    const-string v7, "Dropping requested network policy due to missing service!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :cond_7a
    :goto_7a
    sget-object v6, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v6, v6, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_8b

    .line 2172
    sget-object v2, Landroid/os/StrictMode;->sNonSdkApiUsageConsumer:Ljava/util/function/Consumer;

    invoke-static {v2}, Ldalvik/system/VMRuntime;->setNonSdkApiUsageConsumer(Ljava/util/function/Consumer;)V

    .line 2173
    invoke-static {v3}, Ldalvik/system/VMRuntime;->setDedupeHiddenApiWarnings(Z)V

    goto :goto_92

    .line 2175
    :cond_8b
    const/4 v3, 0x0

    invoke-static {v3}, Ldalvik/system/VMRuntime;->setNonSdkApiUsageConsumer(Ljava/util/function/Consumer;)V

    .line 2176
    invoke-static {v2}, Ldalvik/system/VMRuntime;->setDedupeHiddenApiWarnings(Z)V

    .line 2179
    :goto_92
    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v2, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_9d

    .line 2180
    invoke-static {}, Landroid/os/StrictMode;->registerIntentMatchingRestrictionCallback()V

    .line 2183
    :cond_9d
    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v2, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_a8

    .line 2184
    invoke-static {}, Landroid/os/StrictMode;->registerBackgroundActivityLaunchCallback()V

    .line 2187
    :cond_a8
    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v2, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    invoke-static {v2}, Landroid/os/StrictMode;->setBlockGuardVmPolicy(I)V

    .line 2188
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v4    # "networkPolicy":I
    .end local v5    # "netd":Landroid/os/INetworkManagementService;
    monitor-exit v0

    .line 2189
    return-void

    .line 2188
    :catchall_b1
    move-exception v1

    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_73 .. :try_end_b3} :catchall_b1

    throw v1
.end method

.method private static greylist-max-o tooManyViolationsThisLoop()Z
    .registers 2

    .line 1649
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static greylist-max-o trackActivity(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "instance"    # Ljava/lang/Object;

    .line 2939
    new-instance v0, Landroid/os/StrictMode$InstanceTracker;

    invoke-direct {v0, p0}, Landroid/os/StrictMode$InstanceTracker;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist vmBackgroundActivityLaunchEnabled()Z
    .registers 1

    .line 2315
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmCleartextNetworkEnabled()Z
    .registers 1

    .line 2280
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmClosableObjectLeaksEnabled()Z
    .registers 1

    .line 2265
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmContentUriWithoutPermissionEnabled()Z
    .registers 1

    .line 2285
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist vmCredentialProtectedWhileLockedEnabled()Z
    .registers 1

    .line 2300
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmFileUriExposureEnabled()Z
    .registers 1

    .line 2275
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist vmImplicitDirectBootEnabled()Z
    .registers 1

    .line 2295
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist vmIncorrectContextUseEnabled()Z
    .registers 1

    .line 2305
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmRegistrationLeaksEnabled()Z
    .registers 1

    .line 2270
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmSqliteObjectLeaksEnabled()Z
    .registers 2

    .line 2260
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public static blacklist vmUnsafeIntentLaunchEnabled()Z
    .registers 1

    .line 2310
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o vmUntaggedSocketEnabled()Z
    .registers 1

    .line 2290
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v0, v0, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static greylist-max-o writeGatheredViolationsToParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p0, "p"    # Landroid/os/Parcel;

    .line 2650
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2651
    .local v0, "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2652
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 2657
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2658
    .local v2, "size":I
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2659
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v2, :cond_2a

    .line 2660
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {v4, p0, v1}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2659
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2663
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2a
    :goto_2a
    sget-object v1, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2664
    return-void
.end method
