.class public Landroid/app/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$TaskDescription;,
        Landroid/app/ActivityManager$RecentTaskInfo;,
        Landroid/app/ActivityManager$RunningTaskInfo;,
        Landroid/app/ActivityManager$TaskThumbnail;,
        Landroid/app/ActivityManager$RunningServiceInfo;,
        Landroid/app/ActivityManager$MemoryInfo;,
        Landroid/app/ActivityManager$StackInfo;,
        Landroid/app/ActivityManager$ProcessErrorStateInfo;,
        Landroid/app/ActivityManager$RunningAppProcessInfo;,
        Landroid/app/ActivityManager$AppTask;
    }
.end annotation


# static fields
.field public static final ACTION_REPORT_HEAP_LIMIT:Ljava/lang/String; = "android.app.action.REPORT_HEAP_LIMIT"

.field public static final ASSIST_CONTEXT_BASIC:I = 0x0

.field public static final ASSIST_CONTEXT_FULL:I = 0x1

.field public static final BROADCAST_FAILED_USER_STOPPED:I = -0x2

.field public static final BROADCAST_STICKY_CANT_HAVE_PERMISSION:I = -0x1

.field public static final BROADCAST_SUCCESS:I = 0x0

.field public static final COMPAT_MODE_ALWAYS:I = -0x1

.field public static final COMPAT_MODE_DISABLED:I = 0x0

.field public static final COMPAT_MODE_ENABLED:I = 0x1

.field public static final COMPAT_MODE_NEVER:I = -0x2

.field public static final COMPAT_MODE_TOGGLE:I = 0x2

.field public static final COMPAT_MODE_UNKNOWN:I = -0x3

.field public static final INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final INTENT_SENDER_BROADCAST:I = 0x1

.field public static final INTENT_SENDER_SERVICE:I = 0x4

.field public static final LOCK_TASK_MODE_LOCKED:I = 0x1

.field public static final LOCK_TASK_MODE_NONE:I = 0x0

.field public static final LOCK_TASK_MODE_PINNED:I = 0x2

.field public static final META_HOME_ALTERNATE:Ljava/lang/String; = "android.app.home.alternate"

.field public static final MOVE_TASK_NO_USER_ACTION:I = 0x2

.field public static final MOVE_TASK_WITH_HOME:I = 0x1

.field public static final PROCESS_STATE_BACKUP:I = 0x8

.field public static final PROCESS_STATE_BOUND_FOREGROUND_SERVICE:I = 0x3

.field public static final PROCESS_STATE_CACHED_ACTIVITY:I = 0xe

.field public static final PROCESS_STATE_CACHED_ACTIVITY_CLIENT:I = 0xf

.field public static final PROCESS_STATE_CACHED_EMPTY:I = 0x10

.field public static final PROCESS_STATE_FOREGROUND_SERVICE:I = 0x4

.field public static final PROCESS_STATE_HEAVY_WEIGHT:I = 0x9

.field public static final PROCESS_STATE_HOME:I = 0xc

.field public static final PROCESS_STATE_IMPORTANT_BACKGROUND:I = 0x7

.field public static final PROCESS_STATE_IMPORTANT_FOREGROUND:I = 0x6

.field public static final PROCESS_STATE_LAST_ACTIVITY:I = 0xd

.field public static final PROCESS_STATE_NONEXISTENT:I = -0x1

.field public static final PROCESS_STATE_PERSISTENT:I = 0x0

.field public static final PROCESS_STATE_PERSISTENT_UI:I = 0x1

.field public static final PROCESS_STATE_RECEIVER:I = 0xb

.field public static final PROCESS_STATE_SERVICE:I = 0xa

.field public static final PROCESS_STATE_TOP:I = 0x2

.field public static final PROCESS_STATE_TOP_SLEEPING:I = 0x5

.field public static final RECENT_IGNORE_HOME_STACK_TASKS:I = 0x8

.field public static final RECENT_IGNORE_UNAVAILABLE:I = 0x2

.field public static final RECENT_INCLUDE_PROFILES:I = 0x4

.field public static final RECENT_WITH_EXCLUDED:I = 0x1

.field public static final START_CANCELED:I = -0x6

.field public static final START_CLASS_NOT_FOUND:I = -0x2

