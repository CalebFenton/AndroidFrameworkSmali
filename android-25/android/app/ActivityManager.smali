.class public Landroid/app/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$AppTask;,
        Landroid/app/ActivityManager$MemoryInfo;,
        Landroid/app/ActivityManager$ProcessErrorStateInfo;,
        Landroid/app/ActivityManager$RecentTaskInfo;,
        Landroid/app/ActivityManager$RunningAppProcessInfo;,
        Landroid/app/ActivityManager$RunningServiceInfo;,
        Landroid/app/ActivityManager$RunningTaskInfo;,
        Landroid/app/ActivityManager$StackId;,
        Landroid/app/ActivityManager$StackInfo;,
        Landroid/app/ActivityManager$TaskDescription;,
        Landroid/app/ActivityManager$TaskThumbnail;,
        Landroid/app/ActivityManager$TaskThumbnailInfo;
    }
.end annotation


# static fields
.field public static final ACTION_REPORT_HEAP_LIMIT:Ljava/lang/String; = "android.app.action.REPORT_HEAP_LIMIT"

.field public static final APP_START_MODE_DELAYED:I = 0x1

.field public static final APP_START_MODE_DISABLED:I = 0x2

.field public static final APP_START_MODE_NORMAL:I = 0x0

.field public static final ASSIST_CONTEXT_BASIC:I = 0x0

.field public static final ASSIST_CONTEXT_FULL:I = 0x1

.field public static final BROADCAST_FAILED_USER_STOPPED:I = -0x2

.field public static final BROADCAST_STICKY_CANT_HAVE_PERMISSION:I = -0x1

.field public static final BROADCAST_SUCCESS:I = 0x0

.field public static final BUGREPORT_OPTION_FULL:I = 0x0

.field public static final BUGREPORT_OPTION_INTERACTIVE:I = 0x1

.field public static final BUGREPORT_OPTION_REMOTE:I = 0x2

.field public static final BUGREPORT_OPTION_WEAR:I = 0x3

.field public static final COMPAT_MODE_ALWAYS:I = -0x1

.field public static final COMPAT_MODE_DISABLED:I = 0x0

.field public static final COMPAT_MODE_ENABLED:I = 0x1

.field public static final COMPAT_MODE_NEVER:I = -0x2

.field public static final COMPAT_MODE_TOGGLE:I = 0x2

.field public static final COMPAT_MODE_UNKNOWN:I = -0x3

.field public static final DOCKED_STACK_CREATE_MODE_BOTTOM_OR_RIGHT:I = 0x1

.field public static final DOCKED_STACK_CREATE_MODE_TOP_OR_LEFT:I = 0x0

.field public static final FLAG_AND_LOCKED:I = 0x2

.field public static final FLAG_AND_UNLOCKED:I = 0x4

.field public static final FLAG_AND_UNLOCKING_OR_UNLOCKED:I = 0x8

.field public static final FLAG_OR_STOPPED:I = 0x1

.field public static final INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final INTENT_SENDER_BROADCAST:I = 0x1

.field public static final INTENT_SENDER_SERVICE:I = 0x4

.field public static final LOCK_TASK_MODE_LOCKED:I = 0x1

.field public static final LOCK_TASK_MODE_NONE:I = 0x0

.field public static final LOCK_TASK_MODE_PINNED:I = 0x2

.field public static final MAX_PROCESS_STATE:I = 0x10

.field public static final META_HOME_ALTERNATE:Ljava/lang/String; = "android.app.home.alternate"

.field public static final MIN_PROCESS_STATE:I = -0x1

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

.field public static final RECENT_INGORE_DOCKED_STACK_TOP_TASK:I = 0x10

.field public static final RECENT_INGORE_PINNED_STACK_TASKS:I = 0x20

.field public static final RECENT_WITH_EXCLUDED:I = 0x1

.field public static final RESIZE_MODE_FORCED:I = 0x2

.field public static final RESIZE_MODE_PRESERVE_WINDOW:I = 0x1

.field public static final RESIZE_MODE_SYSTEM:I = 0x0

.field public static final RESIZE_MODE_SYSTEM_SCREEN_ROTATION:I = 0x1

.field public static final RESIZE_MODE_USER:I = 0x1

.field public static final RESIZE_MODE_USER_FORCED:I = 0x3

.field public static final START_CANCELED:I = -0x6

.field public static final START_CLASS_NOT_FOUND:I = -0x2

.field public static final START_DELIVERED_TO_TOP:I = 0x3

.field public static final START_FLAG_DEBUG:I = 0x2

.field public static final START_FLAG_NATIVE_DEBUGGING:I = 0x8

.field public static final START_FLAG_ONLY_IF_NEEDED:I = 0x1

.field public static final START_FLAG_TRACK_ALLOCATION:I = 0x4

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

.field public static final START_VOICE_HIDDEN_SESSION:I = -0xa

.field public static final START_VOICE_NOT_ACTIVE_SESSION:I = -0x9

.field private static TAG:Ljava/lang/String; = null

.field public static final UID_OBSERVER_ACTIVE:I = 0x8

.field public static final UID_OBSERVER_GONE:I = 0x2

.field public static final UID_OBSERVER_IDLE:I = 0x4

.field public static final UID_OBSERVER_PROCSTATE:I = 0x1

.field public static final USER_OP_ERROR_IS_SYSTEM:I = -0x3

.field public static final USER_OP_ERROR_RELATED_USERS_CANNOT_STOP:I = -0x4

.field public static final USER_OP_IS_CURRENT:I = -0x2

.field public static final USER_OP_SUCCESS:I = 0x0

.field public static final USER_OP_UNKNOWN_USER:I = -0x1

.field private static gMaxRecentTasks:I