.field public static final START_DELIVERED_TO_TOP:I = 0x3

.field public static final START_FLAG_DEBUG:I = 0x2

.field public static final START_FLAG_ONLY_IF_NEEDED:I = 0x1

.field public static final START_FLAG_OPENGL_TRACES:I = 0x4

.field public static final START_FORWARD_AND_REQUEST_CONFLICT:I = -0x3

.field public static final START_INTENT_NOT_RESOLVED:I = -0x1

.field public static final START_NOT_ACTIVITY:I = -0x5

.field public static final START_NOT_CURRENT_USER_ACTIVITY:I = -0x8

.field public static final START_NOT_VOICE_COMPATIBLE:I = -0x7

.field public static final START_PERMISSION_DENIED:I = -0x4

.field public static final START_RETURN_INTENT_TO_CALLER:I = 0x1

.field public static final START_RETURN_LOCK_TASK_MODE_VIOLATION:I = 0x5

.field public static final START_SUCCESS:I = 0x0

.field public static final START_SWITCHES_CANCELED:I = 0x4

.field public static final START_TASK_TO_FRONT:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field public static final USER_OP_IS_CURRENT:I = -0x2

.field public static final USER_OP_SUCCESS:I = 0x0

.field public static final USER_OP_UNKNOWN_USER:I = -0x1

.field private static gMaxRecentTasks:I

.field private static localLOGV:Z


# instance fields
.field mAppTaskThumbnailSize:Landroid/graphics/Point;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 75
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    #@5
    .line 76
    const/4 v0, 0x0

    #@6
    sput-boolean v0, Landroid/app/ActivityManager;->localLOGV:Z

    #@8
    .line 78
    const/4 v0, -0x1

    #@9
    sput v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    #@b
    .line 74
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 355
    iput-object p1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    #@5
    .line 356
    iput-object p2, p0, Landroid/app/ActivityManager;->mHandler:Landroid/os/Handler;

    #@7
    .line 354
    return-void
.end method