# instance fields
.field mAppTaskThumbnailSize:Landroid/graphics/Point;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 81
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Landroid/app/ActivityManager;->TAG:Ljava/lang/String;

    #@5
    .line 83
    const/4 v0, -0x1

    #@6
    sput v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    #@8
    .line 80
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 455
    iput-object p1, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    #@5
    .line 456
    iput-object p2, p0, Landroid/app/ActivityManager;->mHandler:Landroid/os/Handler;

    #@7
    .line 454
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
    .line 3320
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@5
    move-result v0

    #@6
    .line 3321
    .local v0, "appId":I
    if-eqz v0, :cond_0

    #@8
    const/16 v2, 0x3e8

    #@a
    if-ne v0, v2, :cond_1

    #@c
    .line 3322
    :cond_0
    return v3

    #@d
    .line 3325
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 3326
    return v4

    #@14
    .line 3330
    :cond_2
    if-ltz p2, :cond_3

    #@16
    invoke-static {p1, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 3331
    return v3

    #@1d
    .line 3334
    :cond_3
    if-nez p3, :cond_4

    #@1f
    .line 3341
    return v4

    #@20
    .line 3343
    :cond_4
    if-nez p0, :cond_5

    #@22
    .line 3344
    return v3

    #@23
    .line 3347
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
    .line 3349
    :catch_0
    move-exception v1

    #@2d
    .line 3350
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@30
    move-result-object v2

    #@31
    throw v2
.end method

.method public static checkUidPermission(Ljava/lang/String;I)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 3357
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
    .line 3359
    :catch_0
    move-exception v0

    #@a
    .line 3360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
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
    .line 3499
    new-instance v0, Ljava/io/FileOutputStream;

    #@6
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@9
    .line 3500
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@b
    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@e
    .line 3501
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v2, "package"

    #@11
    new-array v3, v6, [Ljava/lang/String;

    #@13
    aput-object p1, v3, v5

    #@15
    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    #@18
    .line 3502
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@1b
    .line 3503
    const-string/jumbo v2, "activity"

    #@1e
    new-array v3, v8, [Ljava/lang/String;

    #@20
    .line 3504
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
    .line 3503
    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    #@2f
    .line 3505
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@32
    .line 3506
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
    .line 3507
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@49
    .line 3508
    const-string/jumbo v2, "procstats"

    #@4c
    new-array v3, v6, [Ljava/lang/String;

    #@4e
    aput-object p1, v3, v5

    #@50
    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    #@53
    .line 3509
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@56
    .line 3510
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
    .line 3511
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    #@68
    .line 3512
    const-string/jumbo v2, "batterystats"

    #@6b
    new-array v3, v6, [Ljava/lang/String;

    #@6d
    aput-object p1, v3, v5

    #@6f
    invoke-static {v1, p0, v2, v3}, Landroid/app/ActivityManager;->dumpService(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    #@72
    .line 3513
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@75
    .line 3498
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
    .line 3517
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
    .line 3518
    invoke-static {p2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@12
    move-result-object v1

    #@13
    .line 3519
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_0

    #@15
    .line 3520
    const-string/jumbo v4, "  (Service not found)"

    #@18
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 3521
    return-void

    #@1c
    .line 3523
    :cond_0
    const/4 v2, 0x0

    #@1d
    .line 3525
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    #@20
    .line 3526
    new-instance v3, Lcom/android/internal/os/TransferPipe;

    #@22
    invoke-direct {v3}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 3527
    .local v3, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    const-string/jumbo v4, "  "

    #@28
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    invoke-virtual {v3, v4}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    #@2b
    .line 3528
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
    .line 3529
    const-wide/16 v4, 0x2710

    #@38
    invoke-virtual {v3, p1, v4, v5}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@3b
    move-object v2, v3

    #@3c
    .line 3516
    .end local v3    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_0
    return-void

    #@3d
    .line 3530
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v0

    #@3e
    .line 3531
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_1

    #@40
    .line 3532
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@43
    .line 3534
    :cond_1
    const-string/jumbo v4, "Failure dumping service:"

    #@46
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 3535
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@4c
    goto :goto_0

    #@4d
    .line 3530
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
    .locals 2

    #@0
    .prologue
    .line 1709
    iget-object v1, p0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1711
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
    .line 1708
    :cond_0
    return-void

    #@f
    .line 1712
    :catch_0
    move-exception v0

    #@10
    .line 1713
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v1

    #@14
    throw v1
.end method

.method public static getCurrentUser()I
    .locals 3

    #@0
    .prologue
    .line 3409
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@7
    move-result-object v1

    #@8
    .line 3410
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    #@a
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    :goto_0
    return v2

    #@d
    :cond_0
    const/4 v2, 0x0

    #@e
    goto :goto_0

    #@f
    .line 3411
    :catch_0
    move-exception v0

    #@10
    .line 3412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v2

    #@14
    throw v2
.end method

.method public static getDefaultAppRecentsLimitStatic()I
    .locals 1

    #@0
    .prologue
    .line 928
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
    .line 3235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    .line 3236
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v4, 0x1050000

    #@6
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@9
    move-result v2

    #@a
    .line 3237
    .local v2, "size":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@d
    move-result-object v4

    #@e
    iget v3, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@10
    .line 3239
    .local v3, "sw":I
    const/16 v4, 0x258

    #@12
    if-ge v3, v4, :cond_0

    #@14
    .line 3241
    return v2

    #@15
    .line 3244
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@18
    move-result-object v4

    #@19
    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    #@1b
    .line 3246
    .local v0, "density":I
    sparse-switch v0, :sswitch_data_0

    #@1e
    .line 3262
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
    .line 3248
    :sswitch_0
    mul-int/lit16 v4, v2, 0xa0

    #@29
    div-int/lit8 v4, v4, 0x78

    #@2b
    return v4

    #@2c
    .line 3250
    :sswitch_1
    mul-int/lit16 v4, v2, 0xf0

    #@2e
    div-int/lit16 v4, v4, 0xa0

    #@30
    return v4

    #@31
    .line 3252
    :sswitch_2
    mul-int/lit16 v4, v2, 0x140

    #@33
    div-int/lit16 v4, v4, 0xf0

    #@35
    return v4

    #@36
    .line 3254
    :sswitch_3
    mul-int/lit16 v4, v2, 0x140

    #@38
    div-int/lit16 v4, v4, 0xf0

    #@3a
    return v4

    #@3b
    .line 3256
    :sswitch_4
    mul-int/lit16 v4, v2, 0x1e0

    #@3d
    div-int/lit16 v4, v4, 0x140

    #@3f
    return v4

    #@40
    .line 3258
    :sswitch_5
    mul-int/lit16 v4, v2, 0x140

    #@42
    mul-int/lit8 v4, v4, 0x2

    #@44
    div-int/lit16 v4, v4, 0x1e0

    #@46
    return v4

    #@47
    .line 3246
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
    .line 936
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
    .line 917
    sget v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    #@2
    if-gez v0, :cond_1

    #@4
    .line 918
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/16 v0, 0x24

    #@c
    :goto_0
    sput v0, Landroid/app/ActivityManager;->gMaxRecentTasks:I

    #@e
    return v0

    #@f
    :cond_0
    const/16 v0, 0x30

    #@11
    goto :goto_0

    #@12
    .line 920
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
    .line 3065
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3063
    return-void

    #@8
    .line 3066
    :catch_0
    move-exception v0

    #@9
    .line 3067
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
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
    .line 3390
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v0

    #@4
    if-ne v0, p2, :cond_0

    #@6
    .line 3391
    return p2

    #@7
    .line 3394
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
    .line 3396
    :catch_0
    move-exception v8

    #@18
    .line 3397
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1b
    move-result-object v0

    #@1c
    throw v0
.end method

.method public static isHighEndGfx()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 908
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 909
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@a
    move-result-object v1

    #@b
    const v2, 0x1120012

    #@e
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 908
    :cond_0
    :goto_0
    return v0

    #@15
    .line 909
    :cond_1
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method public static isLowRamDeviceStatic()Z
    .locals 3

    #@0
    .prologue
    .line 898
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

.method public static final isProcStateBackground(I)Z
    .locals 1
    .param p0, "procState"    # I

    #@0
    .prologue
    .line 406
    const/16 v0, 0x8

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public static isRunningInTestHarness()Z
    .locals 2

    #@0
    .prologue
    .line 3282
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
    .line 3272
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
    .line 3273
    :catch_0
    move-exception v0

    #@a
    .line 3274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public static logoutCurrentUser()V
    .locals 5

    #@0
    .prologue
    .line 3434
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3
    move-result v0

    #@4
    .line 3435
    .local v0, "currentUser":I
    if-eqz v0, :cond_0

    #@6
    .line 3437
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    #@e
    .line 3438
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@11
    move-result-object v2

    #@12
    const/4 v3, 0x0

    #@13
    const/4 v4, 0x0

    #@14
    invoke-interface {v2, v0, v3, v4}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 3433
    :cond_0
    :goto_0
    return-void

    #@18
    .line 3439
    :catch_0
    move-exception v1

    #@19
    .line 3440
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1c
    goto :goto_0
.end method

.method public static setVrThread(I)V
    .locals 2
    .param p0, "tid"    # I

    #@0
    .prologue
    .line 3645
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->setVrThread(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3643
    :goto_0
    return-void

    #@8
    .line 3646
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static staticGetLargeMemoryClass()I
    .locals 3

    #@0
    .prologue
    .line 881
    const-string/jumbo v1, "dalvik.vm.heapsize"

    #@3
    const-string/jumbo v2, "16m"

    #@6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 882
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
    .line 853
    const-string/jumbo v1, "dalvik.vm.heapgrowthlimit"

    #@3
    const-string/jumbo v2, ""

    #@6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 854
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
    .line 857
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->staticGetLargeMemoryClass()I

    #@18
    move-result v1

    #@19
    return v1

    #@1a
    .line 855
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

.method public static supportsMultiWindow()Z
    .locals 2

    #@0
    .prologue
    .line 945
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 946
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    .line 947
    const v1, 0x11200ae

    #@d
    .line 946
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@10
    move-result v0

    #@11
    .line 945
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
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
    .line 1743
    monitor-enter p0

    #@1
    .line 1744
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    #@4
    .line 1745
    move-object/from16 v0, p0

    #@6
    iget-object v10, v0, Landroid/app/ActivityManager;->mAppTaskThumbnailSize:Landroid/graphics/Point;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .local v10, "size":Landroid/graphics/Point;
    monitor-exit p0

    #@9
    .line 1747
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    #@c
    move-result v12

    #@d
    .line 1748
    .local v12, "tw":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    #@10
    move-result v11

    #@11
    .line 1749
    .local v11, "th":I
    iget v13, v10, Landroid/graphics/Point;->x:I

    #@13
    if-ne v12, v13, :cond_0

    #@15
    iget v13, v10, Landroid/graphics/Point;->y:I

    #@17
    if-eq v11, v13, :cond_1

    #@19
    .line 1750
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
    .line 1754
    .local v3, "bm":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    #@26
    .local v5, "dx":F
    const/4 v6, 0x0

    #@27
    .line 1755
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
    .line 1756
    iget v13, v10, Landroid/graphics/Point;->x:I

    #@31
    int-to-float v13, v13

    #@32
    int-to-float v14, v11

    #@33
    div-float v9, v13, v14

    #@35
    .line 1757
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
    .line 1762
    :goto_0
    new-instance v8, Landroid/graphics/Matrix;

    #@41
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    #@44
    .line 1763
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    #@47
    .line 1764
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
    .line 1766
    new-instance v4, Landroid/graphics/Canvas;

    #@52
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@55
    .line 1767
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v13, 0x0

    #@56
    move-object/from16 v0, p4

    #@58
    invoke-virtual {v4, v0, v8, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    #@5b
    .line 1768
    const/4 v13, 0x0

    #@5c
    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    #@5f
    .line 1770
    move-object/from16 p4, v3

    #@61
    .line 1772
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "scale":F
    :cond_1
    if-nez p3, :cond_2

    #@63
    .line 1773
    new-instance p3, Landroid/app/ActivityManager$TaskDescription;

    #@65
    .end local p3    # "description":Landroid/app/ActivityManager$TaskDescription;
    invoke-direct/range {p3 .. p3}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    #@68
    .line 1776
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
    .line 1743
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
    .line 1759
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
    .line 1760
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
    .line 1778
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v9    # "scale":F
    :catch_0
    move-exception v7

    #@90
    .line 1779
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@93
    move-result-object v13

    #@94
    throw v13
.end method

.method public clearApplicationUserData()Z
    .locals 2

    #@0
    .prologue
    .line 2523
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
    .line 2505
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 2506
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@7
    move-result v2

    #@8
    .line 2505
    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 2507
    :catch_0
    move-exception v0

    #@e
    .line 2508
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public clearGrantedUriPermissions(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2557
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 2558
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@7
    move-result v2

    #@8
    .line 2557
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->clearGrantedUriPermissions(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 2555
    return-void

    #@c
    .line 2559
    :catch_0
    move-exception v0

    #@d
    .line 2560
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public clearWatchHeapLimit()V
    .locals 7

    #@0
    .prologue
    .line 3578
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
    .line 3576
    return-void

    #@d
    .line 3579
    :catch_0
    move-exception v0

    #@e
    .line 3580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public dumpPackageState(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3492
    invoke-static {p1, p2}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    #@3
    .line 3491
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3174
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    #@7
    .line 3173
    return-void
.end method

.method public forceStopPackageAsUser(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3163
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3161
    return-void

    #@8
    .line 3164
    :catch_0
    move-exception v0

    #@9
    .line 3165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
.end method

.method public getAppTaskThumbnailSize()Landroid/util/Size;
    .locals 3

    #@0
    .prologue
    .line 1702
    monitor-enter p0

    #@1
    .line 1703
    :try_start_0
    invoke-direct {p0}, Landroid/app/ActivityManager;->ensureAppTaskThumbnailSizeLocked()V

    #@4
    .line 1704
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
    .line 1702
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
    .line 1683
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1686
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
    .line 1690
    .local v0, "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@16
    move-result v3

    #@17
    .line 1691
    .local v3, "numAppTasks":I
    const/4 v2, 0x0

    #@18
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@1a
    .line 1692
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
    .line 1691
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1687
    .end local v0    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    .end local v2    # "i":I
    .end local v3    # "numAppTasks":I
    :catch_0
    move-exception v1

    #@2c
    .line 1688
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@2f
    move-result-object v5

    #@30
    throw v5

    #@31
    .line 1694
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
    .line 3182
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
    .line 3183
    :catch_0
    move-exception v0

    #@a
    .line 3184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public getFrontActivityScreenCompatMode()I
    .locals 2

    #@0
    .prologue
    .line 786
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
    .line 787
    :catch_0
    move-exception v0

    #@a
    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2539
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 2540
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@7
    move-result v2

    #@8
    .line 2539
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 2541
    :catch_0
    move-exception v0

    #@e
    .line 2542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public getLargeMemoryClass()I
    .locals 1

    #@0
    .prologue
    .line 874
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
    .line 3195
    iget-object v3, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    .line 3196
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v3

    #@c
    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    #@e
    .line 3197
    .local v0, "density":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@11
    move-result-object v3

    #@12
    iget v2, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@14
    .line 3199
    .local v2, "sw":I
    const/16 v3, 0x258

    #@16
    if-ge v2, v3, :cond_0

    #@18
    .line 3201
    return v0

    #@19
    .line 3204
    :cond_0
    sparse-switch v0, :sswitch_data_0

    #@1c
    .line 3220
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
    .line 3206
    :sswitch_0
    const/16 v3, 0xa0

    #@27
    return v3

    #@28
    .line 3208
    :sswitch_1
    const/16 v3, 0xf0

    #@2a
    return v3

    #@2b
    .line 3210
    :sswitch_2
    return v4

    #@2c
    .line 3212
    :sswitch_3
    return v4

    #@2d
    .line 3214
    :sswitch_4
    const/16 v3, 0x1e0

    #@2f
    return v3

    #@30
    .line 3216
    :sswitch_5
    const/16 v3, 0x280

    #@32
    return v3

    #@33
    .line 3204
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
    .line 3231
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
    .line 3627
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
    .line 3628
    :catch_0
    move-exception v0

    #@a
    .line 3629
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public getMemoryClass()I
    .locals 1

    #@0
    .prologue
    .line 846
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
    .line 2366
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2364
    return-void

    #@8
    .line 2367
    :catch_0
    move-exception v0

    #@9
    .line 2368
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 822
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
    .line 823
    :catch_0
    move-exception v0

    #@a
    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public getPackageImportance(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3044
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v2

    #@4
    .line 3045
    iget-object v3, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 3044
    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    move-result v1

    #@e
    .line 3046
    .local v1, "procState":I
    invoke-static {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    return v2

    #@13
    .line 3047
    .end local v1    # "procState":I
    :catch_0
    move-exception v0

    #@14
    .line 3048
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@17
    move-result-object v2

    #@18
    throw v2
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 804
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
    .line 805
    :catch_0
    move-exception v0

    #@a
    .line 806
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 2
    .param p1, "pids"    # [I

    #@0
    .prologue
    .line 3084
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
    .line 3085
    :catch_0
    move-exception v0

    #@a
    .line 3086
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
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
    .line 2678
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
    .line 2679
    :catch_0
    move-exception v0

    #@a
    .line 2680
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
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
    .line 1515
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 1516
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@7
    move-result v2

    #@8
    .line 1515
    invoke-interface {v1, p1, p2, v2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 1517
    :catch_0
    move-exception v0

    #@12
    .line 1518
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
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
    .line 1540
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 1542
    :catch_0
    move-exception v0

    #@e
    .line 1543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
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
    .line 3027
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
    .line 3028
    :catch_0
    move-exception v0

    #@a
    .line 3029
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
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
    .line 2992
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
    .line 2993
    :catch_0
    move-exception v0

    #@a
    .line 2994
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
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
    .line 2261
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
    .line 2263
    :catch_0
    move-exception v0

    #@a
    .line 2264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
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
    .line 2246
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 2247
    const/4 v2, 0x0

    #@5
    .line 2246
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 2248
    :catch_0
    move-exception v0

    #@b
    .line 2249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
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
    .line 1819
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
    .line 1820
    :catch_0
    move-exception v0

    #@b
    .line 1821
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
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
    .line 2003
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
    .line 2004
    :catch_0
    move-exception v0

    #@a
    .line 2005
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public isInHomeStack(I)Z
    .locals 2
    .param p1, "taskId"    # I

    #@0
    .prologue
    .line 2012
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
    .line 2013
    :catch_0
    move-exception v0

    #@a
    .line 2014
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public isInLockTaskMode()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3615
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
    .line 893
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isUserRunning(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3465
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 3466
    :catch_0
    move-exception v0

    #@b
    .line 3467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@e
    move-result-object v1

    #@f
    throw v1
.end method

.method public isVrModePackageEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 3474
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 3475
    :catch_0
    move-exception v0

    #@a
    .line 3476
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public killBackgroundProcesses(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3117
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 3118
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@7
    move-result v2

    #@8
    .line 3117
    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 3115
    return-void

    #@c
    .line 3119
    :catch_0
    move-exception v0

    #@d
    .line 3120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@10
    move-result-object v1

    #@11
    throw v1
.end method

.method public killUid(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3135
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@7
    move-result v2

    #@8
    .line 3136
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@b
    move-result v3

    #@c
    .line 3135
    invoke-interface {v1, v2, v3, p2}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 3133
    return-void

    #@10
    .line 3137
    :catch_0
    move-exception v0

    #@11
    .line 3138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public moveTaskToFront(II)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2042
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    #@4
    .line 2041
    return-void
.end method

.method public moveTaskToFront(IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2061
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2, p3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 2059
    return-void

    #@8
    .line 2062
    :catch_0
    move-exception v0

    #@9
    .line 2063
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
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
    .line 1835
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
    .line 1836
    :catch_0
    move-exception v0

    #@a
    .line 1837
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public restartPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3099
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    #@3
    .line 3098
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 795
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setFrontActivityScreenCompatMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 793
    return-void

    #@8
    .line 796
    :catch_0
    move-exception v0

    #@9
    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    #@0
    .prologue
    .line 831
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 829
    return-void

    #@8
    .line 832
    :catch_0
    move-exception v0

    #@9
    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 813
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 811
    return-void

    #@8
    .line 814
    :catch_0
    move-exception v0

    #@9
    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
.end method

.method public setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "level"    # I

    #@0
    .prologue
    .line 3008
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
    .line 3010
    :catch_0
    move-exception v0

    #@a
    .line 3011
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method

.method public setWatchHeapLimit(J)V
    .locals 7
    .param p1, "pssSize"    # J

    #@0
    .prologue
    .line 3558
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 3559
    iget-object v2, p0, Landroid/app/ActivityManager;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v6

    #@a
    .line 3558
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
    .line 3556
    return-void

    #@11
    .line 3560
    :catch_0
    move-exception v0

    #@12
    .line 3561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public startLockTaskMode(I)V
    .locals 2
    .param p1, "taskId"    # I

    #@0
    .prologue
    .line 3589
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->startLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3587
    return-void

    #@8
    .line 3590
    :catch_0
    move-exception v0

    #@9
    .line 3591
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
.end method

.method public stopLockTaskMode()V
    .locals 2

    #@0
    .prologue
    .line 3600
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 3598
    return-void

    #@8
    .line 3601
    :catch_0
    move-exception v0

    #@9
    .line 3602
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@c
    move-result-object v1

    #@d
    throw v1
.end method

.method public switchUser(I)Z
    .locals 2
    .param p1, "userid"    # I

    #@0
    .prologue
    .line 3422
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
    .line 3423
    :catch_0
    move-exception v0

    #@a
    .line 3424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@d
    move-result-object v1

    #@e
    throw v1
.end method