.method public static checkComponentPermission(Ljava/lang/String;IIZ)I
    .locals 5
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "owningUid"    # I
    .param p3, "exported"    # Z

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2620
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@5
    move-result v0

    #@6
    .line 2621
    .local v0, "appId":I
    if-eqz v0, :cond_0

    #@8
    const/16 v2, 0x3e8

    #@a
    if-ne v0, v2, :cond_1

    #@c
    .line 2622
    :cond_0
    return v3

    #@d
    .line 2625
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 2626
    return v4

    #@14
    .line 2630
    :cond_2
    if-ltz p2, :cond_3

    #@16
    invoke-static {p1, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 2631
    return v3

    #@1d
    .line 2634
    :cond_3
    if-nez p3, :cond_4

    #@1f
    .line 2641
    return v4

    #@20
    .line 2643
    :cond_4
    if-nez p0, :cond_5

    #@22
    .line 2644
    return v3

    #@23
    .line 2647
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v2

    #@27
    invoke-interface {v2, p0, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result v2

    #@2b
    return v2

    #@2c
    .line 2649
    :catch_0
    move-exception v1

    #@2d
    .line 2651
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    #@2f
    const-string/jumbo v3, "PackageManager is dead?!?"

    #@32
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    .line 2653
    return v4
.end method

.method public static checkUidPermission(Ljava/lang/String;I)I
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2659
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 2661
    :catch_0
    move-exception v0

    #@a
    .line 2663
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "PackageManager is dead?!?"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 2665
    const/4 v1, -0x1

    #@13
    return v1
.end method

.method public static dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 2768
    new-instance v0, Ljava/io/FileOutputStream;

    #@6
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@9
    .line 2769
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@b
    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@e
    .line 2770
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "package"

    #@11
    new-array v3, v6, [Ljava/lang/String;

    #@13
    aput-object p1, v3, v5

    #@15
    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    #@18
    .line 2771
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@1b
    .line 2772
    const-string/jumbo v2, "activity"

    #@1e
    new-array v3, v8, [Ljava/lang/String;

    #@20
    .line 2773
    const-string/jumbo v4, "-a"

    #@23
    aput-object v4, v3, v5

    #@25
    const-string/jumbo v4, "package"

    #@28
    aput-object v4, v3, v6

    #@2a
    aput-object p1, v3, v7

    #@2c
    .line 2772
    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    #@2f
    .line 2774
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@32
    .line 2775
    const-string/jumbo v2, "meminfo"

    #@35
    new-array v3, v8, [Ljava/lang/String;

    #@37
    const-string/jumbo v4, "--local"

    #@3a
    aput-object v4, v3, v5

    #@3c
    const-string/jumbo v4, "--package"

    #@3f
    aput-object v4, v3, v6

    #@41
    aput-object p1, v3, v7

    #@43
    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    #@46
    .line 2776
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@49
    .line 2777
    const-string/jumbo v2, "procstats"

    #@4c
    new-array v3, v6, [Ljava/lang/String;

    #@4e
    aput-object p1, v3, v5

    #@50
    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    #@53
    .line 2778
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@56
    .line 2779
    const-string/jumbo v2, "usagestats"

    #@59
    new-array v3, v7, [Ljava/lang/String;

    #@5b
    const-string/jumbo v4, "--packages"

    #@5e
    aput-object v4, v3, v5

    #@60
    aput-object p1, v3, v6

    #@62
    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    #@65
    .line 2780
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@68
    .line 2781
    const-string/jumbo v2, "batterystats"

    #@6b
    new-array v3, v6, [Ljava/lang/String;

    #@6d
    aput-object p1, v3, v5

    #@6f
    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    #@72
    .line 2782
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@75
    .line 2767
    return-void
.end method

.method private static dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2786
    const-string/jumbo v4, "DUMP OF SERVICE "

    #@3
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    const-string/jumbo v4, ":"

    #@c
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 2787
    invoke-static {p2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@12
    move-result-object v1

    #@13
    .line 2788
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_0

    #@15
    .line 2789
    const-string/jumbo v4, "  (Service not found)"

    #@18
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 2790
    return-void

    #@1c
    .line 2792
    :cond_0
    const/4 v2, 0x0

    #@1d
    .line 2794
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    #@20
    .line 2795
    new-instance v3, Lcom/android/internal/os/TransferPipe;

    #@22
    invoke-direct {v3}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 2796
    .local v3, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    const-string/jumbo v4, "  "

    #@28
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    invoke-virtual {v3, v4}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    #@2b
    .line 2797
    invoke-virtual {v3}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@32
    move-result-object v4

    #@33
    invoke-interface {v1, v4, p3}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    #@36
    .line 2798
    const-wide/16 v4, 0x2710

    #@38
    invoke-virtual {v3, p1, v4, v5}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@3b
    move-object v2, v3

    #@3c
    .line 2785
    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_0
    return-void

    #@3d
    .line 2799
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v0

    #@3e
    .line 2800
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_1

    #@40
    .line 2801
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@43
    .line 2803
    :cond_1
    const-string/jumbo v4, "Failure dumping service:"

    #@46
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 2804
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@4c
    goto :goto_0

    #@4d
    .line 2799
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_1
    move-exception v0

    #@4e
    .restart local v0    # "e":Ljava/lang/Throwable;
    move-object v2, v3

    #@4f
    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    goto :goto_1
.end method

.method private ensureAppTaskThumbnailSizeLocked()V
    .locals 3

    #@0
    .prologue
    .line 1201
    iget-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1203
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v1}, Landroid/app/IActivityManager;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 1200
    :cond_0
    return-void

    #@f
    .line 1204
    :catch_0
    move-exception v0

    #@10
    .line 1205
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v2, "System dead?"

    #@15
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18
    throw v1
.end method

.method public static getCurrentUser()I
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2713
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v3

    #@5
    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@8
    move-result-object v1

    #@9
    .line 2714
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    #@b
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    :cond_0
    return v2

    #@e
    .line 2715
    :catch_0
    move-exception v0

    #@f
    .line 2716
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public static getDefaultAppRecentsLimitStatic()I
    .locals 1

    #@0
    .prologue
    .line 548
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x6

    #@6
    return v0
.end method

.method static getLauncherLargeIconSizeInner(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 2535
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    .line 2536
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v4, 0x1050000

    #@6
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@9
    move-result v2

    #@a
    .line 2537
    .local v2, "size":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@d
    move-result-object v4

    #@e
    iget v3, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@10
    .line 2539
    .local v3, "sw":I
    const/16 v4, 0x258

    #@12
    if-ge v3, v4, :cond_0

    #@14
    .line 2541
    return v2

    #@15
    .line 2544
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@18
    move-result-object v4

    #@19
    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    #@1b
    .line 2546
    .local v0, "density":I
    sparse-switch v0, :sswitch_data_0

    #@1e
    .line 2562
    int-to-float v4, v2

    #@1f
    const/high16 v5, 0x3fc00000    # 1.5f

    #@21
    mul-float/2addr v4, v5

    #@22
    const/high16 v5, 0x3f000000    # 0.5f

    #@24
    add-float/2addr v4, v5

    #@25
    float-to-int v4, v4

    #@26
    return v4

    #@27
    .line 2548
    :sswitch_0
    mul-int/lit16 v4, v2, 0xa0

    #@29
    div-int/lit8 v4, v4, 0x78

    #@2b
    return v4

    #@2c
    .line 2550
    :sswitch_1
    mul-int/lit16 v4, v2, 0xf0

    #@2e
    div-int/lit16 v4, v4, 0xa0

    #@30
    return v4

    #@31
    .line 2552
    :sswitch_2
    mul-int/lit16 v4, v2, 0x140

    #@33
    div-int/lit16 v4, v4, 0xf0

    #@35
    return v4

    #@36
    .line 2554
    :sswitch_3
    mul-int/lit16 v4, v2, 0x140

    #@38
    div-int/lit16 v4, v4, 0xf0

    #@3a
    return v4

    #@3b
    .line 2556
    :sswitch_4
    mul-int/lit16 v4, v2, 0x1e0

    #@3d
    div-int/lit16 v4, v4, 0x140

    #@3f
    return v4

    #@40
    .line 2558
    :sswitch_5
    mul-int/lit16 v4, v2, 0x140

    #@42
    mul-int/lit8 v4, v4, 0x2

    #@44
    div-int/lit16 v4, v4, 0x1e0

    #@46
    return v4

    #@47
    .line 2546
    nop

    #@48
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getMaxAppRecentsLimitStatic()I
    .locals 1

    #@0
    .prologue
    .line 556
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x2

    #@6
    return v0
.end method

.method public static getMaxRecentTasksStatic()I
    .locals 1

    #@0
    .prologue
    .line 537
    sget v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    #@2
    if-gez v0, :cond_1

    #@4
    .line 538
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/16 v0, 0x32

    #@c
    :goto_0
    sput v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    #@e
    return v0

    #@f
    :cond_0
    const/16 v0, 0x64

    #@11
    goto :goto_0

    #@12
    .line 540
    :cond_1
    sget v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    #@14
    return v0
.end method

.method public static getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 2
    .param p0, "outState"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    #@0
    .prologue
    .line 2369
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2367
    :goto_0
    return-void

    #@8
    .line 2370
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "callingPid"    # I
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "allowAll"    # Z
    .param p4, "requireFull"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "callerPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2694
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v0

    #@4
    if-ne v0, p2, :cond_0

    #@6
    .line 2695
    return p2

    #@7
    .line 2698
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@a
    move-result-object v0

    #@b
    move v1, p0

    #@c
    move v2, p1

    #@d
    move v3, p2

    #@e
    move v4, p3

    #@f
    move v5, p4

    #@10
    move-object v6, p5

    #@11
    move-object v7, p6

    #@12
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 2700
    :catch_0
    move-exception v8

    #@18
    .line 2701
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/SecurityException;

    #@1a
    const-string/jumbo v1, "Failed calling activity manager"

    #@1d
    invoke-direct {v0, v1, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@20
    throw v0
.end method

.method public static isHighEndGfx()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 528
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 529
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@a
    move-result-object v1

    #@b
    const v2, 0x1120014

    #@e
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 528
    :cond_0
    :goto_0
    return v0

    #@15
    .line 529
    :cond_1
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method public static isLowRamDeviceStatic()Z
    .locals 3

    #@0
    .prologue
    .line 518
    const-string/jumbo v0, "true"

    #@3
    const-string/jumbo v1, "ro.config.low_ram"

    #@6
    const-string/jumbo v2, "false"

    #@9
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static isRunningInTestHarness()Z
    .locals 2

    #@0
    .prologue
    .line 2582
    const-string/jumbo v0, "ro.test_harness"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isUserAMonkey()Z
    .locals 2

    #@0
    .prologue
    .line 2572
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->isUserAMonkey()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 2573
    :catch_0
    move-exception v0

    #@a
    .line 2575
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public static staticGetLargeMemoryClass()I
    .locals 3

    #@0
    .prologue
    .line 501
    const-string/jumbo v1, "dalvik.vm.heapsize"

    #@3
    const-string/jumbo v2, "16m"

    #@6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 502
    .local v0, "vmHeapSize":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public static staticGetMemoryClass()I
    .locals 3

    #@0
    .prologue
    .line 473
    const-string/jumbo v1, "dalvik.vm.heapgrowthlimit"

    #@3
    const-string/jumbo v2, ""

    #@6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 474
    .local v0, "vmHeapSize":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@c
    const-string/jumbo v1, ""

    #@f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 477
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    #@18
    move-result v1

    #@19
    return v1

    #@1a
    .line 475
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1d
    move-result v1

    #@1e
    add-int/lit8 v1, v1, -0x1

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@28
    move-result v1

    #@29
    return v1
.end method


# virtual methods
.method public addAppTask(Landroid/app/Activity;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 1235
    monitor-enter p0

    #@1
    .line 1236
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    #@4
    .line 1237
    move-object/from16 v0, p0

    #@6
    iget-object v10, v0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .local v10, "size":Landroid/graphics/Point;
    monitor-exit p0

    #@9
    .line 1239
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    #@c
    move-result v12

    #@d
    .line 1240
    .local v12, "tw":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    #@10
    move-result v11

    #@11
    .line 1241
    .local v11, "th":I
    iget v13, v10, Landroid/graphics/Point;->x:I

    #@13
    if-ne v12, v13, :cond_0

    #@15
    iget v13, v10, Landroid/graphics/Point;->y:I

    #@17
    if-eq v11, v13, :cond_1

    #@19
    .line 1242
    :cond_0
    iget v13, v10, Landroid/graphics/Point;->x:I

    #@1b
    iget v14, v10, Landroid/graphics/Point;->y:I

    #@1d
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@20
    move-result-object v15

    #@21
    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@24
    move-result-object v3

    #@25
    .line 1246
    .local v3, "bm":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    #@26
    .local v5, "dx":F
    const/4 v6, 0x0

    #@27
    .line 1247
    .local v6, "dy":F
    iget v13, v10, Landroid/graphics/Point;->x:I

    #@29
    mul-int/2addr v13, v12

    #@2a
    iget v14, v10, Landroid/graphics/Point;->y:I

    #@2c
    mul-int/2addr v14, v11

    #@2d
    if-le v13, v14, :cond_3

    #@2f
    .line 1248
    iget v13, v10, Landroid/graphics/Point;->x:I

    #@31
    int-to-float v13, v13

    #@32
    int-to-float v14, v11

    #@33
    div-float v9, v13, v14

    #@35
    .line 1249
    .local v9, "scale":F
    iget v13, v10, Landroid/graphics/Point;->y:I

    #@37
    int-to-float v13, v13

    #@38
    int-to-float v14, v12

    #@39
    mul-float/2addr v14, v9

    #@3a
    sub-float/2addr v13, v14

    #@3b
    const/high16 v14, 0x3f000000    # 0.5f

    #@3d
    mul-float v5, v13, v14

    #@3f
    .line 1254
    :goto_0
    new-instance v8, Landroid/graphics/Matrix;

    #@41
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    #@44
    .line 1255
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    #@47
    .line 1256
    const/high16 v13, 0x3f000000    # 0.5f

    #@49
    add-float/2addr v13, v5

    #@4a
    float-to-int v13, v13

    #@4b
    int-to-float v13, v13

    #@4c
    const/4 v14, 0x0

    #@4d
    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@50
    .line 1258
    new-instance v4, Landroid/graphics/Canvas;

    #@52
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@55
    .line 1259
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v13, 0x0

    #@56
    move-object/from16 v0, p4

    #@58
    invoke-virtual {v4, v0, v8, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    #@5b
    .line 1260
    const/4 v13, 0x0

    #@5c
    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@5f
    .line 1262
    move-object/from16 p4, v3

    #@61
    .line 1264
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "scale":F
    :cond_1
    if-nez p3, :cond_2

    #@63
    .line 1265
    new-instance p3, Landroid/app/ActivityManager$TaskDescription;

    #@65
    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    invoke-direct/range {p3 .. p3}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@68
    .line 1268
    .restart local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@6b
    move-result-object v13

    #@6c
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    #@6f
    move-result-object v14

    #@70
    move-object/from16 v0, p2

    #@72
    move-object/from16 v1, p3

    #@74
    move-object/from16 v2, p4

    #@76
    invoke-interface {v13, v14, v0, v1, v2}, Landroid/app/IActivityManager;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@79
    move-result v13

    #@7a
    return v13

    #@7b
    .line 1235
    .end local v10    # "size":Landroid/graphics/Point;
    .end local v11    # "th":I
    .end local v12    # "tw":I
    :catchall_0
    move-exception v13

    #@7c
    monitor-exit p0

    #@7d
    throw v13

    #@7e
    .line 1251
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v10    # "size":Landroid/graphics/Point;
    .restart local v11    # "th":I
    .restart local v12    # "tw":I
    :cond_3
    iget v13, v10, Landroid/graphics/Point;->y:I

    #@80
    int-to-float v13, v13

    #@81
    int-to-float v14, v12

    #@82
    div-float v9, v13, v14

    #@84
    .line 1252
    .restart local v9    # "scale":F
    iget v13, v10, Landroid/graphics/Point;->x:I

    #@86
    int-to-float v13, v13

    #@87
    int-to-float v14, v11

    #@88
    mul-float/2addr v14, v9

    #@89
    sub-float/2addr v13, v14

    #@8a
    const/high16 v14, 0x3f000000    # 0.5f

    #@8c
    mul-float v6, v13, v14

    #@8e
    goto :goto_0

    #@8f
    .line 1270
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v9    # "scale":F
    :catch_0
    move-exception v7

    #@90
    .line 1271
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v13, Ljava/lang/IllegalStateException;

    #@92
    const-string/jumbo v14, "System dead?"

    #@95
    invoke-direct {v13, v14, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@98
    throw v13
.end method

.method public clearApplicationUserData()Z
    .locals 2

    #@0
    .prologue
    .line 1865
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    #@0
    .prologue
    .line 1847
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1848
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@7
    move-result v2

    #@8
    .line 1847
    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1849
    :catch_0
    move-exception v0

    #@e
    .line 1850
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@f
    return v1
.end method

.method public clearWatchHeapLimit()V
    .locals 7

    #@0
    .prologue
    .line 2846
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    const-wide/16 v4, 0x0

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x0

    #@8
    const/4 v6, 0x0

    #@9
    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 2844
    :goto_0
    return-void

    #@d
    .line 2847
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public dumpPackageState(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2761
    invoke-static {p1, p2}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    #@3
    .line 2760
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2474
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    #@7
    .line 2473
    return-void
.end method

.method public forceStopPackageAsUser(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 2464
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2462
    :goto_0
    return-void

    #@8
    .line 2465
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAppTaskThumbnailSize()Landroid/util/Size;
    .locals 3

    #@0
    .prologue
    .line 1194
    monitor-enter p0

    #@1
    .line 1195
    :try_start_0
    invoke-direct {p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    #@4
    .line 1196
    new-instance v0, Landroid/util/Size;

    #@6
    iget-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    #@8
    iget v1, v1, Landroid/graphics/Point;->x:I

    #@a
    iget-object v2, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    #@c
    iget v2, v2, Landroid/graphics/Point;->y:I

    #@e
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return-object v0

    #@13
    .line 1194
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public getAppTasks()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$AppTask;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1174
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1177
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$AppTask;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@8
    move-result-object v5

    #@9
    iget-object v6, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getAppTasks(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v0

    #@13
    .line 1182
    .local v0, "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@16
    move-result v3

    #@17
    .line 1183
    .local v3, "numAppTasks":I
    const/4 v2, 0x0

    #@18
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@1a
    .line 1184
    new-instance v6, Landroid/app/ActivityManager$AppTask;

    #@1c
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Landroid/app/IAppTask;

    #@22
    invoke-direct {v6, v5}, Landroid/app/ActivityManager$AppTask;-><init>(Landroid/app/IAppTask;)V

    #@25
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 1183
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1178
    .end local v0    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    .end local v2    # "i":I
    .end local v3    # "numAppTasks":I
    :catch_0
    move-exception v1

    #@2c
    .line 1180
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    #@2d
    return-object v5

    #@2e
    .line 1186
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    .restart local v2    # "i":I
    .restart local v3    # "numAppTasks":I
    :cond_0
    return-object v4
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 2

    #@0
    .prologue
    .line 2482
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 2483
    :catch_0
    move-exception v0

    #@a
    .line 2485
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public getFrontActivityScreenCompatMode()I
    .locals 2

    #@0
    .prologue
    .line 403
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->getFrontActivityScreenCompatMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 404
    :catch_0
    move-exception v0

    #@a
    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public getLargeMemoryClass()I
    .locals 1

    #@0
    .prologue
    .line 494
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getLauncherLargeIconDensity()I
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x140

    #@2
    .line 2495
    iget-object v3, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    .line 2496
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v3

    #@c
    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    #@e
    .line 2497
    .local v0, "density":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@11
    move-result-object v3

    #@12
    iget v2, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@14
    .line 2499
    .local v2, "sw":I
    const/16 v3, 0x258

    #@16
    if-ge v2, v3, :cond_0

    #@18
    .line 2501
    return v0

    #@19
    .line 2504
    :cond_0
    sparse-switch v0, :sswitch_data_0

    #@1c
    .line 2520
    int-to-float v3, v0

    #@1d
    const/high16 v4, 0x3fc00000    # 1.5f

    #@1f
    mul-float/2addr v3, v4

    #@20
    const/high16 v4, 0x3f000000    # 0.5f

    #@22
    add-float/2addr v3, v4

    #@23
    float-to-int v3, v3

    #@24
    return v3

    #@25
    .line 2506
    :sswitch_0
    const/16 v3, 0xa0

    #@27
    return v3

    #@28
    .line 2508
    :sswitch_1
    const/16 v3, 0xf0

    #@2a
    return v3

    #@2b
    .line 2510
    :sswitch_2
    return v4

    #@2c
    .line 2512
    :sswitch_3
    return v4

    #@2d
    .line 2514
    :sswitch_4
    const/16 v3, 0x1e0

    #@2f
    return v3

    #@30
    .line 2516
    :sswitch_5
    const/16 v3, 0x280

    #@32
    return v3

    #@33
    .line 2504
    nop

    #@34
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public getLauncherLargeIconSize()I
    .locals 1

    #@0
    .prologue
    .line 2531
    iget-object v0, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLockTaskModeState()I
    .locals 2

    #@0
    .prologue
    .line 2892
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->getLockTaskModeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 2893
    :catch_0
    move-exception v0

    #@a
    .line 2894
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public getMemoryClass()I
    .locals 1

    #@0
    .prologue
    .line 466
    invoke-static {}, Landroid/app/ActivityManager;->staticGetMemoryClass()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 2
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;

    #@0
    .prologue
    .line 1762
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1760
    :goto_0
    return-void

    #@8
    .line 1763
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 441
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getPackageAskScreenCompat(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 442
    :catch_0
    move-exception v0

    #@a
    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public getPackageImportance(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2348
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v2

    #@4
    .line 2349
    iget-object v3, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 2348
    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    move-result v1

    #@e
    .line 2350
    .local v1, "procState":I
    invoke-static {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    return v2

    #@13
    .line 2351
    .end local v1    # "procState":I
    :catch_0
    move-exception v0

    #@14
    .line 2352
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v2, 0x3e8

    #@16
    return v2
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 422
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 423
    :catch_0
    move-exception v0

    #@a
    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 2
    .param p1, "pids"    # [I

    #@0
    .prologue
    .line 2387
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 2388
    :catch_0
    move-exception v0

    #@a
    .line 2389
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1982
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 1983
    :catch_0
    move-exception v0

    #@a
    .line 1984
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .locals 3
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1028
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1029
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@7
    move-result v2

    #@8
    .line 1028
    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 1030
    :catch_0
    move-exception v0

    #@e
    .line 1032
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method public getRecentTasksForUser(III)Ljava/util/List;
    .locals 2
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1054
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 1056
    :catch_0
    move-exception v0

    #@a
    .line 1058
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2331
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 2332
    :catch_0
    move-exception v0

    #@a
    .line 2333
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2296
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningExternalApplications()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 2297
    :catch_0
    move-exception v0

    #@a
    .line 2298
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1656
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 1658
    :catch_0
    move-exception v0

    #@a
    .line 1660
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public getRunningServices(I)Ljava/util/List;
    .locals 3
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1640
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1641
    const/4 v2, 0x0

    #@5
    .line 1640
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 1642
    :catch_0
    move-exception v0

    #@b
    .line 1644
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@c
    return-object v1
.end method

.method public getRunningTasks(I)Ljava/util/List;
    .locals 3
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1311
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 1312
    :catch_0
    move-exception v0

    #@b
    .line 1314
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@c
    return-object v1
.end method

.method public getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1395
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 1396
    :catch_0
    move-exception v0

    #@a
    .line 1398
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public isInHomeStack(I)Z
    .locals 2
    .param p1, "taskId"    # I

    #@0
    .prologue
    .line 1405
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->isInHomeStack(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 1406
    :catch_0
    move-exception v0

    #@a
    .line 1408
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public isInLockTaskMode()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2880
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isLowRamDevice()Z
    .locals 1

    #@0
    .prologue
    .line 513
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isUserRunning(I)Z
    .locals 4
    .param p1, "userid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2743
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4
    move-result-object v1

    #@5
    const/4 v2, 0x0

    #@6
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->isUserRunning(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 2744
    :catch_0
    move-exception v0

    #@c
    .line 2745
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public killBackgroundProcesses(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2420
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 2421
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@7
    move-result v2

    #@8
    .line 2420
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 2418
    :goto_0
    return-void

    #@c
    .line 2422
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public killUid(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2436
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@7
    move-result v2

    #@8
    .line 2437
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@b
    move-result v3

    #@c
    .line 2436
    invoke-interface {v1, v2, v3, p2}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 2434
    :goto_0
    return-void

    #@10
    .line 2438
    :catch_0
    move-exception v0

    #@11
    .line 2439
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Couldn\'t kill uid:"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    goto :goto_0
.end method

.method public moveTaskToFront(II)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1436
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    #@4
    .line 1435
    return-void
.end method

.method public moveTaskToFront(IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1455
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1453
    :goto_0
    return-void

    #@8
    .line 1456
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public removeTask(I)Z
    .locals 2
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 1328
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 1329
    :catch_0
    move-exception v0

    #@a
    .line 1331
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public restartPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2402
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    #@3
    .line 2401
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 413
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setFrontActivityScreenCompatMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 411
    :goto_0
    return-void

    #@8
    .line 414
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    #@0
    .prologue
    .line 451
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 449
    :goto_0
    return-void

    #@8
    .line 452
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 432
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 430
    :goto_0
    return-void

    #@8
    .line 433
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "level"    # I

    #@0
    .prologue
    .line 2312
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 2314
    :catch_0
    move-exception v0

    #@a
    .line 2315
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method

.method public setWatchHeapLimit(J)V
    .locals 7
    .param p1, "pssSize"    # J

    #@0
    .prologue
    .line 2827
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 2828
    iget-object v2, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v6

    #@a
    .line 2827
    const/4 v2, 0x0

    #@b
    const/4 v3, 0x0

    #@c
    move-wide v4, p1

    #@d
    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 2825
    :goto_0
    return-void

    #@11
    .line 2829
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startLockTaskMode(I)V
    .locals 2
    .param p1, "taskId"    # I

    #@0
    .prologue
    .line 2856
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->startLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2854
    :goto_0
    return-void

    #@8
    .line 2857
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopLockTaskMode()V
    .locals 2

    #@0
    .prologue
    .line 2866
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2864
    :goto_0
    return-void

    #@8
    .line 2867
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public switchUser(I)Z
    .locals 2
    .param p1, "userid"    # I

    #@0
    .prologue
    .line 2726
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 2727
    :catch_0
    move-exception v0

    #@a
    .line 2728
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@b
    return v1
.end method
